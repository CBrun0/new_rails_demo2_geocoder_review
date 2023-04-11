import { Controller } from "@hotwired/stimulus"
import Typed from "typed.js"

export default class extends Controller {
  connect() {
    new Typed(this.element, {
      strings: ["Le Site n°1 de location", "D'appartement pour les particulier, en France!"],
      typeSpeed: 50,
      loop: true
    })
  }
}
// Connects to data-controller="typed"
// export default class extends Controller {
//   connect() {
//     // console.log("Hello, Stimulus!", this.element)
//     new Typed('#typed', {
//       strings: ["Le Site n°1 de location!", "D'appartement entre particulier", "Dans le Monde!"],
//       typeSpeed: 100,
//       backSpeed: 100,
//       loop: true
//     });
//   }
// }
