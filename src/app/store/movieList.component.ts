import { Component, OnInit } from '@angular/core';
import { Repository } from '../models/repository';
import { Movie } from '../models/movie.model';
import { Cart } from '../models/cart.model';
import { THROW_IF_NOT_FOUND } from '@angular/core/src/di/injector';

@Component({
  selector: 'store-movie-list',
  templateUrl: 'movieList.component.html'
})
export class MovieListComponent implements OnInit {
  constructor(private repo: Repository, private cart: Cart) { }

  movies: Movie[] = [];

  ngOnInit() {
    console.log('init called');
    this.load(1);
    this.repo.subscribeToMovieFetch().subscribe(resp => {
      this.load(1);
    });
    this.repo.subscribeToPageChange().subscribe(page => this.load(page));
  }

  load(page: number) {
    if (this.repo.movies != null && this.repo.movies.length > 0) {
      const pageIndex = (this.repo.pagination.currentPage - 1)
        * this.repo.pagination.moviesPerPage;
      this.movies = this.repo.movies.slice(pageIndex,
        pageIndex + this.repo.pagination.moviesPerPage);
    }
  }
  addToCart(movie: Movie) {
    this.cart.addMovie(movie);
  }
}
