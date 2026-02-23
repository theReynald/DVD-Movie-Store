import { Injectable } from '@angular/core';
import { Movie } from './movie.model';
import { Repository } from './repository';

// ---------------------------------------------------
export class MovieSelection {
  constructor(public cart: Cart,
    public movieId?: number,
    public name?: string,
    public price?: number,
    private quantityValue?: number) { }
  get quantity() {
    return this.quantityValue;
  }
  set quantity(newQuantity: number) {
    this.quantityValue = newQuantity;
    this.cart.update();
  }
}

@Injectable()
export class Cart {
  selections: MovieSelection[] = [];
  itemCount = 0;
  totalPrice = 0;
  // ---------------------------------------------------
  constructor(private repo: Repository) {
    repo.getSessionData('cart').subscribe(cartData => {
      if (cartData != null && cartData.selections.length > 0) {
        cartData.selections.map(item => new MovieSelection(this, item.movieId,
          item.name, item.price, item.quantity))
          .forEach(item => this.selections.push(item));
        this.update(false);
      }
    });
  }

  addMovie(movie: Movie) {
    const selection = this.selections.find(ps => ps.movieId === movie.movieId);
    if (selection) {
      selection.quantity++;
    } else {
      this.selections.push(new MovieSelection(this,
        movie.movieId, movie.name,
        movie.price, 1));
    }
    this.update();
  }
  // ---------------------------------------------------
  updateQuantity(movieId: number, quantity: number) {
    if (quantity > 0) {
      const selection = this.selections.find(ps => ps.movieId === movieId);
      if (selection) {
        selection.quantity = quantity;
      }
    } else {
      const index = this.selections.findIndex(ps => ps.movieId === movieId);
      if (index !== -1) {
        this.selections.splice(index, 1);
      }
      this.update();
    }
  }
  // ---------------------------------------------------
  clear() {
    this.selections = [];
    this.update();
  }
  // ---------------------------------------------------
  update(storeData: boolean = true) {
    this.itemCount = this.selections.map(ps => ps.quantity)
      .reduce((prev, curr) => prev + curr, 0);
    this.totalPrice = this.selections.map(ps => ps.price * ps.quantity)
      .reduce((prev, curr) => prev + curr, 0);

    // Added for session handling
    if (storeData) {
      this.repo.storeSessionData('cart', this.selections.map(s => {
        return {
          movieId: s.movieId,
          name: s.name,
          price: s.price,
          quantity: s.quantity
        };
      }));
    }
  }
}

