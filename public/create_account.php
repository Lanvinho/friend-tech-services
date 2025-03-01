<?php
// Démarrer la session
session_start();

// Connexion à la base de données
$host = 'localhost'; // Adresse du serveur MySQL
$dbname = 'fps'; // Nom de la base de données
$username = 'root'; // Nom d'utilisateur MySQL
$password = ''; // Mot de passe MySQL

try {
    $conn = new PDO("mysql:host=$host;dbname=$dbname", $username, $password);
    $conn->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);
} catch (PDOException $e) {
    die(json_encode(['success' => false, 'message' => "Erreur de connexion à la base de données : " . $e->getMessage()]));
}

// Vérifier si le formulaire a été soumis
if ($_SERVER['REQUEST_METHOD'] === 'POST') {
    // Récupérer les données du formulaire
    $nom = $_POST['nom'];
    $prenom = $_POST['prenom'];
    $numero = $_POST['numero'];
    $gmail = $_POST['gmail'];
    $motdepasse = $_POST['motdepasse'];

    // Valider les données
    if (empty($nom) || empty($prenom) || empty($numero) || empty($gmail) || empty($motdepasse)) {
        die(json_encode(['success' => false, 'message' => "Tous les champs sont obligatoires."]));
    }

    // Hasher le mot de passe
    $motdepasse_hash = password_hash($motdepasse, PASSWORD_DEFAULT);

    // Préparer la requête SQL pour insérer les données
    $sql = "INSERT INTO membres (NOM, PRENOM, NUMERO, GMAIL, MOT_DE_PASSE) VALUES (:nom, :prenom, :numero, :gmail, :motdepasse)";
    $stmt = $conn->prepare($sql);

    // Exécuter la requête avec les données du formulaire
    try {
        $stmt->execute([
            ':nom' => $nom,
            ':prenom' => $prenom,
            ':numero' => $numero,
            ':gmail' => $gmail,
            ':motdepasse' => $motdepasse_hash
        ]);

        // Retourner une réponse JSON en cas de succès
        echo json_encode(['success' => true, 'nom' => $nom, 'prenom' => $prenom]);
        exit();
    } catch (PDOException $e) {
        die(json_encode(['success' => false, 'message' => "Erreur lors de l'insertion des données : " . $e->getMessage()]));
    }
}
?>