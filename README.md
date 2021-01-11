# Running it 

## Steps to run the workshop

- Explain why we are using elm (section below)
- Help with the installation
- Open elm repl to show the syntax to declare a `sum` function in elm
- Ask the people to run ./workshop to go through the examples
- After each example gather their insights and provide more explanation if needed


## Why we are using elm
Introduction and why is important:

- Functional programming languages and the rest of the world (where they are used, why and the benefits)
- Being a developer and using patterns from other languages (example of vectorisation in ML)
- We selected it for carwow for reasons explained in the 'Engineering Language choiche' notion document

(maybe show a code snippet initially to engage interest and see what they will be able to 'parse' after the workshop) - perhaps 2 code snippets one for the language and one for the 'application' part

## Installation

The application requires:
- npm: https://nodejs.org/en/
- elm: https://guide.elm-lang.org/install/elm.html
- fswatch: https://emcrisostomo.github.io/fswatch/getting.html

Fswatch can be installed on mac with either macports or brew,
if you don't have either follow the instructions on the page linked above
On linux should be available through the normal package manager

### Editor plugins
Install elm plugin and elm-format into your editor.

- VSCode: https://marketplace.visualstudio.com/items?itemName=Elmtooling.elm-ls-vscode
- Vim: https://github.com/ElmCast/elm-vim
- Emacs: https://github.com/jcollard/elm-mode
- Atom: https://atom.io/packages/language-elm


Once everything is set up run the workshop by running
```
./workshop 
```
from the top folder

# Maintaining it

The idea behind the workshop is to build the knowledge of the language
from the bottom up. 

In this way it's easier to introduce language features and build more complex
concepts from a strong foundation.

Another approach that I saw being used in this sort of workshops is to build
the knowledge starting from an application. While that approach has
its own benefits (e.g. dopamine response for each step solved) it has
the drawback of making the knowledge around different topics 'scattered'
meaning it's harder to grasp how all the different language features are 
working together for those examples to work.

## Main concepts to keep in mind:
- https://www.coursera.org/learn/learning-how-to-learn
- Spaced repetition
- ruby kohans was similar tool for ruby
- Order matters, each 'lesson' focuses on a topic and it can re-introduce concepts from 
  earlier parts of the course, so spaced repetition is reinforced

## Check if example and tests are going to run correctly

You can use 

```
./workshop doctor
```

To detect typos in the module names, missing documentation for the steps and so on

## Tools

The `workshop` command is a bash script built using a bash command library built for carwow
you can find the different helper commands by running

```
./workshop help
```

You can also create new helper commands by running 
```
./workshop generate <command-name>
```

To run all tests and see all the documentation at once you can run

```
./workshop run-all
```
