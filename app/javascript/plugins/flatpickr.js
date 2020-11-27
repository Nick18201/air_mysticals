import flatpickr from "flatpickr";
import rangePlugin from "flatpickr/dist/plugins/rangePlugin";
import { French } from "flatpickr/dist/l10n/fr.js"

// const initflatpickr = () => {
//   flatpickr(".datepicker", {
//     altInput: true,
//     altFormat: "j/n/Y", //Date format when altInput is true
//     allowInput: true,
//     // "locale": French,
//   });
// };

const initflatpickr = () => {
  flatpickr("#booking_beginning_date", {
    altInput: true,
    altFormat: "j/n/Y", //Date format when altInput is true
    allowInput: true,
    plugins: [new rangePlugin({ input: "#booking_ending_date"})]
  });
};



export {initflatpickr}
