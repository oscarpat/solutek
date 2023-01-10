//ejecutando funciones
document.getElementById("icon-search").addEventListener("click", mostrar_buscador);


//declaracion de variables
bars_search = document.getElementById("ctn-bars-search");
inputSearch = document.getElementById("inputSearch");
box_search = document.getElementById("box-search");

//funcion para mostrar el buscador

function mostrar_buscador() {
    bars_search.style.top = "55px";
}