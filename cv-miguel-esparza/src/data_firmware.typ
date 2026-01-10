#import "shared.typ": personal, education

#let cv-data = (
  personal: personal,
  education: education,
  
  summary: [
    Senior Firmware Engineer with extensive experience in ARM Cortex-M architectures (M0/M3/M4) and Real-Time Operating Systems. Expert in designing CI/CD pipelines for embedded targets, developing low-level drivers, and implementing control algorithms. Skilled in C/C++, Python, and Docker for HIL testing environments.
  ],

  skills: (
    "Core Firmware": ("C/C++", "RTOS", "Data Structures", "OOP", "Design Patterns"),
    "Embedded Systems": ("ARM Cortex-M", "Bootloaders", "Peripherals (CAN, UART, SPI)", "JTAG"),
    "DevOps & Tools": ("Git", "Docker", "Jenkins", "Python scripting", "Unit Testing"),
    "Control": ("PID Control", "Digital Signal Processing", "Matlab/Simulink")
  ),

  experience: (
    (
      role: "R&D Firmware Engineer",
      company: "Dematic",
      date: "Feb 2023 - Present",
      // Descripción enfocada en SOFTWARE
      description: [Lead firmware architect for proprietary industrial devices, focusing on modular design and testability.],
      details: (
        "Designed and implemented CI/CD pipelines using Docker containers for Hardware-in-the-Loop (HIL) testing.",
        "Developed optimized low-level drivers for Profinet, CAN, and UART communications.",
        "Implemented secure bootloader mechanisms and firmware update strategies for ARM microcontrollers."
      )
    ),
    (
      role: "R&D Manager (Technical Lead)",
      company: "Technologies Delee",
      date: "Aug 2017 - Feb 2023",
      description: [Led the firmware architecture design for a suite of biomedical diagnostic devices.],
      details: (
        "Architected the firmware for six medical devices using STM32 microcontrollers.",
        "Developed precise flow control algorithms and power management systems.",
        "Mentored the engineering team in best coding practices and version control workflows."
      )
    ),
    (
      role: "Head Applications Engineer",
      company: "Solintec",
      date: "Dec 2011 - Aug 2017",
      description: [Developed automation logic and control software for industrial machinery.],
      details: (
        "Programmed PLCs and HMI interfaces for over 20 automation projects.",
        "Integrated vision systems algorithms for quality control applications."
      )
    )
  )
)