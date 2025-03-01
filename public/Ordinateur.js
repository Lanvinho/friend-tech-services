 // Fonction pour ouvrir/fermer la barre latérale principale
 function toggleSidebar() {
    const sidebar = document.getElementById("sidebar");
    const overlay = document.getElementById("overlay");
    sidebar.classList.toggle("open");
    overlay.classList.toggle("active");
}

// Fonction pour ouvrir/fermer la barre latérale de connexion
function toggleLoginSidebar() {
    const loginSidebar = document.getElementById("login-sidebar");
    loginSidebar.classList.toggle("open");
}

// Fonction pour afficher/masquer la barre de recherche
function toggleSearchBar() {
    const searchInput = document.getElementById('search-input');
    searchInput.classList.toggle('active');
    if (searchInput.classList.contains('active')) {
        searchInput.focus();
    }
}

// Fonction pour afficher le formulaire de création de compte
function showCreateAccountForm() {
    document.getElementById('login-form').style.display = 'none';
    document.getElementById('create-account-form').style.display = 'block';
}

// Fonction pour afficher le formulaire de connexion
function showLoginForm() {
    document.getElementById('create-account-form').style.display = 'none';
    document.getElementById('login-form').style.display = 'block';
}

// Fonction pour récupérer les produits depuis l'API PHP
async function fetchProducts() {
    try {
        const response = await fetch('api.php?action=produit');
        const products = await response.json();
        console.log('Produits récupérés :', products);

        // Stocker les produits dans une variable globale
        window.products = products;

        // Afficher tous les produits au chargement de la page
        afficherProduits(products);
    } catch (error) {
        console.error('Erreur lors de la récupération des produits :', error);
    }
}

// Fonction pour afficher les produits
function afficherProduits(products) {
    const container = document.getElementById('product-container');
    container.innerHTML = "";

    products.forEach(product => {
        const productHTML = `
            <div class="product">
                <div class="add-to-cart" title="Ajouter au panier">
                    <i class="fas fa-cart-plus"></i>
                </div>
                <img src="Asset/${product.MODELE}.jpg" alt="${product.MODELE}">
                <h2>${product.MODELE}</h2>
                <p>${product.DESCRIPTION}</p>
                <div class="price">Prix : ${product.PRIX} FCFA</div>
                <a href="#" class="whatsapp-button" data-name="${product.MODELE}" data-description="${product.DESCRIPTION}" data-price="${product.PRIX} FCFA">Contactez-nous sur WhatsApp</a>
            </div>
        `;
        container.insertAdjacentHTML('beforeend', productHTML);
    });

    // Ajouter les événements WhatsApp
    document.querySelectorAll('.whatsapp-button').forEach(button => {
        const name = button.getAttribute('data-name');
        const description = button.getAttribute('data-description');
        const price = button.getAttribute('data-price');
        const message = `Je suis intéressé par le produit suivant :\n\n*Nom :* ${name}\n*Description :* ${description}\n*Prix :* ${price}`;
        const encodedMessage = encodeURIComponent(message);
        const whatsappLink = `https://wa.me/+237678378219?text=${encodedMessage}`;
        button.setAttribute('href', whatsappLink);
    });
}

// Fonction pour filtrer les produits
function filterProducts(searchTerm) {
    const filteredProducts = window.products.filter(product =>
        product.MODELE.toLowerCase().includes(searchTerm.toLowerCase()) ||
        product.DESCRIPTION.toLowerCase().includes(searchTerm.toLowerCase())
    );

    // Afficher les produits filtrés
    afficherProduits(filteredProducts);
}

// Ajouter un écouteur d'événements sur la barre de recherche
document.getElementById('search-input').addEventListener('input', function (e) {
    const searchTerm = e.target.value.trim();
    filterProducts(searchTerm);
});

// Gérer la soumission du formulaire de connexion
document.getElementById('loginForm').addEventListener('submit', function (e) {
    e.preventDefault();

    // Récupérer les valeurs du formulaire
    const gmail = document.getElementById('gmail').value;
    const motdepasse = document.getElementById('motdepasse').value;

    console.log('Gmail:', gmail);
    console.log('Mot de passe:', motdepasse);

    // Fermer la barre latérale après la soumission
    toggleLoginSidebar();
});

// Appeler la fonction pour charger les produits au chargement de la page
fetchProducts();