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
            searchInput.focus(); // Focus sur la barre de recherche si elle est visible
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
    async function fetchProduits() {
        try {
            const response = await fetch('api.php?action=produit');
            const produits = await response.json();
            console.log('Produits récupérés :', produits);

            // Stocker les produits dans une variable globale
            window.produits = produits;

            // Afficher tous les produits au chargement de la page
            afficherProduits(produits);
        } catch (error) {
            console.error('Erreur lors de la récupération des produits :', error);
        }
    }

    // Fonction pour récupérer les accessoires depuis l'API PHP
    async function fetchAccessoires() {
        try {
            const response = await fetch('api.php?action=accessoires');
            const accessoires = await response.json();
            console.log('Accessoires récupérés :', accessoires);

            // Stocker les accessoires dans une variable globale
            window.accessoires = accessoires;

            // Afficher tous les accessoires au chargement de la page
            afficherAccessoires(accessoires);
        } catch (error) {
            console.error('Erreur lors de la récupération des accessoires :', error);
        }
    }

    // Fonction pour afficher les produits
    function afficherProduits(produits) {
        const container = document.getElementById('produits-container');
        container.innerHTML = ""; // Vider le conteneur avant d'ajouter de nouveaux éléments

        if (produits.length === 0) {
            container.innerHTML = `<p style="text-align: center; color: #888;">Aucun produit trouvé.</p>`;
            return;
        }

        produits.forEach(produit => {
            const produitHTML = `
                <div class="product">
                    <img src="Asset/${produit.MODELE}.jpg" alt="${produit.MODELE}">
                    <h3>${produit.MODELE}</h3>
                    <p>${produit.DESCRIPTION}</p>
                    <div class="price">Prix : ${produit.PRIX} FCFA</div>
                    <a href="#" class="whatsapp-button" data-name="${produit.MODELE}" data-description="${produit.DESCRIPTION}" data-price="${produit.PRIX} FCFA">Contactez-nous sur WhatsApp</a>
                </div>
            `;
            container.insertAdjacentHTML('beforeend', produitHTML);
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

    // Fonction pour afficher les accessoires
    function afficherAccessoires(accessoires) {
        const container = document.getElementById('accessoires-container');
        container.innerHTML = ""; // Vider le conteneur avant d'ajouter de nouveaux éléments

        if (accessoires.length === 0) {
            container.innerHTML = `<p style="text-align: center; color: #888;">Aucun accessoire trouvé.</p>`;
            return;
        }

        accessoires.forEach(accessoire => {
            const accessoireHTML = `
                <div class="accessoire">
                    <img src="Asset/${accessoire.MODELE}.jpg" alt="${accessoire.MODELE}">
                    <h3>${accessoire.MODELE}</h3>
                    <p>${accessoire.DESCRIPTION}</p>
                    <div class="price">Prix : ${accessoire.PRIX} FCFA</div>
                    <a href="#" class="whatsapp-button" data-name="${accessoire.MODELE}" data-description="${accessoire.DESCRIPTION}" data-price="${accessoire.PRIX} FCFA">Contactez-nous sur WhatsApp</a>
                </div>
            `;
            container.insertAdjacentHTML('beforeend', accessoireHTML);
        });

        // Ajouter les événements WhatsApp
        document.querySelectorAll('.whatsapp-button').forEach(button => {
            const name = button.getAttribute('data-name');
            const description = button.getAttribute('data-description');
            const price = button.getAttribute('data-price');
            const message = `Je suis intéressé par l'accessoire suivant :\n\n*Nom :* ${name}\n*Description :* ${description}\n*Prix :* ${price}`;
            const encodedMessage = encodeURIComponent(message);
            const whatsappLink = `https://wa.me/+237678378219?text=${encodedMessage}`;
            button.setAttribute('href', whatsappLink);
        });
    }

    // Fonction pour filtrer les articles
    function filterArticles() {
        const searchTerm = document.getElementById('search-input').value.toLowerCase();

        // Filtrer les produits
        const produitsFiltres = window.produits.filter(produit =>
            produit.MODELE.toLowerCase().includes(searchTerm) ||
            produit.DESCRIPTION.toLowerCase().includes(searchTerm)
        );

        // Filtrer les accessoires
        const accessoiresFiltres = window.accessoires.filter(accessoire =>
            accessoire.MODELE.toLowerCase().includes(searchTerm) ||
            accessoire.DESCRIPTION.toLowerCase().includes(searchTerm)
        );

        // Afficher les résultats filtrés
        afficherProduits(produitsFiltres);
        afficherAccessoires(accessoiresFiltres);
    }

    // Ajouter un écouteur d'événement sur la barre de recherche
    document.getElementById('search-input').addEventListener('input', filterArticles);

    // Gérer la soumission du formulaire de connexion
    document.getElementById('loginForm').addEventListener('submit', function (e) {
        e.preventDefault(); // Empêcher la soumission du formulaire

        // Récupérer les valeurs du formulaire
        const gmail = document.getElementById('gmail').value;
        const motdepasse = document.getElementById('motdepasse').value;

        // Afficher les valeurs dans la console (pour le débogage)
        console.log('Gmail:', gmail);
        console.log('Mot de passe:', motdepasse);

        // Vous pouvez ajouter ici la logique pour envoyer les données à un serveur
        // Par exemple, utiliser fetch() pour envoyer les données à une API

        // Fermer la barre latérale après la soumission
        toggleLoginSidebar();
    });

    // Gérer la soumission du formulaire de création de compte
    document.getElementById('createAccountForm').addEventListener('submit', function (e) {
        e.preventDefault(); // Empêcher la soumission du formulaire

        // Récupérer les valeurs du formulaire
        const nom = document.getElementById('nom').value;
        const prenom = document.getElementById('prenom').value;
        const numero = document.getElementById('numero').value;
        const gmail = document.getElementById('gmail').value;
        const motdepasse = document.getElementById('motdepasse').value;

        // Afficher les valeurs dans la console (pour le débogage)
        console.log('Nom:', nom);
        console.log('Prénom:', prenom);
        console.log('Numéro:', numero);
        console.log('Gmail:', gmail);
        console.log('Mot de passe:', motdepasse);

        // Vous pouvez ajouter ici la logique pour envoyer les données à un serveur
        // Par exemple, utiliser fetch() pour envoyer les données à une API

        // Fermer la barre latérale après la soumission
        toggleLoginSidebar();
    });

    // Appeler les fonctions pour charger les données au chargement de la page
    fetchProduits();
    fetchAccessoires();