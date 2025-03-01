<?php
// Connexion à la base de données
$servername = "localhost";
$username = "root"; // Remplacez par votre nom d'utilisateur MySQL
$password = ""; // Remplacez par votre mot de passe MySQL
$dbname = "fps"; // Remplacez par le nom de votre base de données

// Créer une connexion
$conn = new mysqli($servername, $username, $password, $dbname);

// Vérifier la connexion
if ($conn->connect_error) {
    die("Connection failed: " . $conn->connect_error);
}

// Récupérer le modèle depuis l'URL
$modele = isset($_GET['modele']) ? $_GET['modele'] : '';

// Préparer et exécuter la requête SQL
$sql = "SELECT ID, MODELE, DESCRIPTION, PRIX FROM DESCRIPTION WHERE MODELE = ?";
$stmt = $conn->prepare($sql);
$stmt->bind_param("s", $modele);
$stmt->execute();
$result = $stmt->get_result();

// Vérifier si un résultat a été trouvé
if ($result->num_rows > 0) {
    // Récupérer les données de l'article
    $row = $result->fetch_assoc();
    $response = [
        'MODELE' => $row['MODELE'],
        'DESCRIPTION' => $row['DESCRIPTION'],
        'PRIX' => $row['PRIX']
    ];
} else {
    // Si aucun résultat n'est trouvé, renvoyer une erreur
    $response = ['error' => 'Aucun article trouvé pour ce modèle.'];
}

// Fermer la connexion
$stmt->close();
$conn->close();

// Renvoyer la réponse au format JSON
header('Content-Type: application/json');
echo json_encode($response);
?>