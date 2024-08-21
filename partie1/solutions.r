############################# Section à ignorer ################################

data <- ToothGrowth

################################################################################

# Contexte
# Vous voulez savoir l'effet de la vitamine C sur la longueur des dents des 
# cochons d'Inde. Pour ce faire, vous devrez comparer l'effet des vitamines C
# et du jus d'orange sur leurs dents.

# PARTIE 1.
# Séparer les données en deux dataframes selon la colonne "supp". Une dataframe
# pour les vitamines C "VC" et l'autre pour le jus d'orange "OJ".

vitamineC <- subset(data, supp == "VC")
jusOrange <- subset(data, supp == "OJ")


# PARTIE 2.
# Retirer la colonne "supp" des deux dataframes, car elle n'est plus nécessaire.

len <- vitamineC$len
dose <- vitamineC$dose
vitamineC <- data.frame(len, dose)

len <- jusOrange$len
dose <- jusOrange$dose
jusOrange <- data.frame(len, dose)

# PARTIE 3.
# Utiliser la fonction plot pour faire des graphiques pour nos deux dataframes
# X étant la dose et Y étant la longueur

plot(vitamineC$dose, vitamineC$len)
plot(jusOrange$dose, jusOrange$len)

# PARTIE 4.
# Vous aimeriez avoir un seul point par valeur de dose, pour ce faire, vous
# pensez faire la moyenne de toutes les longeurs appartenant à une dose.
# Utilisez la fonction "aggregate" pour regrouper chaque valeur de dose et pour
# y appliquer la fonction "mean".

moyVitamineC <- aggregate(vitamineC, list(vitamineC$dose), mean)
moyJusOrange <- aggregate(jusOrange, list(jusOrange$dose), mean)

# PARTIE 5.
# Utilisez la fonction plot à nouveau et comparez les résultats pour trouver le
# meilleur supplément!

plot(moyVitamineC$dose, moyVitamineC$len)
plot(moyJusOrange$dose, moyJusOrange$len)