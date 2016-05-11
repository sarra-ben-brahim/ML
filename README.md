# ML
Machine Learning algorithms

1.RandomForest
  Les forêts d'arbres décisionnels  font partie des techniques d'apprentissage automatique. Cet algorithme combine les concepts de sous-espaces aléatoires et de « bagging ». L'algorithme des forêts d'arbres décisionnels effectue un apprentissage sur de multiples arbres de décision entraînés sur des sous-ensembles de données légèrement différents.

La base du calcul repose sur l'apprentissage par arbre de décision
Une présentation rapide de la fonctionnement de l'algorithme peut s'exprimer comme suit :
Créer {B} nouveaux ensembles d'apprentissage par un double processus d'échantillonnage :

**sur les observations, en utilisant un tirage avec remise d'un nombre {N} d'observations identique à celui des données d'origine
( bootstrap)

**Et sur les {p} prédicteurs, en n'en retenant qu'un échantillon 
Sur chaque échantillon, on entraîne un arbre de décision selon une des techniques connues, en limitant sa croissance par validation croisée.(overfitting)
On stocke les {B} prédictions de la variable d'intérêt pour chaque observation d'origine.
La prédiction de la forêt aléatoire est alors un simple vote majoritaire (Ensemble learning).

Randomforest=somme(arbre décisionnel)

Each classifier(tree), individually, is a “weak learner,” while all the classifiers taken together are a “strong learner”.

More information here: https://stat.ethz.ch/education/semesters/ss2012/ams/slides/v10.2.pdf
