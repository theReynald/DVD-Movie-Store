import { Movie } from './movie.model';
import { HttpClient, HttpResponse, HttpParams, HttpHeaders } from '@angular/common/http';
import { Inject, Injectable } from '@angular/core';
import { Filter, Pagination } from './configClasses.repository';
import { Studio } from './studio.model';
import { Order } from './order.model';
import { Observable } from 'rxjs/Observable';
import { Subject } from 'rxjs/Subject';

const API_ENDPOINT = 'http://localhost:8080/api';
const studiosUrl = API_ENDPOINT + '/studios';
const moviesUrl = API_ENDPOINT + '/movies';
const ordersUrl = API_ENDPOINT + '/orders';
const sessionsUrl = API_ENDPOINT + '/session';

@Injectable()
export class Repository {
  private filterObject = new Filter();
  private paginationObject = new Pagination();
  pageChange: Subject<number> = new Subject();
  movieListFetched: Subject<boolean> = new Subject();

  movie: Movie;
  movies: Movie[];
  studios: Studio[] = [];
  categories: string[] = [];
  orders: Order[] = [];

  constructor(private http: HttpClient) {
    this.filter.related = true;
    this.getMovies();
  }

  subscribeToPageChange(): Subject<number> {
    return this.pageChange;
  }

  subscribeToMovieFetch(): Subject<boolean> {
    return this.movieListFetched;
  }

  changePage(page: number) {
    this.pagination.currentPage = page;
    this.pageChange.next(page);
  }

  getMovie(id: number) {
    this.http.get(moviesUrl + '/' + id)
      .subscribe(response => this.movie = response);
  }

  getMovies(related = false) {
    let url = moviesUrl + '?related=' + this.filter.related;
    if (this.filter.category) {
      url += '&category=' + this.filter.category;
    }
    if (this.filter.search) {
      url += '&search=' + this.filter.search;
    }

    url += '&metadata=true';
    this.http.get<any>(url).subscribe(response => {
      this.movies = response;
      this.pagination.currentPage = 1;
      if (!this.filter.category) {
        this.populateCategories();
      }
      this.movieListFetched.next(true);
    });

  }

  private populateCategories() {
    const groups = this.groupBy(this.movies, 'category');
    this.categories = Object.keys(groups);
  }

  private groupBy = function (xs, key) {
    return xs.reduce(function (rv, x) {
      (rv[x[key]] = rv[x[key]] || []).push(x);
      return rv;
    }, {});
  };

  storeSessionData(dataType: string, data: any) {
    return this.http.post(sessionsUrl + '/' + dataType, data, { withCredentials: true })
      .subscribe(response => { });
  }

  getSessionData(dataType: string): any {
    return this.http.get(sessionsUrl + '/' + dataType, { withCredentials: true });
  }

  /** admin screen functions */

  getStudios() {
    this.http.get<Studio[]>(studiosUrl)
      .subscribe(response => this.studios = response);
  }

  createMovie(mov: Movie) {
    this.http.post<Movie>(moviesUrl, mov, { withCredentials: true }).subscribe(response => {
        mov.movieId = response.movieId;
        this.movies.push(mov);
      });
  }

  createMovieAndStudio(mov: Movie, stu: Studio) {
    const data = {
      name: stu.name, city: stu.city, state: stu.state
    };
    this.http.post<number>(studiosUrl, data)
      .subscribe(response => {
        stu.studioId = response;
        mov.studio = stu;
        this.studios.push(stu);
        if (mov != null) {
          this.createMovie(mov);
        }
      });
  }

  replaceMovie(mov: Movie) {
    const data = {
      image: mov.image, name: mov.name, category: mov.category,
      description: mov.description, price: mov.price,
      studio: mov.studio ? mov.studio.studioId : 0
    };
    this.http.put(moviesUrl + '/' + mov.movieId, data ).subscribe(response => this.getMovies());
  }

  replaceStudio(stu: Studio) {
    const data = {
      name: stu.name, city: stu.city, state: stu.state
    };
    this.http.put(studiosUrl + '/' + stu.studioId, data).subscribe(response => this.getMovies());
  }

  updateMovie(id: number, changes: Map<string, any>) {
    const patch = [];
    changes.forEach((value, key) =>
      patch.push({ op: 'replace', path: key, value: value }));
    this.http.patch(moviesUrl + '/' + id, patch)
      .subscribe(response => this.getMovies());
  }

  deleteMovie(id: number) {
    this.http.delete(moviesUrl + '/' + id)
      .subscribe(response => this.getMovies());
  }

  deleteStudio(id: number) {
    this.http.delete(studiosUrl + '/' + id)
      .subscribe(response => {
        this.getMovies();
        this.getStudios();
      });
  }

  getOrders() {
    this.http.get<Order[]>(ordersUrl).subscribe(data => this.orders = data);
  }

  createOrder(order: Order) {
    this.http.post<any>(ordersUrl, {
      name: order.name,
      address: order.address,
      payment: order.payment,
      movies: order.movies
    }, { withCredentials: true }).subscribe(data => {
      order.orderConfirmation = data;
      order.cart.clear();
      order.clear();
    });
  }

  shipOrder(order: Order) {
    this.http.post(ordersUrl + '/' + order.orderId, null, { withCredentials: true }).subscribe(r => this.getOrders());
  }

  get filter(): Filter {
    return this.filterObject;
  }
  get pagination(): Pagination {
    return this.paginationObject;
  }
}
