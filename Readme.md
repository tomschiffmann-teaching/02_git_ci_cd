# Git in Verbindung mit CI/CD

## Git

- In Visual Studio Code Fenster am besten immer eine einzelne Projektmappem hineinziehen

### Voraussetzung:

- Auf Github.com Account sollte bereits ein ssh Key hinterlegt sein (Falls nicht klicke [HIER](https://docs.github.com/en/authentication/connecting-to-github-with-ssh/generating-a-new-ssh-key-and-adding-it-to-the-ssh-agent))

- Die globalen Variablen sind auf eurem System hinterlegt

```bash
    $ git config --global user.name "John Doe"
    $ git config --global user.email johndoe@example.com
```

### Lokal ein Git Repository erstellen

1. `git init`: Lokal das Repository zu initialisiern/VCS in der Projektmappe hinterlegen
2. `git add .`: Fügt alle Dateien zu der gestageten area (alle Dateien die an einen Commit angehängt werden sollen)
3. `git commit -m "initial commit"`
4. `.gitignore` anlegen um kontinuirlich Dateien zu verweisen die nicht getracked werden sollen von git

### Verknüpfung auf ein remote repository hinbekomme

1. Remote repository erstellen auf dem Github.com Account
2. Anweisungen auf neuem Repository folgen (...push existung repository)
3. Bei den Befehlen beachten, dass ihr SSH ausgewählt habt, dann sollte die origin url mit `git` anfangen

```bash
git remote add origin git@github.com:tomschiffmann-teaching/02_git_ci_cd.git
git branch -M main
git push -u origin main
```
