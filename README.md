# game-C3P

## Equipe CONTRAST
- Axel SENECHAL
- Gabriella Divine ISHIMWE
- Nouha BOUKILI

  
Nous avons choisi de travailler sur le jeu du Maze Generator.

Dans ce fichier, nous vous présenterons les différentes étapes de notre projet, ce qu'on a réalisé , ce qui a été plus complexe pour nous à réaliser ainsi que ce qu'on avait prévu au préable mais qu'on a pas pu réaliser.


# Instructions d'installation

Via iceberg, connectez vous à ce dépôt idéalement via méthode ssh.

Le package à récupérer dans votre image se nomme: "MazeGenerator".

Le nom du dépôt est: "gamee-c3p".

# Instructions d'usage

Le programme n'était pas encore fonctionnel, voici un code en background pour afficheeer une maze encore non traité (un mur cassé volontairement affiche le résultat attendu d'un mur brisé)

`
|gg g game generator|
g := Grid new.
g width: 5 height: 5.
(g at: 2 at: 2) north: (EmptyWall new).


gg := GridGraphic new.
gg grid: g.

(g at: 2 at: 2) north: (EmptyWall new).



game := Game new.

game grid: g.
game gridgraph: gg.

"
generator := KruskalMazeGenerator new
OR
generator := BackMazeGenerator new

game maze: generator
"

game play.
`




# Design
Au niveau des priorités, nous avons prioriser le fait d'appliquer la méthode TDD afin de chercher les fonctionnalités de notre code par les tests.
Au niveau des design patterns, on a choisi d'utiliser le design pattern visitor pour l'affichage qui parcourt les cellules et les murs. On choisi également d'appliquer le design pattern strategy pour les algos de génération de labyrinthes, notamment Kruskall et recursive BackTracking, qui sont deux stratégies différentes pour createMaze.

## LES ALGORITHMES

La première étape consistait à choisir au moins un algorithme pour  modéliser le labyrinthe.  Pour aboutir à celà, une étude approfondie de plusieurs algorithmes a était menée par notre groupe afin de choisir celui qui semble être  le plus efficace et le plus flexible.
Nous avons choisi d'écarter certains des algorithmes trouvés pour 2 principales raisons : 
- le temps d'éxécution du programme
- le fait qu'on peut prédire à quoi va ressembler le squelette du labyrinthe.

A la fin, 2 algorithmes ont été choisis par notre groupe : Kruskall et recursive backtracker.

Algorithme 1:
 # 1  Kruskal

 on dipose au tout début d'une grille qui sera modélisé par un tableau à 2 dimensions, elle contient des cellules, chaque cellule est délimitée par des murs, ces murs peuvent être communs à une cellule et sa voisine .
Le principe avec lequel fonctionne cet algorithme est le suivant:

1. Nous allons commencer par attribuer à chaque cellule un chiffre(ou une lettre).
2. on sélectionne aléatoirement un mur, et on perce un passage entre 2 cellules qui partagent ce mur, si elles n'appartiennent  pas au même ensemble ensuite on regroupe les deux categorie.
3. L'algorithme arrive à la fin quand il ne reste plus de murs à détruire donc quand on arrive à regrouper toutes les cellules dans le même ensemble.

![initKruskal](https://github.com/AxelSenechal/game-C3P/assets/100805269/dd97fdc5-4289-4591-9b3c-c57eb80bf886)



Voici le résultat de quelques passages dans l'algorithme:

![image5](https://github.com/AxelSenechal/game-C3P/assets/100805269/d5cb4256-e7ad-493f-9236-0c05876a51a0)

![image6](https://github.com/AxelSenechal/game-C3P/assets/100805269/6b2fc09b-5440-4710-9514-50a41b4504e0)


A partir de là, nous pouvons regrouper l'ensemble A, E, C, et D en un seul ensemble A et agrandir l'ensemble.


![image7](https://github.com/AxelSenechal/game-C3P/assets/100805269/05815459-3c4b-48a0-8e85-1aa4a6a9090f)


Le résultat final représente un labyrinthe parfait.


 # 2  Recursive backtracker
 
on dipose au tout début d'une grille qui sera modélisé par un tableau à 2 dimensions, elle contient des cellules, chaque cellule est délimitée par des murs, ces murs peuvent être communs à une cellule et sa voisine .
Le principe avec lequel fonctionne cet algorithme consiste à :

Choisir un point de départ dans la grille.

![image1](https://github.com/AxelSenechal/game-C3P/assets/100805269/27d08547-760e-40d7-8aa5-2818374c5929)

Choisir aléatoirment un mur en partant du point de départ  en percant un passage à travers la cellule adjacente, mais uniquement   si cette dernière n'a pas encore été visitée


![image2](https://github.com/AxelSenechal/game-C3P/assets/100805269/ebe41630-cb3f-42b7-943a-9955e888b15f)

Dans le cas où toutes les cellules adjacentes ont déjà été visitées, se positionner au niveau de  la dernière cellule dont les murs n'ont pas été détruits et répéter cette étape autant de fois que nécessaire

![image3](https://github.com/AxelSenechal/game-C3P/assets/100805269/a4c0ec26-94ef-41b1-b66b-b19a42bb45d8)


l'algorithme arrive à la fin quand on revient sur la cellule du point de départ

![image4](https://github.com/AxelSenechal/game-C3P/assets/100805269/26e69b84-d52d-4020-b4b6-42eeff6a4a72)




 
