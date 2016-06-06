# ML
Machine Learning algorithms

 I.RandomForest  
 
  Les forêts d'arbres décisionnels  font partie des techniques d'apprentissage automatique. Cet algorithme combine les concepts de sous-espaces aléatoires et de « bagging ». L'algorithme des forêts d'arbres décisionnels effectue un apprentissage sur de multiples arbres de décision entraînés sur des sous-ensembles de données légèrement différents.

La base du calcul repose sur l'apprentissage par arbre de décision
Une présentation rapide du fonctionnement de l'algorithme peut s'exprimer comme suit :
Créer {B} nouveaux ensembles d'apprentissage par un double processus d'échantillonnage :

1.**sur les observations, en utilisant un tirage avec remise d'un nombre {N} d'observations identique à celui des données d'origine
(bootstrap)(taille d'echantillon pour chaque arbre autour de 63% de la totalité des donnees)

2.**Et sur les {p} prédicteurs, en n'en retenant qu'un échantillon {m}(les m sont des varaibles de segmentations) .par defaut {m} est la racine carée de la somme des prédicteurs dans le cas de la calssification (variable d'interet est "factor"), par contre m=(somme de tous les prédicteurs/3) dans le cas de la regression (variable d'interet est "numeric")

3.**Sur chaque échantillon, on entraîne un arbre de décision selon une des techniques connues, en limitant sa croissance par validation croisée.(overfitting)
On stocke les {B} prédictions de la variable d'intérêt pour chaque observation d'origine.
chaque arbre donne une classifcation.la foret choisie la classification qui a le max des votes pour tous les arbres dans la foret.
La prédiction de la forêt aléatoire est alors un simple vote majoritaire (Ensemble learning).

Randomforest=somme(arbre décisionnel).

***note :imputation is required for Random Forest.

Each classifier(tree), individually, is a “weak learner,” while all the classifiers taken together are a “strong learner”.

More information here: https://stat.ethz.ch/education/semesters/ss2012/ams/slides/v10.2.pdf
