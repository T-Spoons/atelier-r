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

vitamine_c <- subset(data, supp == "VC")
jus_orange <- subset(data, supp == "OJ")


# PARTIE 2.
# Retirer la colonne "supp" des deux dataframes, car elle n'est plus nécessaire.

# TODO trouver meilleur moyen de drop une colonne
len <- vitamine_c$len
dose <- vitamine_c$dose
vitamine_c <- data.frame(len, dose)
len <- jus_orange$len
dose <- jus_orange$dose
jus_orange <- data.frame(len, dose)

# PARTIE 3.
# Utiliser la fonction plot pour faire des graphiques pour nos deux dataframes
# X étant la dose et Y étant la longueur

plot(vitamine_c$dose, vitamine_c$len)
plot(jus_orange$dose, jus_orange$len)


# PARTIE 4.
# Vous aimeriez avoir un seul point par valeur de dose, pour ce faire, vous
# pensez faire la moyenne de toutes les longeurs appartenant à une dose.
# Utilisez la fonction "aggregate" pour regrouper chaque valeur de dose et pour
# y appliquer la fonction "mean".

moy_vitamine_c <- aggregate(vitamine_c, list(vitamine_c$dose), mean)
moy_jus_orange <- aggregate(jus_orange, list(jus_orange$dose), mean)

# PARTIE 5.
# Utilisez la fonction plot à nouveau et comparez les résultats pour trouver le
# meilleur supplément!

plot(moy_vitamine_c$dose, moy_vitamine_c$len)
plot(moy_jus_orange$dose, moy_jus_orange$len)

# TODO superposer les graphes




