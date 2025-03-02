-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1
-- Généré le : dim. 02 mars 2025 à 02:47
-- Version du serveur : 10.4.32-MariaDB
-- Version de PHP : 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données : `fps`
--

-- --------------------------------------------------------

--
-- Structure de la table `accessoires`
--

CREATE TABLE `accessoires` (
  `ID` int(30) NOT NULL,
  `CATEGORIE` varchar(30) NOT NULL,
  `MODELE` varchar(30) NOT NULL,
  `DESCRIPTION` varchar(30) NOT NULL,
  `PRIX` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Déchargement des données de la table `accessoires`
--

INSERT INTO `accessoires` (`ID`, `CATEGORIE`, `MODELE`, `DESCRIPTION`, `PRIX`) VALUES
(1, 'Clavier', 'Clavier', '', '2.500'),
(2, 'Souris', 'Souris', '', '2.500'),
(3, 'Souris', 'Souris sans fil', '', '5.000'),
(4, 'Cle USB', 'Cle USB', '', '5.000'),
(5, 'Chargeur', 'chargeur', '', '3.000'),
(6, 'Chargeur', 'chargeur iphone', '', '5.000'),
(7, 'Clavier', 'Clavier sans fil', '', '5.000'),
(8, 'ECRAN', 'ECRAN 19 POUCE', '', '15.000'),
(9, 'ECRAN', 'ECRAN 20 POUCE', '', '20.000'),
(10, 'ECRAN', 'ECRAN 24 POUCE', '', '25.000'),
(11, 'ECRAN', 'ECRAN 30 POUCE', '', '30.000'),
(12, 'Disque Dur', 'HDD 500Go', '', '10.000');

-- --------------------------------------------------------

--
-- Structure de la table `description`
--

CREATE TABLE `description` (
  `ID` int(30) NOT NULL,
  `CATEGORIE` varchar(30) NOT NULL,
  `MODELE` varchar(30) NOT NULL,
  `DESCRIPTION` mediumtext NOT NULL,
  `PRIX` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Déchargement des données de la table `description`
--

INSERT INTO `description` (`ID`, `CATEGORIE`, `MODELE`, `DESCRIPTION`, `PRIX`) VALUES
(1, 'LAPTOP', 'LENOVO E450', 'Design et Construction\nChâssis : Le ThinkPad E450 suit la tradition des ThinkPad avec un design sobre et professionnel. Il est construit avec des matériaux résistants, notamment un boîtier en plastique renforcé et un clavier robuste.\nPoids et dimensions : Léger et portable, il pèse environ 1,8 kg et mesure environ 339 mm (largeur) x 239 mm (profondeur) x 22 mm (épaisseur), ce qui le rend facile à transporter.\nCouleur : Noir classique ThinkPad avec le logo rouge emblématique sur le capot.\nÉcran\nTaille : 14 pouces, une taille standard pour les ordinateurs1366 x 768 pixels (HD),\nType d\'écran : Écran LCD anti-reflet, idéal pour une utilisation en intérieur ou sous un éclairage modéré.\nPerformances\nProcesseur : Intel Core i3  de 4e génération). Ce processeur est adapté aux tâches quotidiennes comme la navigation web, le traitement de texte, et les applications légères.\nRAM : 4 Go de mémoire DDR3. Cette quantité de RAM est suffisante pour les tâches de base, mais peut être limitée pour le multitâche intensif ou les applications gourmandes en ressources.\nStockage : Disque SSD de 128 Go. Le SSD offre des temps de démarrage rapides, une réactivité accrue et une meilleure durabilité par rapport à un disque dur traditionnel. Cependant, 128 Go peut être limité pour les utilisateurs ayant besoin de stocker de nombreux fichiers volumineux.\nGraphiques\nCarte graphique : Intel HD Graphics (intégrée au processeur). Cette carte graphique est adaptée aux tâches bureautiques, à la lecture de vidéos et aux applications légères, mais pas pour les jeux ou les logiciels de conception 3D exigeants.\nConnectivité\nPorts :\n\nUSB 2.0 et USB 3.0\n\nHDMI pour la connexion à un écran externe\n\nVGA (pour les projecteurs ou écrans plus anciens)\n\nPort Ethernet (RJ-45) pour une connexion filaire\n\nPrise casque/micro\n\nLecteur de cartes 4-en-1 (SD, SDHC, SDXC, MMC)\n\nSans fil : Wi-Fi 802.11n et Bluetooth 4.0 pour une connectivité sans fil.\nBatterie\nAutonomie : La batterie standard offre généralement entre 5 et 7 heures d\'autonomie, selon l\'utilisation. Elle est amovible, ce qui permet de la remplacer facilement si nécessaire.\nClavier et pavé tactile\nClavier : Clavier ThinkPad traditionnel avec touches bien espacées et touche de frappe confortable. Il est rétroéclairé sur certains modèles.\nPavé tactile : Le TouchPad est précis et dispose de boutons physiques pour le clic. Il est également équipé du TrackPoint (le petit joystick rouge au centre du clavier), une caractéristique emblématique des ThinkPad.\nSécurité\nLecteur d\'empreintes digitales : Certains modèles peuvent inclure un lecteur d\'empreintes digitales pour une authentification sécurisée.\n\nTPM (Trusted Platform Module) : Intégré pour la sécurité des données.\nSystème d\'exploitation\nLe Lenovo E450 est généralement livré avec Windows 10 ou Windows 8.1, mais il peut être mis à niveau vers des versions plus récentes de Windows.\n\nUtilisation recommandée\nCe modèle est idéal pour :\n\nLes professionnels ayant besoin d\'un ordinateur portable fiable pour le travail quotidien.\n\nLes étudiants pour les tâches scolaires et la navigation web.\n\nLes utilisateurs occasionnels qui recherchent un ordinateur portable durable et facile à utiliser.\n\nPoints forts\nDurabilité et fiabilité de la gamme ThinkPad.\n\nSSD pour des performances rapides.\n\nPortabilité et design professionnel.\n\nLe stockage de 128 Go peut être insuffisant pour certains utilisateurs.\n\nLa carte graphique intégrée n\'est pas adaptée aux jeux ou aux applications graphiques lourdes.\n', '60.000'),
(2, 'LAPTOP', 'LENOVO T470', 'Design et Construction\r\nChâssis : Le ThinkPad T470 est construit avec des matériaux de haute qualité, notamment un boîtier en fibre de carbone et magnésium, offrant une excellente résistance aux chocs et une durabilité accrue.\r\n\r\nPoids et dimensions : Léger et portable, il pèse environ 1,6 kg et mesure environ 336 mm (largeur) x 232 mm (profondeur) x 20 mm (épaisseur), ce qui le rend facile à transporter.\r\n\r\nCouleur : Noir classique ThinkPad avec le logo rouge emblématique sur le capot.\r\n\r\nÉcran\r\nTaille : 14 pouces, une taille standard pour les ordinateurs portables professionnels.\r\n\r\nRésolution : Généralement 1366 x 768 pixels (HD), bien que certaines versions puissent offrir une résolution Full HD (1920 x 1080) ou même WQHD (2560 x 1440) pour une meilleure clarté.\r\n\r\nType d\'écran : Écran LCD anti-reflet, idéal pour une utilisation en intérieur ou sous un éclairage modéré. Certains modèles peuvent inclure un écran tactile.\r\n\r\nPerformances\r\nProcesseur : Intel Core i5 de 6e génération (par exemple, Intel Core i5-6300U). Ce processeur offre de bonnes performances pour les tâches quotidiennes, le multitâche et les applications professionnelles.\r\n\r\nRAM : 8 Go de mémoire DDR4. Cette quantité de RAM est suffisante pour la plupart des tâches professionnelles, y compris le multitâche et l\'exécution de plusieurs applications simultanément.\r\n\r\nStockage : Disque dur HDD de 500 Go. Le HDD offre une grande capacité de stockage, mais il est moins rapide qu\'un SSD. Il est possible de remplacer le HDD par un SSD pour améliorer les performances.\r\n\r\nGraphiques\r\nCarte graphique : Intel HD Graphics 520 (intégrée au processeur). Cette carte graphique est adaptée aux tâches bureautiques, à la lecture de vidéos et aux applications légères, mais pas pour les jeux ou les logiciels de conception 3D exigeants.\r\n\r\nConnectivité\r\nPorts :\r\n\r\nUSB 3.0 et USB-C (avec support de Thunderbolt 3 sur certains modèles)\r\n\r\nHDMI pour la connexion à un écran externe\r\n\r\nVGA (pour les projecteurs ou écrans plus anciens)\r\n\r\nPort Ethernet (RJ-45) pour une connexion filaire\r\n\r\nPrise casque/micro\r\n\r\nLecteur de cartes 4-en-1 (SD, SDHC, SDXC, MMC)\r\n\r\nSans fil : Wi-Fi 802.11ac et Bluetooth 4.1 pour une connectivité sans fil rapide et fiable.\r\n\r\nBatterie\r\nAutonomie : Le T470 est équipé d\'une batterie double (batterie interne + batterie amovible), offrant une autonomie pouvant aller jusqu\'à 15 heures, selon l\'utilisation. La batterie amovible peut être remplacée facilement si nécessaire.\r\n\r\nCharge rapide : Supporte la charge rapide, permettant de recharger la batterie à 80 % en environ une heure.\r\n\r\nClavier et pavé tactile\r\nClavier : Clavier ThinkPad traditionnel avec touches bien espacées et touche de frappe confortable. Il est rétroéclairé pour une utilisation dans des conditions de faible luminosité.\r\n\r\nPavé tactile : Le TouchPad est précis et dispose de boutons physiques pour le clic. Il est également équipé du TrackPoint (le petit joystick rouge au centre du clavier), une caractéristique emblématique des ThinkPad.\r\n\r\nSécurité\r\nLecteur d\'empreintes digitales : Intégré pour une authentification sécurisée et rapide.\r\n\r\nTPM (Trusted Platform Module) : Intégré pour la sécurité des données.\r\n\r\nVerrou Kensington : Pour sécuriser physiquement l\'ordinateur portable.\r\n\r\nSystème d\'exploitation\r\nLe Lenovo T470 est généralement livré avec Windows 10 Pro, mais il peut être mis à niveau vers des versions plus récentes de Windows.\r\n\r\nUtilisation recommandée\r\nCe modèle est idéal pour :\r\n\r\nLes professionnels ayant besoin d\'un ordinateur portable fiable et performant pour le travail quotidien.\r\n\r\nLes utilisateurs ayant besoin d\'une grande autonomie de batterie pour une utilisation mobile.\r\n\r\nLes entreprises recherchant un ordinateur portable sécurisé et durable.\r\n\r\nPoints forts\r\nDurabilité et fiabilité de la gamme ThinkPad.\r\n\r\nBonnes performances avec le processeur Core i5 et 8 Go de RAM.\r\n\r\nGrande autonomie de batterie avec la configuration à double batterie.\r\n\r\nConception professionnelle et portable.\r\n\r\nLa carte graphique intégrée n\'est pas adaptée aux jeux ou aux applications graphiques lourdes.\r\n\r\nOptions de mise à niveau\r\nRAM : La RAM peut être étendue jusqu\'à 32 Go (selon le modèle).\r\n\r\nStockage : Le disque dur HDD peut être remplacé par un SSD pour améliorer les performances.\r\n\r\nBatterie : Possibilité d\'utiliser des batteries de plus grande capacité pour une autonomie encore plus longue.', '100.000'),
(3, 'LAPTOP', 'HP ELITEBOOK 840 G4', 'Design et Construction\r\nChâssis : L\'EliteBook 840 G4 est construit avec des matériaux robustes, notamment un boîtier en magnésium et aluminium, offrant une excellente résistance aux chocs et une durabilité accrue.\r\n\r\nPoids et dimensions : Léger et portable, il pèse environ 1,48 kg et mesure environ 335 mm (largeur) x 237 mm (profondeur) x 18 mm (épaisseur), ce qui le rend facile à transporter.\r\n\r\nCouleur : Gris argenté avec un design professionnel et épuré.\r\n\r\nÉcran\r\nTaille : 14 pouces, une taille standard pour les ordinateurs portables professionnels.\r\n\r\nRésolution : Généralement 1366 x 768 pixels (HD), bien que certaines versions puissent offrir une résolution Full HD (1920 x 1080) pour une meilleure clarté.\r\n\r\nType d\'écran : Écran LCD anti-reflet, idéal pour une utilisation en intérieur ou sous un éclairage modéré. Certains modèles peuvent inclure un écran tactile.\r\n\r\nPerformances\r\nProcesseur : Intel Core i5 de 8e génération (par exemple, Intel Core i5-8250U). Ce processeur quadricœur offre de bonnes performances pour les tâches quotidiennes, le multitâche et les applications professionnelles.\r\n\r\nRAM : 8 Go de mémoire DDR4. Cette quantité de RAM est suffisante pour la plupart des tâches professionnelles, y compris le multitâche et l\'exécution de plusieurs applications simultanément.\r\n\r\nStockage : Disque dur HDD de 500 Go. Le HDD offre une grande capacité de stockage, mais il est moins rapide qu\'un SSD. Il est possible de remplacer le HDD par un SSD pour améliorer les performances.\r\n\r\nGraphiques\r\nCarte graphique : Intel UHD Graphics 620 (intégrée au processeur). Cette carte graphique est adaptée aux tâches bureautiques, à la lecture de vidéos et aux applications légères, mais pas pour les jeux ou les logiciels de conception 3D exigeants.\r\n\r\nConnectivité\r\nPorts :\r\n\r\nUSB 3.0 et USB-C (avec support de Thunderbolt 3 sur certains modèles)\r\n\r\nHDMI pour la connexion à un écran externe\r\n\r\nVGA (pour les projecteurs ou écrans plus anciens)\r\n\r\nPort Ethernet (RJ-45) pour une connexion filaire\r\n\r\nPrise casque/micro\r\n\r\nLecteur de cartes SD\r\n\r\nSans fil : Wi-Fi 802.11ac et Bluetooth 4.2 pour une connectivité sans fil rapide et fiable.\r\n\r\nBatterie\r\nAutonomie : L\'EliteBook 840 G4 est équipé d\'une batterie lithium-ion offrant une autonomie pouvant aller jusqu\'à 10 heures, selon l\'utilisation.\r\n\r\nCharge rapide : Supporte la charge rapide, permettant de recharger la batterie à 50 % en environ 30 minutes.\r\n\r\nClavier et pavé tactile\r\nClavier : Clavier rétroéclairé avec touches bien espacées et touche de frappe confortable. Le clavier est conçu pour offrir une expérience de frappe agréable et précise.\r\n\r\nPavé tactile : Le TouchPad est précis et dispose de gestes multitouch pour une navigation fluide. Il est également équipé de boutons physiques pour le clic.\r\n\r\nSécurité\r\nLecteur d\'empreintes digitales : Intégré pour une authentification sécurisée et rapide.\r\n\r\nTPM (Trusted Platform Module) : Intégré pour la sécurité des données.\r\n\r\nVerrou Kensington : Pour sécuriser physiquement l\'ordinateur portable.\r\n\r\nHP Sure Start : Technologie de sécurité pour protéger le BIOS contre les attaques.\r\n\r\nSystème d\'exploitation\r\nLe HP EliteBook 840 G4 est généralement livré avec Windows 10 Pro, mais il peut être mis à niveau vers des versions plus récentes de Windows.\r\n\r\nUtilisation recommandée\r\nCe modèle est idéal pour :\r\n\r\nLes professionnels ayant besoin d\'un ordinateur portable fiable et performant pour le travail quotidien.\r\n\r\nLes utilisateurs ayant besoin d\'une grande autonomie de batterie pour une utilisation mobile.\r\n\r\nLes entreprises recherchant un ordinateur portable sécurisé et durable.\r\n\r\nPoints forts\r\nDurabilité et fiabilité de la gamme EliteBook.\r\n\r\nBonnes performances avec le processeur Core i5 et 8 Go de RAM.\r\n\r\nConception professionnelle et portable.\r\n\r\nSécurité renforcée avec lecteur d\'empreintes digitales et TPM.\r\n\r\nPoints faibles\r\nLe disque dur HDD de 500 Go est moins rapide qu\'un SSD, ce qui peut ralentir les temps de démarrage et de chargement des applications.\r\n\r\nLa carte graphique intégrée n\'est pas adaptée aux jeux ou aux applications graphiques lourdes.\r\n\r\nOptions de mise à niveau\r\nRAM : La RAM peut être étendue jusqu\'à 32 Go (selon le modèle).\r\n\r\nStockage : Le disque dur HDD peut être remplacé par un SSD pour améliorer les performances.\r\n\r\nBatterie : Possibilité d\'utiliser des batteries de plus grande capacité pour une autonomie encore plus longue.', '200.000'),
(4, 'LAPTOP', 'DELL LATITUDE E5270', 'Design et Construction\nChâssis : Léger (1,6 kg) et robuste, conçu pour une utilisation professionnelle.\n\nDimensions : 33,1 cm (largeur) x 23,2 cm (profondeur) x 2,2 cm (épaisseur).\n\nFinition : Sobre, en aluminium ou plastique renforcé pour une durabilité accrue.\n\nÉcran\nTaille : 12,5 pouces, pratique pour la mobilité.\n\nRésolution : HD (1366 x 768 pixels) ou Full HD (1920 x 1080 pixels) selon la configuration.\n\nTechnologie : Écran anti-reflet pour une meilleure visibilité.\n\nPerformances\nProcesseur : Intel Core i5 de 6ème génération (ex. i5-6300U), 2,4 GHz (jusqu\'à 3,0 GHz en turbo).\n\nRAM : 8 Go DDR4 pour une gestion fluide des applications.\n\nStockage : 500 Go HDD (espace généreux, mais moins rapide qu\'un SSD).\n\nConnectivité\nPorts :\n\n3 ports USB (dont 1 USB 3.0).\n\nHDMI et VGA pour écrans externes.\n\nRJ-45 Ethernet, combo jack audio, lecteur de carte SD.\n\nSans fil : Wi-Fi 802.11ac et Bluetooth intégré.\n\nBatterie\nAutonomie : 6 à 8 heures en utilisation normale.\n\nType : Lithium-ion (amovible ou non selon la configuration).\n\nSécurité\nFonctionnalités : Lecteur d\'empreintes digitales, module TPM pour le chiffrement.\n\nDurabilité : Conforme aux normes MIL-STD-810G (résistance aux chocs, vibrations, températures extrêmes).\n\nSystème d\'exploitation\nOS : Windows 10 Pro (ou version antérieure selon l\'achat), idéal pour les professionnels.\n\nUtilisation\nPublic cible : Professionnels en déplacement, étudiants, petites entreprises.\n\nAvantages :\n\nPortabilité et durabilité.\n\nPerformances adaptées aux tâches quotidiennes.\n\nConnectivité complète pour une utilisation polyvalente.', '100.000'),
(5, 'DESKTOP', 'COMPLET LENOVO', 'Caractéristiques Techniques :\r\n1. Ordinateur de Bureau Lenovo ThinkCentre :\r\n\r\nProcesseur : Intel Core i5 de 4e génération (par exemple, i5-4570 ou similaire)\r\n\r\n4 cœurs, 4 threads\r\n\r\nFréquence de base : 3,2 GHz (jusqu\'à 3,6 GHz en mode Turbo)\r\n\r\nMémoire RAM : 4 Go DDR3\r\n\r\nSuffisant pour les tâches bureautiques, la navigation web et les applications légères.\r\n\r\nStockage : Disque dur HDD de 500 Go\r\n\r\nEspace de stockage adapté pour les fichiers, documents, et applications courantes.\r\n\r\nCarte Graphique : Intel HD Graphics (intégrée au processeur)\r\n\r\nIdéale pour les tâches quotidiennes, la bureautique et les vidéos.\r\n\r\nConnectivité :\r\n\r\nPorts USB 2.0/3.0, HDMI, VGA, Ethernet, sortie audio.\r\n\r\nSystème d\'Exploitation : Généralement fourni avec Windows 10 Pro ou sans OS (à vérifier selon la configuration).\r\n\r\nFormat : Tour compacte ou mini-tour, design sobre et professionnel.\r\n\r\n2. Écran 19 Pouces :\r\n\r\nTaille : 19 pouces (diagonale)\r\n\r\nRésolution : Généralement 1440x900 ou 1600x900 (HD+)\r\n\r\nTechnologie d\'Affichage : LED\r\n\r\nConnectivité : VGA et/ou HDMI pour une connexion facile à l\'ordinateur.\r\n\r\nDesign : Bordure fine, base ajustable pour une ergonomie optimale.\r\n\r\nPoints Forts :\r\nPerformance Équilibrée : Le processeur Intel Core i5 de 4e génération offre une puissance suffisante pour les tâches quotidiennes, la bureautique et les applications légères.\r\n\r\nCompacité : Le format compact du ThinkCentre permet de gagner de l\'espace sur le bureau.\r\n\r\nÉcran Intégré : L\'écran 19 pouces offre une taille confortable pour le travail et la navigation.\r\n\r\nFiabilité Lenovo : Les produits Lenovo sont reconnus pour leur durabilité et leur qualité de construction.\r\n\r\nUtilisations Recommandées :\r\nBureautique : Traitement de texte, tableurs, présentations.\r\n\r\nNavigation Web : Consultation de sites, e-mails, réseaux sociaux.\r\n\r\nMultimédia : Lecture de vidéos, musique, et photos.\r\n\r\nTélétravail : Idéal pour les professionnels en télétravail grâce à sa compacité et ses performances adaptées.', '75.000'),
(6, 'accessoires', 'Clavier', '', '2.500'),
(7, 'accessoires', 'Clavier sans fil', '', '5.000'),
(8, 'accessoires', 'Souris', '', '2.500'),
(9, 'accessoires', 'Souris sans fil', '', '5.000'),
(10, 'ECRAN', 'ECRAN 19 POUCE', '', '15.000'),
(11, 'ECRAN', 'ECRAN 20 POUCE', '', '20.000'),
(12, 'ECRAN', 'ECRAN 24 POUCE', '', '25.000'),
(13, 'ECRAN', 'ECRAN 30 POUCE', '', '30.000'),
(14, 'Disque Dur', 'HDD 500Go', '', '10.000'),
(15, 'Cle USB', 'Cle USB', '', '5.000'),
(16, 'Chargeur', 'Chargeur iphone', '', '5.000'),
(17, 'Chargeur', 'Chargeur', '', '3.000');

-- --------------------------------------------------------

--
-- Structure de la table `membres`
--

CREATE TABLE `membres` (
  `ID` int(11) NOT NULL,
  `NOM` varchar(50) NOT NULL,
  `PRENOM` varchar(50) NOT NULL,
  `NUMERO` varchar(30) NOT NULL,
  `GMAIL` varchar(100) NOT NULL,
  `MOT_DE_PASSE` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Déchargement des données de la table `membres`
--

INSERT INTO `membres` (`ID`, `NOM`, `PRENOM`, `NUMERO`, `GMAIL`, `MOT_DE_PASSE`) VALUES
(1, 'NGUEMKAM', 'LANVIN', '677603749', 'lanvindeffeu@gmail.com', '$2y$10$toEd9RvS3LDZVW5JtFg3QO9U8Y0zgLhMSOjPy59HbEzPYVjFfZzoG');

-- --------------------------------------------------------

--
-- Structure de la table `produit`
--

CREATE TABLE `produit` (
  `ID` int(11) NOT NULL,
  `CATEGORIE` varchar(30) NOT NULL,
  `MODELE` varchar(255) NOT NULL,
  `DESCRIPTION` text NOT NULL,
  `PRIX` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Déchargement des données de la table `produit`
--

INSERT INTO `produit` (`ID`, `CATEGORIE`, `MODELE`, `DESCRIPTION`, `PRIX`) VALUES
(1, 'LAPTOP', 'LENOVO E450', 'Cet ordinateur portable est équipé d\'un processeur Intel Core i3, 4 Go de RAM avec un SSD 128 Go, et une carte graphique INTEL HD. Parfait pour la bureautique', '60.000'),
(2, 'LAPTOP', 'LENOVO T470', 'Cet ordinateur de bureau est idéal pour les professionnels. Il dispose d\'un processeur Intel core I5, 8 Go de RAM, et un HDD de 512 Go pour des performances rapides', '100.000'),
(3, 'LAPTOP', 'DELL LATITUDE E5270', 'Cet ordinateur portable ultra-léger est parfait pour les déplacements. Avec un écran Full HD, un processeur Intel Core i5, et seulement 1,2 kg, il est facile à transporter', '100.000'),
(4, 'LAPTOP', 'HP ELITEBOOK 840 G4', 'Cet ordinateur portable est équipé d\'un processeur Intel Core i3, 4 Go de RAM avec un SSD 128 Go, et une carte graphique INTEL HD. Parfait pour la bureautique.', '145.000'),
(5, 'DESKTOP', 'DESKTOP', 'Cet ordinateur portable est équipé d\'un processeur Intel Core i3, 4 Go de RAM avec un SSD 128 Go, et une carte graphique INTEL HD. Parfait pour la bureautique', '45.000'),
(6, 'DESKTOP', 'COMPLET LENOVO', 'Cet ordinateur de bureau est idéal pour les professionnels. Il dispose d\'un processeur Intel core I5, 8 Go de RAM, et un HDD de 500 Go pour des performances rapides', '75.000'),
(7, 'LAPTOP', 'LENOVO YOGA 11E', 'Processeur :\r\n\r\nIntel Celeron ou Intel Pentium (selon modèle)\r\n\r\nMémoire RAM :\r\n\r\n4 Go DDR3L\r\n\r\nStockage :\r\n\r\nSSD de 128 Go (rapide et silencieux)\r\n\r\nSystème d\'exploitation :\r\n\r\nWindows 10 Pro ou Windows 11 Pro (selon version)', '60.000');

-- --------------------------------------------------------

--
-- Structure de la table `promo`
--

CREATE TABLE `promo` (
  `ID` int(30) NOT NULL,
  `MODELE` varchar(30) NOT NULL,
  `DESCRIPTION` varchar(255) NOT NULL,
  `PRIX` varchar(30) NOT NULL,
  `PRIXPROMO` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Déchargement des données de la table `promo`
--

INSERT INTO `promo` (`ID`, `MODELE`, `DESCRIPTION`, `PRIX`, `PRIXPROMO`) VALUES
(1, 'LENOVO YOGA 11E', 'Processeur :\n\nIntel Celeron ou Intel Pentium (selon modèle)\n\nMémoire RAM :\n\n4 Go DDR3L\n\nStockage :\n\nSSD de 128 Go (rapide et silencieux)\n\nSystème d\'exploitation :\n\nWindows 10 Pro ou Windows 11 Pro (selon version)', '60.000', '50.000'),
(2, 'LENOVO E450', 'Processeur :\r\n\r\nIntel Core i3 (génération 5e ou 6e, selon modèle)\r\n\r\nFréquence de base : environ 2,0 GHz à 2,3 GHz\r\n\r\nTechnologie Hyper-Threading pour une meilleure gestion des tâches multitâches\r\n\r\nMémoire RAM :\r\n\r\n4 Go DDR3L (souvent extensible jusqu\'à ', '60.000', '50.000');

--
-- Index pour les tables déchargées
--

--
-- Index pour la table `accessoires`
--
ALTER TABLE `accessoires`
  ADD PRIMARY KEY (`ID`);

--
-- Index pour la table `description`
--
ALTER TABLE `description`
  ADD PRIMARY KEY (`ID`);

--
-- Index pour la table `membres`
--
ALTER TABLE `membres`
  ADD PRIMARY KEY (`ID`),
  ADD UNIQUE KEY `GMAIL` (`GMAIL`);

--
-- Index pour la table `produit`
--
ALTER TABLE `produit`
  ADD PRIMARY KEY (`ID`);

--
-- Index pour la table `promo`
--
ALTER TABLE `promo`
  ADD PRIMARY KEY (`ID`);

--
-- AUTO_INCREMENT pour les tables déchargées
--

--
-- AUTO_INCREMENT pour la table `accessoires`
--
ALTER TABLE `accessoires`
  MODIFY `ID` int(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT pour la table `description`
--
ALTER TABLE `description`
  MODIFY `ID` int(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT pour la table `membres`
--
ALTER TABLE `membres`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT pour la table `produit`
--
ALTER TABLE `produit`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT pour la table `promo`
--
ALTER TABLE `promo`
  MODIFY `ID` int(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
