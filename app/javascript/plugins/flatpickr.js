import flatpickr from "flatpickr";
import rangePlugin from "flatpickr/dist/plugins/rangePlugin";
import { French } from "flatpickr/dist/l10n/fr.js"

const initflatpickr = () => {
  flatpickr(".datepicker", {
    altInput: true,
    altFormat: "j/n/Y", //Date format when altInput is true
    allowInput: true,
    // "locale": French,
  });
};

export {initflatpickr}
