$(function () {
  $("#sidebarCollapse").on("click", function () {
    $("#sidebar, #content").toggleClass("active");
  });
});
<<<<<<< HEAD

function showTable(tableId) {
  // Hide all table contents
  var tableContents = document.querySelectorAll(".table-content");
  tableContents.forEach(function (content) {
    content.classList.remove("active-content");
  });

  // Show the selected table content
  document.getElementById(tableId + "-content").classList.add("active-content");
}
=======
>>>>>>> 81236bf5fda94732fb03d904dd0b6aa4276f6f4e
