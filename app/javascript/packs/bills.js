import $ from "jquery";
import "select2";

// Initialize Select2 on document load
$(document).on("turbolinks:load", function () {
  $(".employee-select").select2({
    placeholder: "Select an Employee",
    allowClear: true,
  });
});
