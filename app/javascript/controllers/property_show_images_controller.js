import { Controller } from "@hotwired/stimulus"

// Connects to data-controller="property-show-images"
export default class extends Controller {
  static targets = ['mainPhoto']
  static values = {
    path: String
  }

  connect() {
    this.element.querySelector('.property-show-miniatures-container').querySelector('img').classList.add('selected-image');
  }

  updateMainPhoto(event) {
    let link = this.mainPhotoTarget.src.split('/');
    link.pop();
    link.push(event.currentTarget.dataset.path);
    this.mainPhotoTarget.src = link.join('/');

    this.element.querySelector('.selected-image').classList.remove('selected-image');
    event.currentTarget.classList.add('selected-image');
  }
}
