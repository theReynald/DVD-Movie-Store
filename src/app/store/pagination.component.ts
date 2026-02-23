import { Component, OnInit } from '@angular/core';
import { Repository } from '../models/repository';
import { Movie } from '../models/movie.model';

@Component({
  selector: 'store-pagination',
  templateUrl: 'pagination.component.html'
})
export class PaginationComponent implements OnInit {
  constructor(private repo: Repository) { }
  pages: number[] = [];

  ngOnInit() {
    this.repo.subscribeToMovieFetch().subscribe(resp => {
      this.pages = Array(Math.ceil(this.repo.movies.length / this.repo.pagination.moviesPerPage))
        .fill(0).map((x, i) => i + 1);
    });
  }

  get current(): number {
    return this.repo.pagination.currentPage;
  }

  changePage(newPage: number) {
    this.repo.changePage(newPage);
  }
}
