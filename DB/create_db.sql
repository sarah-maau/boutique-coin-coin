BEGIN;
-- Duck

DROP TABLE IF EXISTS "review";
DROP TABLE IF EXISTS "duck";

CREATE TABLE IF NOT EXISTS "duck" (
  "id" SERIAL PRIMARY KEY,
  "name" TEXT,
  "description" TEXT,
  "size" REAL,
  "price" REAL NOT NULL,
  "category" TEXT
);

INSERT INTO "duck"("id","name", "description", "size", "price", "category") VALUES
(1, 'Maurice', 'Maurice c''est ce pote qui ne change pas, qui aime bien la routine et qui ne prend jamais de risques. Si tu vois la vie comme Maurice, achète ce canard.', 8, 8.95, 'Animaux'),
(2, 'Harry', 'Poudlard n''accepte pas les canards mais Harry s''en fiche, il a appris tous les sorts grâce à des tutos. Expelliarmus ! ', 8, 12.00, 'Célébrités'),
(3, 'Jacques', 'Jacques est le seul pirate qui ne risque pas de mourir noyé. Par contre, il met une plombe à traverser la mer Noire.', 8, 8.95, 'Spéciaux'),
(4, 'Raymond', 'Raymond est le seul canard capable de faire du vélo. Il a tenté plusieurs fois le Tour de France mais il finit toujours second.', 8, 11.95, 'Divers'),
(5, 'Napoleon', 'Sacré Napoléon ! Il ne lâche jamais son uniforme, même devant Netflix. Un brin susceptible, évite de lui parler de sa taille, il risque de mal le prendre.', 2, 19.00, 'Célébrités'),
(6, 'Didier', 'Didier il n''aime rien, il n''aime personne et il n''hésite pas à le dire. Si tu as un message – haineux – à passer à quelqu’un que tu détestes, offre-lui Didier. Il sera ravi de cracher son venin.', 8, 12.00, 'Spéciaux'),
(7, 'Chuck', 'Chuck Norris peut casser trois pattes à un canard.', 90.00, 8.95, 'Célébrités'),
(8, 'Noelle', 'Noëlle adore les fêtes de fin d''année. Elle avait les boules que ce ne soit pas Noël tous les jours, du coup elle s''est déguisée en sapin. Intelligent non ?', 10, 11.95, 'Divers'),
(9, 'Ines', 'Inès vit sa meilleure vie, elle a lâché Kévin pour mettre des paillettes dans sa vie. Elle est devenue une licorne et s''est acheté un château avec des moulures au plafond.', 8, 8.95, 'Spéciaux'),
(10, 'Elisabeth', 'Elisabeth est le canard le plus robuste qui soit. Personne ne lui arrive à la cheville. Attention, elle est un peu dure de la feuille.', 8, 11.95, 'Célébrités'),
(11, 'Donald','Ok, il n''est pas orange mais il reste fidèle à l''original. Seule différence notable : il ne parle pas et c’est tant mieux. No fake news', 8, 1.99, 'Célébrités'),
(12,'Basile', 'Basile n''oubliera jamais ton anniversaire, il te le souhaitera même tous les jours. Alors, ravi(e) ?', 12, 19.00, 'Divers'),
(13, 'Jeanne', 'She is the queen ! Jeanne passe et tu t’écrases, Jeanne domine et tu t’inclines. Bref, elle ne se prend pas pour de la merde.', 8, 8.95, 'Spéciaux'),
(14, 'Yvan', 'Avant de se prendre pour un paon, Yvan est avant tout un canard en pleine quête d''identité. Si tu le trouves un peu trop méprisant, ne manque pas de lui rappeler qu''un paon c''est avant tout une pintade à plumes bleues', 8, 11.95, 'Animaux'),
(15, 'Jean-Marc', 'Jean-Marc n''aime pas les bananes. Il aime bien se fondre dans la masse, à cause de son côté mainstream il préfère mythonner. Son manque de personnalité causera sa perte.', 8, 8.95, 'Animaux'),
(16, 'Franklin', 'Franklin est une tortue fan de skate qui habite dans un village paumé, et à qui il arrive des conneries tous les deux jours. Sa vie a inspiré un dessin animé.', 8, 8.95, 'Animaux'),
(17, 'Pikachu', 'Bon, ok tu ne le trouveras pas dans ton pokédex celui-là. Mais avoue, il ressemble au vrai ? N''attends pas qu’il évolue en Raichu, tu risquerais d''être déçu(e).', 8, 12.00, 'Célébrités'),
(18, 'Bertha', 'Un vrai pillier de bar celle-là. Attention, elle n''aime que la bière et les bretzels. C''est pas du tout cliché, promis.', 8, 8.95, 'Spéciaux'),
(19, 'Auguste', 'Auguste respecte les codes du bobo parisien : il mange des graines, habite dans le Marais et méprise les autres', 8, 19.00, 'Spéciaux'),
(20, 'Scott', 'Scott regrette amèrement de ne pas avoir mis de caleçon sous son kilt. Par pitié, ne le soulève pas, tu risques d’être choqué.', 8, 12.00, 'Spéciaux'),
(21, 'Charles', 'Charles fait partie de la haute et n''hésite pas à le rappeler. Il a l''air un peu hautain comme ça, mais promis il est sympa.', 8, 8.95, 'Spéciaux'),
(22, 'Anakin', 'Il n’est pas ton père mais il prétend l’être, un vrai pot-de-colle ce type.', 8, 19.00, 'Célébrités'),
(23, 'Serge', 'Serge est un gros mytho. Il fait croire à tout le monde qu''il est un dinosaure. Mais qui a déjà vu un T-Rex aussi peu effrayant ?', 12, 11.95, 'Divers'),
(24, 'Thor', 'Ça ne se voit pas comme ça mais Thor est le plus puissant des dieux guerriers. Grâce à ce canard, vous pourrez enfin soulever son marteau.', 8, 8.95, 'Célébrités');

