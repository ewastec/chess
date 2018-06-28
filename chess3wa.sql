-- phpMyAdmin SQL Dump
-- version 4.7.0
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1
-- Généré le :  ven. 29 juin 2018 à 00:44
-- Version du serveur :  10.1.26-MariaDB
-- Version de PHP :  7.1.8

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données :  `chess3wa`
--

-- --------------------------------------------------------

--
-- Structure de la table `articles`
--

CREATE TABLE `articles` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `title` text NOT NULL,
  `body` text NOT NULL,
  `likes` int(11) NOT NULL,
  `nolikes` int(11) NOT NULL,
  `article_main_photo` text NOT NULL,
  `author` text NOT NULL,
  `creation_date` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `articles`
--

INSERT INTO `articles` (`id`, `user_id`, `title`, `body`, `likes`, `nolikes`, `article_main_photo`, `author`, `creation_date`) VALUES
(2, 2, 'work', ' \r\nAccueil Les infos du club Cours d\'échecs Inscription Plan d\'accès Nous contacter\r\n \r\n \r\nArticle Téléthon\r\n\r\n\r\n \r\nLe Cavalier soutient le Téléthon\r\n\r\n \r\nCela fait maintenant 5 ans que le Cavalier de l\'Espérance, à l\'initiative de son président Charly Launay, soutient le Téléthon.\r\n\r\nVous vous demandez sans doute à quoi peuvent bien servir les fonds récoltés pour le Téléthon ? J\'ai raison, merci.\r\n\r\nNous sommes tous sensibles à ce qui peut arriver à nos proches, nos conjoints, nos enfants. Dur de voir l\'un de nos parents sombrer dans la maladie d\'Alzheimer C\'est terrible de voir une mère ou un père ne pas se souvenir du prénom de sa fille ou son fils.\r\n\r\nVraiment terrible !\r\n\r\nToutes ces myopathies, ces dégénérescences, ces maladies neuromusculaires ou génétiques sont difficiles à guérir. \r\n\r\nIl y en a qui sont « bénignes » comme le daltonisme. Confondre les couleurs c\'est certes gênant, mais en comparaison de la mucoviscidose c\'est beaucoup moins handicapant.\r\n\r\nBeaucoup moins handicapant !\r\n\r\nPour les proches de ces malades profondément atteints, c\'est une attention de presque tous les instants. Il faut être présent, les soins coûtent chers. Ils nécessitent parfois l\'achat de matériel comme un fauteuil roulant par exemple. \r\n\r\nUn enfant de 10 ans en fauteuil roulant, c\'est insupportable.\r\n\r\n\r\nOui insupportable !\r\n\r\n\r\n\r\nLes fonds récoltés pour le Téléthon servent à la recherche pour combattre ces maladies et également à aider les familles financièrement.\r\n\r\nLe téléthon en France est apparu en 1987, nous allons donc fêter les 30 ans de cette manifestation.\r\n\r\nLe temps d\'un week-end les chaines de télévision lancent un marathon d\'une trentaine d\'heures de programmes non-stop  destinés à recueillir un maximum de fonds. Téléthon n\'est autre que la contraction de télévision et marathon. \r\n\r\nOn assiste un peu partout en France à des événements au profit de cette action. Il y a des courses à pied, par exemple chaque tour de stade effectué en courant rapporte une somme reversée au Téléthon. Il y a des lotos, des soirées dansantes. \r\n\r\nBeaucoup d\'épreuves sportives sont mises en place à cette occasion.\r\n\r\n\r\nLe sport c\'est la santé !\r\n\r\n\r\n\r\nEt vous aimez participer à ces épreuves. Les frais d\'inscription sont très faibles, symboliques, dirons-nous. Et avec l\'addition de ces milliers d\'organisations, l\'association qui gère le Téléthon réussit à récolter des millions d\'euros.\r\n\r\nPour une participation financière symbolique, grâce un petit effort physique chacun apporte sa contribution à cet événement.\r\n\r\nCar personne n\'est à l\'abri de ces maladies génétiques, personne n\'aime voir un enfant en fauteuil roulant.\r\n\r\n\r\nPersonne !\r\n\r\n\r\n\r\nJe le disais en introduction, votre club d\'échecs, le Cavalier de l\'Espérance est sensibilisé à cette manifestation. Charly Launay, son président tient particulièrement à ce rendez-vous annuel. Toute l\'équipe est mobilisée pour organiser une compétition pour le téléthon. \r\n\r\nAu Cavalier, nous sommes tristes de voir les personnes atteintes par ces maladies. \r\n\r\nCette année le Cavalier souhaite réunir un maximum de personnes qui pour une participation de 5€ vont s\'affronter cordialement dans un tournoi en 6 rondes. A la clé il y a de très beaux cadeaux pour les gagnants de chaque catégorie.\r\n\r\nMais est-ce le plus important ?\r\n\r\nParmi ces lots, nous avons des bouteilles de champagne, des dîners dans un restaurant, des bons de réduction chez Variantes, des livres et bien d\'autres prix.\r\n\r\nLe but est de participer tous ensemble à une grande fête conviviale, familiale, au bénéfice de grands malades et à la recherche.\r\n\r\nNous avons bien évidemment prévu une buvette pour vous désaltérer entre les rondes ou pour vos proches qui viendront vous voir jouer aux échecs.\r\n\r\nPour la réussite de cette fête nous avons prévu un endroit chaleureux et capable de nous réunir nombreux. Le centre socio-culturel « les Planètes » au 149 rue Marc Sangnier.\r\n\r\nVous pouvez déjà réserver votre place en remplissant le bulletin d’inscription . Sinon bien évidemment directement sur place le jour venu.\r\n\r\nProfitez-en pour venir en famille, pour venir découvrir le jeu d\'échecs. Nous serons ravis de vous renseigner et de partager cet événement avec vous.\r\n\r\nUn moment d\'échange, de compétition, de convivialité pour une noble cause.\r\n\r\nVenez nombreux le samedi 9 décembre !\r\n\r\nJ Ph Krausener\r\n\r\n \r\nsamedi 9 décembre 2017\r\n\r\n\r\nRemerciement à tous les participants et les bénévoles pour cette journée du Téléthon \r\n\r\navec le fil rouge et notre tournoi, nous avons pu récolter 432 € au profit du Téléthon.\r\n\r\n\r\n\r\nla grille américaine : tournoi du TELETHON 2018 (1).pdf\r\n\r\nLes résultats du Tournoi du Téléthon, le club est heureux d’apporter sa participation de 432 € pour le Téléthon, nous avons presque doublé notre recette par rapport à l’an dernier.\r\n\r\nVous trouverez les remerciement de nos sponsors et la grille américaine du tournoi. Merci à tous les participants et aux bénévoles qui ont aidé au bon déroulement de cette manifestation.\r\n\r\n\r\n \r\n \r\nCréé sur un Mac\r\nsuivant >\r\n\r\n< précédent', 0, 0, 'flowers.jpeg', 'John Smith', '2018-06-28 22:23:23'),
(3, 2, 'party', 'Une copine à moi a passé le DAF, elle m’a donné quelques cours. Ça m’a tout de suite énormément plu. J’ai commencé à jouer directement en compétition et environ un an après avoir commencé à jouer aux échecs, j’ai commencé à donner des cours pour très jeunes enfants. Parce que j’avais vraiment beaucoup accroché. Et donc j’ai commencé à enseigner les échecs en 2011. Une chose en appelant une autre, j’ai décidé d’en faire ma profession à partir de cette année et c’est à l’heure actuelle mon activité principale. \r\n\r\n\r\n\r\nLe Cavalier : Donc au bout d’un an après avoir appris les échecs, tu t’es mise à les enseigner.\r\n\r\n\r\n\r\nTyphanie : Oui, je faisais de l’initiation pour les très jeunes enfants, j’avais un tout petit niveau, mais je connaissais les bases. Je faisais de l’initiation pour les très jeunes enfants et ça reste à l’heure actuelle mon expérience professionnelle la plus agréable. J’ai adoré çà et à la fois le fait d’être en milieu scolaire et d’être dans l’éducatif et d’un autre coté ne pas avoir les contraintes d’un programme à respecter ou d’un niveau à faire avoir aux élèves, vraiment être dans le ludique\r\n\r\n\r\n\r\nLe Cavalier : C’est Jean-Claude qui t’a recommandée pour le remplacer. Est-ce que tu peux nous parler de lui ? Jean-Claude qui avait 30 ans d’ancienneté dans le club\r\n\r\n\r\n\r\nTyphanie : Alors en fait il y a quelque chose de très drôle à vous raconter avec Jean-Claude, c’est qu’en fait, j’ai enseigné dans mon club d’échecs à Chelles entre 2011 et 2013. Et quand je suis partie de mon club en 2013, c’est Jean-Claude qui m’a remplacé dans mon club d’échecs de Chelles. Il a pris la suite le samedi après-midi auprès des élèves de mon ancien club. C’est drôle parce que je l’ai revu au club de Créteil quand je faisais mon stage. Je l’ai reconnu, on a discuté et c’était drôle parce qu’au club de Créteil, Jean-Claude et moi on parlait davantage de pâtisserie et de cuisine que d’échecs. J’étais contente de le revoir, et ce qui m’a marqué c’est que c’est quelqu’un qui a une énergie assez incroyable et qui vit visiblement après avoir passé 30 ans à faire des échecs, être présent dans le milieu des échecs et en tant que président de club il avait toujours le même enthousiasme et le même plaisir à enseigner les bases du mouvement du pion à des enfants de 5 ans alors même que c’est un joueur d’un niveau bien plus élevé que je ne le suis. C’était vraiment impressionnant de voir çà, d’autant plus que maintenant qu’il est parti à la retraite quand je lui ai demandé s’il allait arrêter d’enseigner les échecs, il m’a répondu que non. Il partait à la retraite à la campagne, mais qu’il continuait à enseigner les échecs. Il a créé un club. C’est quelqu’un qui ne se lasse visiblement jamais de cela. Et ça fait plaisir de voir des gens dans le métier qui ont toujours le même enthousiasme pour ça. \r\n\r\n\r\n\r\n\r\n« J’espère que ce sera mon cas »  \r\n\r\n\r\n\r\n\r\n\r\net que je ne me lasserai pas non plus ; C’est surtout ce qui ressort de sa personnalité ; un enthousiasme, une énergie assez incroyable.\r\n\r\n\r\n\r\nLe Cavalier : Tu le remplaces ici, au Cavalier de l’Espérance, comment te sens-tu ici chez nous ? Comment s’est passée ton arrivée.\r\n\r\n\r\n\r\nTyphanie : Heureusement j’ai été très bien accueillie, c’était vraiment sympa. Forcément j’étais un petit peu stressée, je prends la suite de Jean-Claude qui était là depuis des années. Il n’est plus à rajouter que c’est un entraîneur chevronné, quelqu’un qui a mené des jeunes aussi bien que des adultes à un niveau très élevé et qui a été président de club pendant très longtemps. Donc c’était compliqué de prendre la suite. Mais d’un autre côté, j’étais très bien accueillie, moi je m’y sens vraiment à l’aise. Et puis il faut dire que le cadre du club est vraiment agréable, être dans un petit parc, être dans des bâtiments qui sont agréables et dans lesquels on se sent à son aise. Après c’est toujours difficile de prendre la suite de quelqu’un qui est resté là, pendant très longtemps. J’espère pouvoir être digne de sa mémoire, si on peut dire cela. Et au moins, poursuivre le travail qu’il a entamé auprès des jeunes et puis former des adultes au jeu d’échecs également. \r\n\r\n\r\n\r\nLe Cavalier : Dans le jeu d’échecs, il y a certainement des choses que tu aimes et que tu n’aimes pas. \r\n\r\n\r\n\r\nTyphanie : C’est une très bonne question. Alors moi ce que j’aime dans le jeu d’échecs, c’est que c’est un jeu qui m’a permis de me concentrer énormément. Ça n’a pas forcément l’air comme ça parce que je pense être quelqu’un de plutôt calme, mais j’ai énormément mal à me concentrer. Ça toujours était très difficile pour moi de me concentrer. Et au niveau des performances scolaires des fois çà peser un petit peu et quand j’ai commencé les échecs j’étais donc étudiante et le fait de devoir me concentrer sur des parties d’échecs qui étaient longues pendant plusieurs heures d’affilée, ça m’a énormément aidé. Et à l’heure actuelle ça reste, je pense, ce que j’aime le plus dans les échecs c’est cette capacité à vous prendre l’esprit et à vous projeter sur une seule et unique tâche, et sur quelque chose qui vous permet de vous abstraire de tout ce qu’il y a à l’extérieur. Quand vous voyez une position aux échecs vous devez vous donner entièrement à la position, parce que sinon vous n’allez pas voir ce qu’il y a voir dessus. Et donc çà c’est vraiment ce que j’aime le plus dans les échecs. \r\n\r\n\r\n\r\nLe Cavalier : Ce que tu n’aimes pas ?\r\n\r\n\r\n\r\nTyphanie : Ce que j’aime le moins, il y a deux choses. La première chose c’est l’aspect compétition, dans le sens ou j’ai beaucoup de mal à gérer le stress de la compétition c’est difficile, pour moi très difficile. J’aime çà parce que ça me permet de me concentrer, mais pour moi c’est difficile. C’est difficile de perdre une partie \r\n\r\n\r\n\r\nLe Cavalier : C’est la gestion du temps avec la pendule ?\r\n\r\n\r\n\r\nTyphanie : Oui, oui, j’ai un gros problème de gestion de temps avec la pendule, j’ai encore fait la démonstration dimanche dernier c’est juste dramatique, quand il me reste une minute à la pendule et qu’on est au 25ème coup alors qu’on a un rajout de temps uniquement au 40ème coup, c’est vraiment dramatique. Voilà, puis \r\n\r\n\r\n\r\n\r\n« le stress des compétitions c’est difficile. »', 0, 0, 'fruits.jpeg', 'Evan Stec', '2018-06-28 22:25:28');

