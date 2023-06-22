import { Controller } from "@hotwired/stimulus"

// Connects to data-controller="property-show-images"
export default class extends Controller {
  static targets = ['mainPhoto']
  static values = {
    path: String
  }
  updateMainPhoto(event) {
    let link = this.mainPhotoTarget.src.split('/');
    link.pop();
    link.push(event.currentTarget.dataset.path);
    this.mainPhotoTarget.src = link.join('/');
  }
}
