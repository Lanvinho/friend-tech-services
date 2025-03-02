<?php
header("Content-Type: application/json; charset=UTF-8");
header("Access-Control-Allow-Origin: *"); // Autoriser les requêtes cross-origin

$host = 'localhost';
$db   = 'fps';
$user = 'root'; // Remplacez par votre utilisateur MySQL
$pass = ''; // Remplacez par votre mot de passe MySQL
$charset = 'utf8mb4';

$dsn = "mysql:host=$host;dbname=$db;charset=$charset";
$options = [
    PDO::ATTR_ERRMODE            => PDO::ERRMODE_EXCEPTION,
    PDO::ATTR_DEFAULT_FETCH_MODE => PDO::FETCH_ASSOC,
    PDO::ATTR_EMULATE_PREPARES   => false,
];

try {
    $pdo = new PDO($dsn, $user, $pass, $options);
} catch (\PDOException $e) {
    echo json_encode(["error" => "Erreur de connexion à la base de données"]);
    exit;
}

// Récupérer les produits
if ($_SERVER['REQUEST_METHOD'] === 'GET' && $_GET['action'] === 'produit') {
    $stmt = $pdo->query("SELECT ID, CATEGORIE, MODELE, DESCRIPTION, PRIX FROM produit");
    $produits = $stmt->fetchAll();
    echo json_encode($produits);
    exit;
}

// Récupérer les accessoires
if ($_SERVER['REQUEST_METHOD'] === 'GET' && $_GET['action'] === 'accessoires') {
    $stmt = $pdo->query("SELECT ID, CATEGORIE, MODELE, DESCRIPTION, PRIX FROM accessoires");
    $accessoires = $stmt->fetchAll();
    echo json_encode($accessoires);
    exit;
}

// Récupérer les promotions
if ($_SERVER['REQUEST_METHOD'] === 'GET' && $_GET['action'] === 'promo') {
    $stmt = $pdo->query("SELECT ID, MODELE, DESCRIPTION, PRIX, PRIXPROMO FROM PROMO");
    $promos = $stmt->fetchAll();
    echo json_encode($promos);
    exit;
}

echo json_encode(["error" => "Action non reconnue"]);
?>