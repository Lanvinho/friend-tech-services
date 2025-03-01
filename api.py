from flask import Flask, jsonify
from flask_cors import CORS
import mysql.connector

app = Flask(__name__)
CORS(app)

# Configuration de la base de données
db_config = {
    'host': 'localhost',
    'user': 'root',  # Remplacez par votre utilisateur MySQL
    'password': '',  # Remplacez par votre mot de passe MySQL
    'database': 'fps'
}

# Route pour récupérer les produits (table produit)
@app.route('/api/produit', methods=['GET'])
def get_produit():
    try:
        # Connexion à la base de données
        conn = mysql.connector.connect(**db_config)
        cursor = conn.cursor(dictionary=True)

        # Exécution de la requête SQL
        cursor.execute("SELECT MODELE, DESCRIPTION, PRIX FROM produit")
        produit = cursor.fetchall()

        # Fermeture de la connexion
        cursor.close()
        conn.close()

        # Retourner les produits au format JSON
        return jsonify(produit)
    except mysql.connector.Error as err:
        return jsonify({"error": str(err)}), 500

# Route pour récupérer les accessoires (table accessoires)
@app.route('/api/accessoires', methods=['GET'])
def get_accessoires():
    try:
        # Connexion à la base de données
        conn = mysql.connector.connect(**db_config)
        cursor = conn.cursor(dictionary=True)

        # Exécution de la requête SQL
        cursor.execute("SELECT MODELE, DESCRIPTION, PRIX FROM accessoires")
        accessoires = cursor.fetchall()

        # Fermeture de la connexion
        cursor.close()
        conn.close()

        # Retourner les accessoires au format JSON
        return jsonify(accessoires)
    except mysql.connector.Error as err:
        return jsonify({"error": str(err)}), 500

# Démarrer l'API
if __name__ == '__main__':
    app.run(debug=True)