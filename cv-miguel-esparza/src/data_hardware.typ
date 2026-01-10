#import "shared.typ": personal, education

#let cv-data = (
  personal: personal,
  education: education,
  
  summary: [
    Senior Hardware Engineer with over 10 years of experience in board-level integration, schematic review, and diagnostic test development. Skilled in root cause analysis, hardware debugging using lab instrumentation, and supporting manufacturing teams. Proficient in signal integrity analysis and high-voltage safety systems.
  ],

  skills: (
    "Hardware Design": ("Schematic Review", "PCB Bring-up", "BOM Management", "Component Selection"),
    "Validation & Test": ("Root Cause Analysis", "Signal Tracing", "Functional Testing", "HIL Diagnostics"),
    "Instrumentation": ("Oscilloscopes", "Spectrum Analyzers", "Logic Analyzers", "Power Meters"),
    "Tools": ("Altium Designer", "SPICE Simulation", "LabVIEW", "Automated Test Equipment (ATE)")
  ),

  experience: (
    (
      role: "R&D Engineer (Hardware Focus)",
      company: "Dematic",
      date: "Feb 2023 - Present",
      // Descripción enfocada en HARDWARE
      description: [Responsible for board-level validation, hardware debugging, and reliability testing.],
      details: (
        "Performed rigorous diagnostics during beta testing, including signal tracing and fault isolation.",
        "Collaborated with layout engineers for PCB revisions and component validation.",
        "Supported manufacturing teams with BOM updates and validation reports."
      )
    ),
    (
      role: "R&D Manager",
      company: "Technologies Delee",
      date: "Aug 2017 - Feb 2023",
      description: [Oversaw hardware development and system integration for biomedical products.],
      details: (
        "Managed high-voltage safety systems integration and power supply design.",
        "Directed the development of test fixtures and automated testing systems using LabVIEW.",
        "Conducted failure analysis on microcontroller-based subsystems and sensors."
      )
    ),
    (
      role: "Head Applications Engineer",
      company: "Solintec",
      date: "Dec 2011 - Aug 2017",
      description: [Designed electrical panels and integrated industrial hardware systems.],
      details: (
        "Supported installation, cabinet wiring, and troubleshooting of panel-level systems.",
        "Provided field diagnostic support using portable instrumentation."
      )
    )
  )
)