# fancy_tools

Fancy_tools est un outil qui permet aux utilisateurs de faire leur travail plus efficacement. Il contient les codes les plus souvents utilisés en forme de fonctions et d'alias.

 - .aliases
 - fancy_functions.sh
 - install.sh
 - updateFancyTools

Fichier .aliases contient les alias.

Fancy_functions.sh contient les fonctions.

Le fichier install.sh, une fois l'installation terminée, les utilisateurs pouront s'en servir des alias et des fonctions.

Pour mettre à jour cet outil, il faut lancer le fichier updateFancyTools.

## Les étapes pour l'installation et l'utilisation

 - Copiez et clonez l'url du projet sur votre terminal
 ```sh
        $ git clone https://github.com/uzmah04/fancy_tools.git
```
 - Dans votre terminal, allez dans le dossier du projet (fancy_tools)
  ```sh
        $ cd fancy_tools
```
 - Lancez le fichier d'installation
 ```sh
        $ ./install.sh
```
 - Vous pouvez maintenant vous utiliser vos alias et fonctions.
> Exemple:
Le fonction gco est pour le git commit. Le code est comme suite:

```sh
        $ gco le message du commit
```
> Le code est la même que:

```sh
        $ git commit "le message du commit"
```

## Les étapes pour le mise à jour

 - Dans le dossier de votre projet, entrez dans le dossier bin (fancy_tools/bin)
 ```sh
        $ cd bin
```
 - Lancez le fichier updateFancyTools
 ```sh
        $ ./updateFancyTools
```