-- Review

CREATE TABLE IF NOT EXISTS "review" (
  "id" SERIAL PRIMARY KEY,
  "author" TEXT NOT NULL,
  "note" REAL NOT NULL,
  "title" TEXT,
  "message" TEXT,
  "duck_id" INT,
  FOREIGN KEY("duck_id") REFERENCES "duck"("id")
);
INSERT INTO "review" ("id", "author", "note", "title", "message", "duck_id") VALUES
(1, 'Michael Scott', 5, 'Je compte l''offrir à l''enfant de ma future copine','Je cherche l''amour sur Tinder. J''ai trouvé un pseudonyme. J''en ai un bien. L''ami des enfants. Comme ça les gens sauront quelles sont mes priorités.', 1),
(2,'Plastic Bertrand', 2, 'Ça pue', 'Il dégage une forte odeur de plastique, j''ai peur de choper le cancer rien qu''en le touchant', 1),
(3,'Jean-Claude Vendamme', 5, 'Il est devenu indispensable', 'Il est aussi nécessaire que l''eau. D''ailleurs, l''eau, c''est quelque chose de concret, mais pas concret. Parce que l''eau... peut me nourrir, mais aussi l''eau... peut me porter. Parce que l''eau... a des lois magiques. L''eau peut tenir des cargos dans la mer, des milliers de tonnes d''acier... C''est quelque chose qui a beaucoup de dimension l''eau.', 1),
(4, 'Hermione Granger', 2, 'Je le déconseille aux moldus','Attention, il jette vraiment des sorts.Seuls les sorciers expérimentés devraient pouvoir l''acheter.', 2),
(5, 'Sirus Black', 5, 'Fidèle à l''original', 'Quand je regarde ce canard, je me rappelle tous les bons moments passés avec Harry.', 2),
(6, 'Jack Sparrow', 1, 'Il est censé me représenter ?', 'Chers amis, Milady, que cette journée demeure comme celle où vous avez failli capturer le capitaine Jack Sparrow', 3),
(7, 'Wendy Darling', 3, 'Très réaliste', 'Il est tellement bien fait qu''il me fait peur…', 3),
(8, 'Alphonse Paulin', 2, 'Ce canard est un danger public', 'Je suis en colère. Il ne respecte rien : son casque n''est pas homologué, son vélo n''a pas de lumières et surtout : où est son gilet ??', 4),
(9, 'Jacques Anquetil', 1, 'Quel boulet', 'Il n''a jamais gagné alors qu''il est dopé ? Mais quel boulet !', 4),
(10, 'François', 4, 'Tous français qui se respecte doit l’avoir', 'Mais c''est moi ! François le Français ! Bleu blanc rouge, je suis François le Français ! François le Français ! C''est moi c''est François !', 5),
(11, 'Stéphane Bern', 2, 'Pas vraiment ressemblant', 'Je suis déçu… Le chapeau-bicorne n’est pas de la bonne couleur et il manque le célèbre grenadier à pied…', 5),
(12, 'Joséphine de Beauharnais', 5, 'Moins bête que le vrai', 'Je suis ravie de cet achat. Il est tout à fait conforme à la photo et je suis sûre qu''il ne me quittera pas lui.', 5),
(13, 'Jean-Michel Obvious', 5, 'Très bien', 'Le rapport qualité prix est plus que bien, le prix est vraiment bas pour ce canard de qualité.', 6),
(14, 'Juste Leblanc', 4, 'Très sympa ', 'Je l''ai acheté à ma femme, j''espère qu''elle comprendra le message.', 6),
(15, 'Cordell Walker', 5, 'Génial', 'Un jour Chuck Norris a eu 0/20 en latin, depuis c''est une langue morte.', 7),
(16, 'James Trivette', 5, 'Au top','Chuck Norris a déjà compté jusqu''à l’infini… deux fois.', 7),
(17, 'Alexandra Cahill', 4, 'Il ne me quitte plus', 'La barre de recherche Google c’est le seul endroit où tu peux taper Chuck Norris.', 7),
(18,'Hubert Bonisseur de La Bath', 4, 'Il manque les boules… de Noël', 'Je voulais en faire un cadeau de Noël, parce que c''est par rapport à mon prénom.', 8),
(19, 'Jean-Michel Boudficelle', 5, 'Pas cher et durable, tout ce que j''aime', 'Je n''avais pas envie de payer tous les ans pour un sapin qui ne dure qu’un mois. J''ai investi dans ce canard, il est vraiment parfait comme arbre de Noël quand on veut faire attention à ses thunes. ', 8),
(20, 'Blanche Gardin', 5, 'Faute d’avoir un chat…', 'On m''a conseillé de prendre un chat récemment, je ne trouve pas ça très bienveillant, on ne te dit pas prend un hamster ça vit deux trois ans d''ici là t''auras rencontré quelqu''un, non on te propose une solution sur 20 ans quand même.', 9),
(21, 'Kim Kardashian', 2, 'Quelle déception', 'Je ne m''attendais à ce qu''il soit fini aux feuilles d’or, serti de diamants… Or ce n’est qu''un vulgaire bout de plastique.', 9),
(22, 'Agnès', 1, 'Ça une licorne ?', 'C’EST PAS UNE LICORNE, C’EST UN CANARD.', 9),
(23, 'Boris Johnson', 4, 'Parfait pour une déco stylée', 'Ce canard trône fièrement sur mon bureau. Quand je le serre, il fait « coin-coin ». J’adore !', 10),
(24, 'Charles de Galles', 2, 'Mère est plus jolie', 'C’est une blague ? Ce canard c''est la version Wish de ma mère', 10),
(25, 'Jean-Claude Duss',1 , 'La couleur n''est pas conforme', 'Il n’est pas orange comme le vrai !!! Je prends les paris que c''est le même daltonien qui a créé le jambon blanc et le cordon bleu.',11),
(26, 'Joe Biden', 5, 'Il dit moins de conneries que le vrai', 'Après les élections, je me suis fait plaisir en achetant ce canard. J''en suis très satisfait.', 11),
(27, 'Dewey', 1, 'Nul','On me l''a offert à mon anniversaire. Je ne m''attendais à rien mais je suis quand même déçu.', 12),
(28, 'Elsa Leroy', 4, 'Superbe','Je prévois de l''offrir à ma nièce, j''espère qu''elle appréciera.', 12),
(29, 'Gaspard Ludig', 1, 'Acheté mais jamais reçu','Elle est où Jeanne ?', 13),
(30, 'Stéphanie de Monaco', 4, 'Belle mais …','J''aime bien sa couronne, même si la mienne est plus jolie.', 13),
(31, 'Émile Gravier', 2, 'Ne vous trompez pas, ce n’est pas un singe', 'On peut tromper mille fois mille personnes, non, on peut tromper une fois mille personnes, mais on ne peut pas tromper mille fois mille personnes. Non, on peut tromper une fois mille personne mais on peut pas tromper mille fois une personne. Non.', 14),
(32, 'François Pignon', 2, 'Déçu', 'Il perd ses plumes et ne fait même pas la roue…', 14),
(33, 'Dwigth Schrute', 1, 'Seuls les idiots achèteraient un truc pareil	', 'Avant de faire quelque chose que je me demande, un idiot ferait-il cela? Et si la réponse est oui je ne le fais pas. Du coup je ne l’ai pas acheté.', 15),
(34, 'Odile Deray', 5, 'Belle surprise', 'Il n''était pas noté que le canard sentait la banane, c’est une jolie surprise.', 15),
(35, 'Dolorès Koulechov', 3, 'Bof, peut mieux faire', 'Je pensais que Franklin avait des chaussures à lacets…', 16),
(36, 'Sacha', 2, 'C’est une blague ?', 'Je n’ai jamais vu quelque chose d’aussi moche… Même pas capable de lancer une attaque. Jamais je ne pourrais aller jusqu’à la ligue Pokémon avec ça.', 17),
(37, 'Ondine', 4, 'Superbe !', 'Je l’adore, il est trop mignon.', 17),
(38, 'Pierre', 3, 'Très bien', 'La couleur est superbe. À quand la version Bulbizzare, Salamèche et Carapuce ?', 17),
(39, 'Pierre Mortez', 3, 'Ce n’est pas le plus beau de ma collection…', 'Ce canard c''est un peu comme ma femme. Figurez-vous que Thérèse n''est pas moche. Elle n''a pas un physique facile... C''est différent.', 18),
(40, 'Ron Swanson', 2, 'Je n’’aime pas les bobos', 'Si tu es végétarien, alors lis bien ce qu''il va suivre : le végétalisme est le triste résultat d''un esprit moralement corrompu. Reconsidère ta vie.', 19),
(41, 'Thibault Dupont', 1, 'Que de clichés…', 'Je suis triste de voir qu''on en soit réduit à ça… Je suis français et pourtant je ne porte pas de marinière, je ne mangue pas de pain à cause de mon intolérance au gluten et je n''aime pas le vin.', 19),
(42, 'Nadine Morano', 1, 'La couleur ne va pas', 'Je ne suis pas raciste mais pourquoi ce canard n''est-il pas blanc ?', 19),
(43, 'Magalie de Pieau Engaly', 5, 'Parfait', 'Un niveau de détail bluffant. A se procurer absolument si vous êtes collectionneurs.', 20),
(44, 'Martin Mysthère', 2, 'Manque de détails', 'Je ne suis pas d''acord avec le précédent commentaire. Le canard est sympa mais certains détails sont mal finis, ça fait cheap. ', 20),
(45, 'Louis Vignac', 3, 'Pas assez cher', 'Si le canard était vraiment un baron, son prix serait plus élevé. Les -10 peuvent se l’offrir, alors à quoi bon ?', 21),
(46, 'Heinrich von Zimmer', 3, 'Mieux que mon père', 'Je hais mon père. C''est un Nazi. Mon père est un salaud. J''ai honte d’’être son fils.', 22),
(47, 'Luke Skywalker', 5, 'Trop bien', 'Il ne lui manque que son sabre laser !', 22),
(48, 'Salvador Dali ', 5, 'Top', 'Les couleurs sont superbes, je suis agréablement surpris par la douceur du plastique.', 23),
(49, 'Lisa Fournier', 3, 'Pas très réaliste', 'Autant faire un vrai dinosaure plutôt qu''un canad déguisé en dino. Bon, après, il ne serait plus considéré comme un canard en plastique...', 23),
(50, 'Camille Cri', 4, 'Wahou', 'Superbe canard, seul bémol : il ne couine pas comme un vrai T-Rex.', 23),
(51, 'Jane Foster', 2, 'Passable', 'Il est mignon mais il ressemble plus à un Vinking qu''à Thor.', 24),
(52, 'Bernard Envieux', 1, 'Canard sous stéroïdes', 'Les détails sont mals exécutés. Non mais qui a déjà vu des abdos pareils ?', 24);

COMMIT;