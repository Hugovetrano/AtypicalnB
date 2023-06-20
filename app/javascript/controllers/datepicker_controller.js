import { Controller } from "@hotwired/stimulus"
import flatpickr from "flatpickr";
// Connects to data-controller="datepicker"
export default class extends Controller {
  static values = {
    array: Array,
  }
  connect(disbaledArray) {
    console.log("test", this.arrayValue);
    flatpickr(this.element, {
      // mode: "range",
      altInput: true,
      altFormat: "F j, Y",
      dateFormat: "Y-m-d",
      disable: this.arrayValue,
      minDate: "today",
      mode: "range"
    });
  }
}
