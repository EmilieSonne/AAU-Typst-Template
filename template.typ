// The project function defines how your document looks.
// It takes your content and some metadata and formats it.
// Go ahead and customize it to your liking!
#let project(
  title: "Edit Title Here",
  abstract: [],
  authors: (),
  group_name: "",
  date: none,
  logo: none,
  body,
) = {
  let aaublue = rgb(33, 26, 82)
  // Set the document's basic properties.
  set document(author: authors.map(a => a.name), title: title)
  set page(numbering: "1", number-align: center)

  set page(background: locate(loc =>
    if loc.page() == 1 {
      image("AAUgraphics/aau_waves.svg", width: 100%, height: 100%)
    }
  ))

  // Save heading and body font families in variables.
  let body-font = "New Computer Modern"
  let sans-font = "New Computer Modern Sans"

  // Set body font family.
  set text(font: body-font, lang: "en")
  show math.equation: set text(weight: 400)
  show heading: set text(font: sans-font)
  set heading(numbering: "1.1")

  // Title page.
  // The page can contain a logo if you pass one with `logo: "logo.png"`.
  v(1.6fr)
  box(
    fill: aaublue,
    inset: 18pt,
    radius: 1pt,
    clip: false,
    [
      #set text(fill: white, 12pt)
      #align(center, text(font: sans-font, 2em, weight: 700, title))
      #align(center, group_name)
      #align(center)[
        #((..authors.map(author => author.name)).join(", ", last: " and "))
      ]
    ]
  )
  if logo != none {
    align(right, image(logo, width: 100%))
  }
  v(9.6fr)

  text(1.1em, date)

  // Author information.
  pad(
    top: 0.7em,
    right: 20%,
    grid(
      columns: (1fr,) * calc.min(3, authors.len()),
      gutter: 1em,
      ..authors.map(author => align(start)[
        *#author.name* \
        #author.email
      ]),
    ),
  )

  v(2.4fr)
  pagebreak()

  // Abstract page.
  v(1fr)
align(center)[
    #heading(
      outlined: false,
      numbering: none,
      text(0.85em, smallcaps[Abstract]),
    )
    #abstract
  ]
  v(1.618fr)
  pagebreak()

  // Table of contents.
  outline(depth: 3, indent: true)
  pagebreak()


  // Main body.
  set par(justify: true)

  body
}