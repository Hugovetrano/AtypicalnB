import { Controller } from "@hotwired/stimulus"
import Typed from 'typed.js';

// Connects to data-controller="typed"
export default class extends Controller {
  static values = {
    sentences: Array
  }

  connect() {
    const options = {
      strings: ['Castle', 'Even', 'Evil', 'Step'],
      typeSpeed: 30,
      backSpeed: 45,
      cursorChar: ' <span class="pri-color"> <</span>',
      backDelay: 1300,
      loop: false
    };
    new Typed(this.element, options)
  }
}
