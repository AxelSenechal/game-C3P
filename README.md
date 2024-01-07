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

 
