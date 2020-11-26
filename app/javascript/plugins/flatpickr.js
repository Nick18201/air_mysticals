import flatpickr from "flatpickr";
import rangePlugin from "flatpickr/dist/plugins/rangePlugin";
import { French } from "flatpickr/dist/l10n/fr.js"

flatpickr(".datepicker", {
  altInput: true,
  altFormat: "j F Y", //Date format when altInput is true
  allowInput: true,
  "locale": French,
});
