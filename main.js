$(document).ready(function () {
  $("button").click(function () {
    try {
      const result = aSb.parse($("#input").val())
      $("#output").html(result);
    } catch (e) {
      $("#output").html(String(e));
    }
  });
});
