import { Controller } from "@hotwired/stimulus"

// Connects to data-controller="map-switch"
export default class extends Controller {
  switch(event) {
    this.element.classList.toggle('opened');
    this.element.classList.toggle('closed');

    event.currentTarget.classList.toggle('fa-arrow-right');
    event.currentTarget.classList.toggle('fa-map-location-dot');
  }
}
