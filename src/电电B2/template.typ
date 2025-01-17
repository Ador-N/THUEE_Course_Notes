// The project function defines how your document looks.
// It takes your content and some metadata and formats it.
// Go ahead and customize it to your liking!
#let project(title: "", authors: (), date: none, body) = {
  // Set the document's basic properties.
  set document(author: authors, title: title)
  set page(numbering: "1", number-align: center)
  set text(font: ("New Computer Modern", "Noto Serif CJK SC"))
  //show math.equation: it => align(center, it.body)
  set heading(numbering: (n1, ..x) => numbering("1.", n1 - 1, ..x))
  
  set math.mat(delim: "[")
  set math.vec(delim: "[")
  show emph: it => underline(it.body, offset: 2pt)
  show math.equation: it => {
    show regex("\p{script=Han}|（|）"): set text(font: "Noto Serif CJK SC")
    it
  }
  // Title row.
  align(center)[
    #block(text(weight: 700, 1.75em, title))
    #v(1em, weak: true)
    #date
  ]

  // Author information.
  pad(
    top: 0.5em,
    bottom: 0.5em,
    x: 2em,
    grid(
      columns: (1fr,) * calc.min(3, authors.len()),
      gutter: 1em,
      ..authors.map(author => align(center, strong(author))),
    ),
  )

  // Main body.
  set par(justify: true)

  body
}