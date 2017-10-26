$(document).ready(function() {
  $(".search-container").on("submit", ".search-form", function(e) {
    e.preventDefault();

    var $that = $(this),
      url = $that.attr("action"),
      method = $that.attr("method"),
      data = $that.serialize()

    $.ajax({
      url: url,
      method: method,
      data: data
    })
    .done(function(response) {
      $(".input-text").val("")
      $(".search-container").append(response)
    })
  })
});
