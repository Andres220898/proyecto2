document.addEventListener('DOMContentLoaded', function() {
    // Obtén una referencia al botón "Agregar al Carrito"
    var addToCartButtons = document.querySelectorAll('.producto button');

    // Obtén una referencia al ícono del carrito en el nav
    var cartIcon = document.querySelector('.comp-icon');

    // Crea un elemento "span" para el número del contador
    var counterSpan = document.createElement('span');
    counterSpan.className = 'counter hidden'; // Inicialmente oculto

    // Agrega el elemento "span" al ícono del carrito
    cartIcon.appendChild(counterSpan);

    // Inicializa el contador a cero
    var itemCount = 0;

    // Agrega un evento de clic a cada botón "Agregar al Carrito"
    addToCartButtons.forEach(function(button) {
        button.addEventListener('click', function() {
            // Incrementa el contador y actualiza el contenido del contador en el span
            itemCount++;
            counterSpan.textContent = itemCount;

            // Muestra el contador
            counterSpan.classList.remove('hidden');
            counterSpan.classList.add('visible');
        });
    });
});
