## Readability by Rob Pike

> Please make sure basic things like spacing, variable naming conventions,
> line endings, spaces instead of tabs, and the like follow
> the general style of the project.
>
> J. Geerling, [Why I close PRs (project maintainer notes)](http://www.jeffgeerling.com/blog/2016/why-i-close-prs-oss-project-maintainer-notes)

{nbsp}

* If a language has too many features, you waste time choosing which ones to use.
* Then implement, refine, possibly rethink and redo.
* Later, “Why does the code work this way?”
* The code is harder to understand simply because it is using
  a more complex language.
* Preferable to have just one way, or at least fewer, simpler ways.
* Features add complexity. We want simplicity.
* Features hurt readability. We want readability.
* Readability is paramount.

### Readable Means Reliable

* Readable code is reliable code.
* It’s easier to understand.
* It’s easier to work on.
* If it breaks, it’s easier to fix.
* If the language is complicated:
  - You must understand more things to read and work on the code.
  - You must understand more things to debug and fix it.
* A key tradeoff: More fun to write, or less work to maintain?


### Four Rules of Simple Design (simplified)

1. Tests Pass
1. Expresses Intent
1. No Duplication
1. Small

Examples:

1. Test Names Should Influence Object’s API.
1. Breaking Abstraction Level.
1. Don’t Have Tests Depend on Previous Tests.
1. Naive Duplication.
1. Behavior Attractors.
1. Duplication of Knowledge about Topology.
1. Procedural Polymorphism.
    - [I like the idea of replacing ifs with Polymorphism, but I'm not quite comfortable with it yet](https://gist.github.com/jamesarosen/5881146).
1. Testing State vs Testing Behavior.
1. Making Assumptions About Usage.
1. Unwrapping an Object.
1. Writing your code with “no return values”.
1. Inverted Composition as a Replacement for Inheritance.
