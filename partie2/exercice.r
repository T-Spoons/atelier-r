# Ces exercices vous permettront de mettre en pratique quelques bonne pratiques 
# du code. En utilisant ces pratiques, votre code sera plus lisible et il sera
# plus facile de trouver la source de vos problèmes quand vous en avez.

# PARTIE 1. Briser les problèmes en petits morceaux

# Exercice 1.
# Voici une ligne de code qui instancie une dataframe, extraie une colonne
# et calcule l'écart type. Comment pourriez vous faire en sorte que cette ligne
# soit brisée en plus petits morceaux?


ecart_type <- sd(data.frame(c("John", "Ringo", "Paul", "George"), c(185, 192, 178, 187))$taille)

# Réponse: ...

# Exercice 2.
# Le code ci-dessus retourne un écart type NA (non-existent) pour les tailles
# de chacun des membres des Beatles. Il y a clairement un problème quelque part.
# Tentez de trouver la source du problème en analysant ligne par ligne le code 
# que vous avez subdivisé.


# PARTIE 2. Hygiène du code

# Exercice 1.
# Il y a plusieurs problèmes avec le code ci-dessous. Décelez les fautes
# d'hygiène de code et réparez-les.

# On instancie nos données ChickWeight dans une dataframe i
i<-ChickWeight

