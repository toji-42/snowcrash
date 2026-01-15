 #!/bin/bash


# VARIABLES (Change ça une bonne fois pour toutes)

IP="127.0.0.1"   # <--- Mets l'IP de ta VM ici

PORT="4242"        # <--- Mets le port ici (souvent 4242 ou 2222)

USER="level00"


# LA COMMANDE

# Je force '-type f' pour éviter que cat ne plante sur des dossiers

PASS=$(ssh -t $USER@$IP -p $PORT "find / -user flag00 -type f -print 2>/dev/null | grep -vE '/rofs/|/proc/' | xargs cat | tr 'a-z' 'l-za-k'")

echo "[*] PASS: $PASS"

ssh -t $USER@$IP -p $PORT
# after need to su flag00
# getflag
# token after getflag: x24ti5gi3x0ol2eh4esiuxias
