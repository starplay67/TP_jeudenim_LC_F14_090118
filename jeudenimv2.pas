PROGRAM jeu_de_nim_v2;
USES crt;

//But : Ecrire un algorithme qui permet a deux joueurs de jouer au jeu de nim
//Principe : Demander au joueur combien d'allumette il veut retirer, afficher le nombre d'allumette restante et terminer le jeu lorsqu'aucune allumette est restante.

VAR 
	nbalmt, choix, victoire : integer;

BEGIN
	randomize;

	//Initialisation des variables 
	nbalmt := 21;
	choix := 1;
	victoire := 0;
	writeln('Bienvenue dans le jeu de Nim, pour gagner, il ne faut pas retirer la derniere alumette.');
	REPEAT
		writeln('Tour de Joueur 1 !');
		writeln(' "Enlevez une, deux ou trois allumettes');
		readln (choix);
		IF ((choix = 1) OR (choix =2) OR (choix=3)) THEN
		BEGIN
			nbalmt := nbalmt - choix;
			IF (nbalmt <= 0) THEN
			BEGIN
			writeln('Le joueur 1 a perdu !');
			victoire := 2;
			END
			ELSE
				writeln('Il reste ',nbalmt,' allumettes.');
		END
		ELSE 
			writeln('Entree Invalide');
		IF (nbalmt > 0) THEN 
		BEGIN
			writeln('Tour du CPU !');
			choix := random(3);
			writeln(choix);
			IF ((choix = 1) OR (choix =2) OR (choix=3)) THEN
			BEGIN
				nbalmt := nbalmt - choix;
				IF (nbalmt <= 0) THEN
				BEGIN
					writeln('Le CPU a perdu !');
					victoire := 1;
				END
				ELSE
					writeln('Il reste ',nbalmt,' allumettes.');
			END
			ELSE 
				writeln('Entree Invalide');
		END;
	UNTIL (nbalmt<=0);
	writeln('Victoire du joueur ',victoire,' !');
	readln;
END.