#import "@preview/fontawesome:0.6.0": *

#let resume(data) = {
  set document(author: data.personal.name, title: "CV - " + data.personal.name)
  set text(font: "Arial", size: 11pt, lang: "en")
  set page(margin: (x: 1.5cm, y: 1.5cm))
  
  // Definición de colores
  let color-primary = rgb("#1D3557") // Tu azul corporativo
  let color-accent = rgb("#457B9D")
  let color-text = rgb("#333333")

  // --- Header ---
grid(
    columns: (1fr, auto),
    gutter: 1em,
    align(left + horizon)[
      #text(24pt, weight: "bold", fill: color-primary)[#data.personal.name] \
      #v(-0.5em)
      #text(16pt, weight: "medium", fill: color-accent)[#data.personal.title] \
      #v(0.5em)
      #text(10pt, fill: color-text)[
        // 1. Ubicación siempre arriba (si existe)
        #if "location" in data.personal {
           data.personal.location 
           linebreak()
        }

        // 2. Lista dinámica de contactos
        // Aquí puedes agregar o comentar líneas libremente:
#let contact-info = (
          if "phone" in data.personal { data.personal.phone },
          if "email" in data.personal { link("mailto:" + data.personal.email)[#data.personal.email] },
          if "linkedin" in data.personal { link("https://" + data.personal.linkedin)[LinkedIn] },
          if "site" in data.personal { link("https://" + data.personal.site)[Portfolio] },
          // Agrega los que quieras en shared.typ...
          if "researchgate" in data.personal { link(data.personal.researchgate)[ResearchGate] },
          if "book" in data.personal { link(data.personal.book)[My Book] },
        )
        
        #contact-info.filter(it => it != none).map(it => box(it)).join(h(0.3em) + text(fill: color-accent)[|] + h(0.3em))
      ]
    ],
    // Foto
    if "photo" in data.personal and data.personal.photo != none {
       box(radius: 50%, clip: true, image(data.personal.photo, width: 2.8cm, height: 2.8cm, fit: "cover"))
    }
  )
  
  line(length: 100%, stroke: 1pt + color-primary)
  
  // --- Helpers ---
let section(title, icon: none) = {
    v(0.8em)
    
    // Construimos el contenido del título
    let title-text = if icon != none {
      // Si hay icono, lo ponemos con un pequeño espacio horizontal (h)
      // Opcional: box(baseline: 20%) ayuda a alinear verticalmente el emoji con el texto
      box(baseline: 0.1em)[#icon] + h(0.4em) + title
    } else {
      title
    }

    text(14pt, weight: "bold", fill: color-primary)[#title-text]
    v(-0.3em)
    line(length: 100%, stroke: 0.5pt + gray)
    v(0.4em)
  }

  // --- Summary ---
  section("Professional Summary", icon: fa-address-card())
  par(justify: true)[#data.summary]

  // --- Experience ---
  section("Professional Experience", icon: fa-briefcase())
  for job in data.experience {
    grid(
      columns: (1fr, auto),
      text(weight: "bold", size: 11pt)[#job.role @ #job.company],
      text(style: "italic", fill: color-text)[#job.date]
    )
    v(0.2em)
    if "description" in job {
      text(style: "italic")[#job.description]
    }
    if "details" in job {
      v(0.2em)
      list(marker: [•], ..job.details)
    }
    v(0.8em)
  }

  // --- Skills ---
  section("Technical Skills",icon:  fa-code())
  grid(
    columns: (1fr, 1fr),
    gutter: 1em,
    ..data.skills.pairs().map(((cat, items)) => [
      #text(weight: "bold", fill: color-accent)[#cat:] \
      #items.join(", ")
    ])
  )

  // --- Education ---
  section("Education", icon:  fa-graduation-cap())
  for edu in data.education {
    grid(
      columns: (1fr, auto),
      text(weight: "bold")[#edu.degree],
      text(style: "italic", fill: color-text)[#edu.date]
    )
    text[#edu.institution]
    if "details" in edu {
      text(size: 9pt, fill: color-text)[ -- #edu.details]
    }
    v(0.4em)
  }

  // --- Publications ---
  section("Selected Publications", icon: fa-book-open())
  set bibliography(title: none, style: "ieee")
  bibliography("own-bib.bib", full: true)
}