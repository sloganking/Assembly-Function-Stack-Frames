# Assembly-Function-Stack-Frames
[Self Teaching] Creating function stack frames in assembly.

This project was created with the intent of teaching myself assembly and learning more about low level CPU operations. All code is to be executed using the simulator found here:

https://schweigi.github.io/assembler-simulator/index.html

[Documentation for the simulator.](https://schweigi.github.io/assembler-simulator/instruction-set.html)

## Instructions

paste project code from [StackFrames.asm](https://github.com/SleepingFox88/Assembly-Function-Stack-Frames/blob/master/StackFrames.asm) into the [code section of the simulator](https://i.imgur.com/UZ5j3Rn.png)

Hit reset at the top and then press run at the top to start the program.

## Notes

- This project was inspired by concepts from the [x86 Assembly Crash Course](https://www.youtube.com/watch?v=75gBFiFtAb8&t) video by HackUCF
- The assembly simulator used for this project does not have instructions and registers shown in the "x86 Assembly Crash Course" video, such as LEAVE and a dedicated Base Pointer. So the general puspose register B was assigned as this program's base pointer, and instructions like LEAVE were substituted with multiple simpler instructions.
