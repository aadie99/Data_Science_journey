## Git 
Free and Open source version control system

## GitHub
Used to host repository online

## Version Control System
The management of changes made to documents, computer programs, large websites, and other collection of information.

## Important Terms
1. Directory -> A normal Folder on your local machine (it may have involve git in it or may not)
2. Terminal or Command Line -> Interface for Text Commands
3. CLI -> Command Line Interface
CLI is a text-based interface that allows users to interact with the operating system by typing commands instead of using a graphical interface.
4. cd -> Change Directory
5. Code Editor -> Word Processor for Writing Code
6. Repository -> Folder where your project is kept (git is involved, Directory + Git Tracking)
7. GitHub -> Website to host your repos online
8. Commit → A saved snapshot of changes
9. Branch → A separate version of the project

## Structure of a Command
1. git 'command'  [options] [arguments]

## Commands
1. clone - Bring repository which is hosted somewhere like GitHub into folder on your local machine
2. add - Track your files and changes in Git
3. commit - Save your files in Git
4. push - Upload Git commits to a remote Repo like GitHub
5. pull - Download changes from remote repo to your local machine (opposite of push)
6. ls - lists all files, folders inside your repository (it is a Terminal Command, not Git command)
7. ls -hidden - shows the hidden files inside your repository
8. pwd - shows the current directory path
9. dir - same as ls (Powershell)
10. cd .. - To go one level up from your current directory
11. status - 
12. init -
13. branch - 


## Important Arguments (Arguments are inputs given to a command - names, identifiers, locations)
1. Remove-Item -Recurse -Force .git = To delete the .git folder from a directory
2. git add . = Add all files in the current directory
3. git commit -m "Initial Commit" = creates a snapshot of staged changes and attaches a descriptive message to document what was modified.
4. git push -u origin main = 
5. git remote add origin URL =  remote - command, add - subcommand, origin, URL - arguments
6. git branch -M main = 
7. git push origin main = 
8. git clone URL = To clone the GitHub repo into your local repo
9. git merge main = 


## Options
1. -m =
2. -u =
3. -a =
4. -M = 

### Nested Repository Situation
When a repository is present in another repository, and you try to run git in the parent repo, but the git was initiated in child repo, then it shows you error, so whenever you run any git commands, be sure that you are present in the right directory, you have given the correct path.