-- --------------------------------------------------------

--
-- Structure de la table `comments`
--

CREATE TABLE `comments` (
  `id` int(11) NOT NULL,
  `article_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `body` text NOT NULL,
  `status` enum('waiting','published','never_publish') NOT NULL,
  `creation_date` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Structure de la table `photogalery`
--

CREATE TABLE `photogalery` (
  `id` int(11) NOT NULL,
  `article_id` int(11) NOT NULL,
  `galery_photo` text NOT NULL,
  `galery_photo_name` text NOT NULL,
  `galery_photo_description` text NOT NULL,
  `creation_date` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Structure de la table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `first_name` text NOT NULL,
  `last_name` text NOT NULL,
  `email` text NOT NULL,
  `tel` varchar(100) NOT NULL,
  `password` varchar(255) NOT NULL,
  `user_photo` text NOT NULL,
  `role` enum('admin','user') NOT NULL,
  `creation_date` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `users`
--

INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `tel`, `password`, `user_photo`, `role`, `creation_date`) VALUES
(1, 'Ewa', 'Stec', 'bobo@mail.com', '+33695776109', '$2y$10$5NwGR4e4Pve7KsjLoxs1ke574JH2a3HUCgIms7kSo2R8V836yY3Om', 'lampions.jpeg', 'admin', '2018-06-28 00:08:23'),
(2, 'John', 'Smith', 'john@mail.com', '+33695776109', '$2y$10$uYagJ6oTMIikNtRev0nj1O2so4a5qWQ2OaRHMNeWkI1FSKVPaVKjG', 'coffee.jpeg', 'admin', '2018-06-28 00:15:08');

-- --------------------------------------------------------

--
-- Structure de la table `videogalery`
--

CREATE TABLE `videogalery` (
  `id` int(11) NOT NULL,
  `article_id` int(11) NOT NULL,
  `galery_video` text NOT NULL,
  `galery_video_name` text NOT NULL,
  `galery_video_description` text NOT NULL,
  `creation_date` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Index pour les tables déchargées
--

--
-- Index pour la table `articles`
--
ALTER TABLE `articles`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_id` (`user_id`);

--
-- Index pour la table `comments`
--
ALTER TABLE `comments`
  ADD PRIMARY KEY (`id`),
  ADD KEY `article_id` (`article_id`),
  ADD KEY `user_id` (`user_id`);

--
-- Index pour la table `photogalery`
--
ALTER TABLE `photogalery`
  ADD PRIMARY KEY (`id`),
  ADD KEY `article_id` (`article_id`);

--
-- Index pour la table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `videogalery`
--
ALTER TABLE `videogalery`
  ADD PRIMARY KEY (`id`),
  ADD KEY `article_id` (`article_id`);

--
-- AUTO_INCREMENT pour les tables déchargées
--

--
-- AUTO_INCREMENT pour la table `articles`
--
ALTER TABLE `articles`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT pour la table `comments`
--
ALTER TABLE `comments`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT pour la table `photogalery`
--
ALTER TABLE `photogalery`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT pour la table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT pour la table `videogalery`
--
ALTER TABLE `videogalery`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- Contraintes pour les tables déchargées
--

--
-- Contraintes pour la table `articles`
--
ALTER TABLE `articles`
  ADD CONSTRAINT `articles_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);

--
-- Contraintes pour la table `comments`
--
ALTER TABLE `comments`
  ADD CONSTRAINT `comments_ibfk_1` FOREIGN KEY (`article_id`) REFERENCES `articles` (`id`),
  ADD CONSTRAINT `comments_ibfk_2` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);

--
-- Contraintes pour la table `photogalery`
--
ALTER TABLE `photogalery`
  ADD CONSTRAINT `photogalery_ibfk_1` FOREIGN KEY (`article_id`) REFERENCES `articles` (`id`);

--
-- Contraintes pour la table `videogalery`
--
ALTER TABLE `videogalery`
  ADD CONSTRAINT `videogalery_ibfk_1` FOREIGN KEY (`article_id`) REFERENCES `articles` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
