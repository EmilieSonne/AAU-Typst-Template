= Introduction
Getting started with Typst shouldn't be that difficult. The language is pretty similar to JavaScript #footnote([A programming language which is known for its incredible type system!]).

- This is a list item
- This is also a list item

+ This is an enumerated list item
+ This is another one

== Basic Math
Math in Typst, is pretty similar to the way it's done in LaTeX. Here are some basic equations.

The sum of the numbers from
$1$ to $n$ is:

$ sum_(k=1)^n k = (n(n+1))/2 $

This math isn't centered:

// No spaces around the $-signs
$x=123+123$

This is:

#figure(
  rect[$ delta "if" x <= 5 $],
  caption: [This is an equation as a figure *with* a border]
) <math:borderedEquation>

#figure(
  [$ f(x) = (x + 1) / x $],
  caption: [This is an equation as a figure *without* a border]
) <math:simpleEquation>

The math in @math:simpleEquation is referenced right here.

=== Matrices

This is an example of a matrix:
$ mat(
  1, 2, ..., 10;
  2, 2, ..., 10;
  dots.v, dots.v, dots.down, dots.v;
  10, 10, ..., 10;
) $


== Sources & bibliography
To add a source, you just have to reference your `.bib` file like the following anywhere in a document:
```typst
#bibliography("sources/sample.bib")
```

In this project it's located in `main.typ`. Now it can be referred the same way a figure is referred: `@einstein` @einstein. A reference only shows up in the bibliography section if it has at least one mention.


== Getting Started
How do I start?

=== Write Typst Collaboratively
You can use #link("https://typst.app/")[Typst.app] to write collaboratively. Just download #link("https://github.com/krestenlaust/AAU-Typst-Template/")[this project] as zip, and upload the following to an empty typst project:

 - main.typ
 - template.typ
 - (folder) AAUgraphics
 - (folder) Chapters

== Other Functions
This is the lorem ipsum function:
#lorem(20)

=== Contributions
#lorem(40)