var sidebarOpen = false;
var sidebar = documento.getElementById("sidebar");

function openSidebar() {
if(sidebarOpen) {
    sidebar.classList.add("sidebar-responsive");
    sidebarOpen = true;
}
}
function closeSidebar() {
if(sidebarOpen) {
    sidebar.classList.remove("sidebar-responsive");
    sidebarOpen = false;
}
}