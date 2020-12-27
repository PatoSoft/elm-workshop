# Running it 

The application requires 
npm: https://nodejs.org/en/
elm: https://guide.elm-lang.org/install/elm.html
fswatch: https://emcrisostomo.github.io/fswatch/getting.html

Fswatch can be installed on mac with either macports or brew,
if you don't have either follow the instructions on the page linked above
On linux should be available through the normal package manager

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
