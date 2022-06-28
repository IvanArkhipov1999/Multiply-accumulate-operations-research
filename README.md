# Multiply-accumulate-operations-research

This repository contains code for research of features of multiply-accumulate operations of [MIPS32 architecture](https://www.mips.com/products/architectures/mips32-2/).

[*counter.py*](https://github.com/IvanArkhipov1999/Multiply-accumulate-operations-research/blob/main/counter.py) contains code for counting average value of measured ticks.

[*template_tick_counter.s*](https://github.com/IvanArkhipov1999/Multiply-accumulate-operations-research/blob/main/template_tick_counter.s) contains template of measuring ticks for sequence of commands

The code intended for researching a particular command is contained in the directory with the name of this command. For example, [*madd*](https://github.com/IvanArkhipov1999/Multiply-accumulate-operations-research/tree/main/madd) contains code for researching *madd* command.

Each directory with code for researching a particular command contains tests for tick measure and time measure, that are divided into two directories: tick_measure and time_measure.
