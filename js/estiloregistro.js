const Nombre = document.getElementById("nombre");
const Apellidos = document.getElementById("apellido");
const Correo = document.getElementById("correo");
const Celular = document.getElementById("celular");
const Contrasenia = document.getElementById("contraseña");
const contrasenia2= document.getElementById("rcontraseña");
const terminosycondiciones= document.getElementById("term-condiciones");
const form = document.getElementById("form");
const listInputs = document.querySelectorAll(".form-input");

form.addEventListener("submit",(e) =>{
    e.preventDefault();

    if (Nombre.ariaValueMax.length <1 || Nombre.ariaValueMax.trim() ==""){
        console.error("error")
    }
})
