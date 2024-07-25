# FPGA UBB Quantum Optics Lab
FPGA project for the control system of the OAM experiment. FPGA stores a set of images in a DDR memory, displays such images via HDMI port, prepares a train of short pulses to drive an EOM Intensity modulator, and aquires counts from 2 detectors. This project is meant to work along a GUI written in C#.

1. **electronics** contains the source files for the FMC PCB and the LM7171 AMP PCB. These includes manufacturing files, schematics and PCB outlines
2. **caja** contains a blender file with the mechanical drawings of the plastic box for the project
3. **Figuras_Hologramas_OAM** contains a set of holograms to display, and some images with numbers for calibration
4. **FPGA-Vivado-Project** contains the main Vivado project in `Genesys2_VideoDemoR1` and its sources in `srcs`. You can use the project as it is ot build the briject by your own running the *srcs/Genesys2_VideoDemoR1.tcl* file with their respective dependencies and then build your own project. Synthesis, implementation and bitstream generation
5. **GUI** includes the main Graphical User Interface (GUI) to run the program along with the FPGA project. C# project in `SOFTWARE BASE-UART` and final GUI in `FINAL`. Notice that a USB UART connection is required to transmit information from the FPGA to PC 115200 buad rate.

## GUI
C# project in `GUI\SOFTWARE BASE-UART\` and FINAL Graphical User  Interface (GUI), located in `GUI\SOFTWARE BASE-UART\driver_PM_software\bin\Debug\driver_PM_software.exe`
**GUI controls**
- SOON TO BE UPDATED

## FPGA
- Main Vivado project in `FPGA-Vivado-Project\Genesys2_VideoDemoR1`, 
    - Final bitstream is located in `FPGA-Vivado-Project\Genesys2_VideoDemoR1\Genesys2_VideoDemoR1.runs\impl_1\*.bit`. 
    - You can upload this file into the FPGA using Vivado. Left bottom menu, PROGRAM AND DEBUG, Open Hardware, Auto connect, Program FPGA (with the .bit file)
- `srcs` contains all verilog files, please keep this updated



### How to use this repo?
- Create a GitHub account
- Download Github desktop
- CLONE the repository (ask me for access since it is a private repo)
    - If you want to use this files and not modify them CLONE this repository in the MAIN branch. 
    - If you want to modify it create a new branch and have fun
- Now all the files are in the folder where you cloned the repo.
- If you want to make permanet changes to the MAIN branch, make a commit, but ask me first
- GitHub is not meant to store experiment data, but code, keep this repo as clean as possible.