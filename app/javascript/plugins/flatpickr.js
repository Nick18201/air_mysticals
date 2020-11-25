import flatpickr from "flatpickr";
import rangePlugin from "flatpickr/dist/plugins/rangePlugin";

flatpickr("#range_start", {
  altInput: true,
  allowInput: true,
  plugins: [new rangePlugin({ input: "#range_end"})],
  "locale": "ru", // TICKET => il faut setter la variable dans le local d'abord
  // https://flatpickr.js.org/localization/
});
