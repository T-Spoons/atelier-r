# Ces exercices vous permettront de mettre en pratique quelques bonne pratiques. 
# En utilisant ces pratiques, votre code sera plus lisible et il sera
# plus facile de trouver la source de vos problèmes quand vous en avez.

# PARTIE 1. Briser les problèmes en petits morceaux

# Exercice 1.
# Voici une ligne de code qui instancie une dataframe, extraie une colonne
# et calcule l'écart type. Comment pourriez vous faire en sorte que cette ligne
# soit brisée en plus petits morceaux?

beatles <- c("Jessica", "Ringo", "Paul", "George")
taille <- c(185, 192, 178, 187)
beatlesData <- data.frame(beatles, taille)
ecartType <- sd(beatlesData$taille)

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
poussinData <- ChickWeight

# On va chercher les données pour le poussin 2
poussin2 <- subset(i, Chick == 2)

# On va chercher les données pour le poussin 3
poussin3 <- subset(i, Chick == 3)

# On met les deux dataframes ensemble
poussins2Et3 <- rbind(r, r2)



