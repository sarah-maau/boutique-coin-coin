-- Duck

DROP TABLE IF EXISTS "review";
DROP TABLE IF EXISTS "duck";

CREATE TABLE IF NOT EXISTS "duck" (
  "id" SERIAL PRIMARY KEY,
  "name" TEXT,
  "description" TEXT,
  "size" REAL, -- REAL correspond à "nombre à virgule"
  "price" REAL NOT NULL,
  "category" TEXT
);

INSERT INTO "duck"("id","name", "description", "size", "price", "category", "image") VALUES
(1, 'Maurice', 'Maurice c''est ce pote qui ne change pas, qui aime bien la routine et qui ne prend jamais de risques. Si tu vois la vie comme Maurice, achète ce canard.', 8, 8.95, 'Animaux'),
(2, 'Harry', 'Poudlard n''accepte pas les canards mais Harry s''en fiche, il a appris tous les sorts grâce à des tutos. Expelliarmus ! ', 8, 12.00, 'Célébrités'),
(3, 'Jacques', 'Jacques est le seul pirate qui ne risque pas de mourir noyé. Par contre, il met une plombe à traverser la mer Noire.', 8, 8.95, 'Spéciaux'),
(4, 'Raymond', 'Raymond est le seul canard capable de faire du vélo. Il a tenté plusieurs fois le Tour de France mais il finit toujours second.', 8, 11.95, 'Divers'),
(5, 'Napoleon', 'Sacré Napoléon ! Il ne lâche jamais son uniforme, même devant Netflix. Un brin susceptible, évite de lui parler de sa taille, il risque de mal le prendre.', 2, 19.00, 'Célébrités'),
(6, 'Didier', 'Didier il n''aime rien, il n''aime personne et il n''hésite pas à le dire. Si tu as un message – haineux – à passer à quelqu’un que tu détestes, offre-lui Didier. Il sera ravi de cracher son venin.', 8, 12.00, 'Spéciaux'),
(7, 'Chuck', 'Chuck Norris peut casser trois pattes à un canard.', 90, 8.95, 'Célébrités'),
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
(22, 'Anakin', 'Il n’est pas ton père mais il prétend l’être, un vrai pot-de-colle ce type.', 8, 19.00, 'Célébrités');

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


