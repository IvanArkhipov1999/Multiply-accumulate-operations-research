# Multiply-accumulate-operations-research

This repository contains code for research of features of multiply-accumulate operations of [MIPS32 architecture](https://www.mips.com/products/architectures/mips32-2/). Research of *madd* command is published in [Computer tools in education](http://cte.eltech.ru/ojs/index.php/kio/article/view/1715).

[*counter.py*](https://github.com/IvanArkhipov1999/Multiply-accumulate-operations-research/blob/main/counter.py) contains code for counting average value of measured ticks.

[*template_tick_counter.s*](https://github.com/IvanArkhipov1999/Multiply-accumulate-operations-research/blob/main/template_tick_counter.s) contains template of measuring ticks for sequence of commands

The code intended for researching a particular command is contained in the directory with the name of this command. For example, [*madd*](https://github.com/IvanArkhipov1999/Multiply-accumulate-operations-research/tree/main/madd) contains code for researching *madd* command.

Each directory with code for researching a particular command contains tests for tick measure and time measure, that are divided into two directories: *tick_measure* and *time_measure*.

Directory *time_measure* contains test on C language for time measure. Directory with the same name as test on C language in *time_measure* directory contains the same test in assembler, that was received after compiling by GCC and Clang, with different modifications. Directories *_reduce* contains the same test in assembler, but without different commands.

Directory *tick_measure* contains directories with tests of commands in different cases. Directory *branch* contains tests with commands for research and branch command. Directory *cycle* contains tests with commands for research in cycle. Directory *just_commands* contains tests with commands for research without other commands. Directory *unloop_cycle* contains tests with commands for research in unlooped cycle. Directory *unloop_cycle2* contains tests with commands for research in unlooped cycle in another order.
