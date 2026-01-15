#!/bin/bash

# Ton texte chiffré
CIPHER="cdiiddwpgswtgt"

# L'alphabet de référence
ALPHA="abcdefghijklmnopqrstuvwxyz"

echo "Cible : $CIPHER"
echo "--------------------------------"

# On boucle 25 fois
for i in {1..25}; do
    # MAGIE BASH : Manipulation de chaine
    # ${ALPHA:i} prend la chaine à partir de l'index i (la fin)
    # ${ALPHA:0:i} prend la chaine du début jusqu'à i (le début)
    # On colle les deux pour créer l'alphabet rotaté
    ROTATED_ALPHA="${ALPHA:$i}${ALPHA:0:$i}"

    # On applique le tr
    # On traduit de l'alphabet rotaté VERS l'alphabet normal pour déchiffrer
    RESULT=$(echo "$CIPHER" | tr "$ROTATED_ALPHA" "$ALPHA")

    # On affiche si le résultat semble lisible (optionnel, ici on affiche tout)
    echo "Tentative -$i : $RESULT"
done
