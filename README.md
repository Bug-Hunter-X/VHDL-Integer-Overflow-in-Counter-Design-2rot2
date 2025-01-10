# VHDL Counter with Potential Integer Overflow

This repository demonstrates a potential integer overflow issue in a simple VHDL counter design. The counter uses an `INTEGER` type for its internal count, which is prone to overflow if the count exceeds the defined range (0 to 15 in this example). The solution provided demonstrates how to improve the design by handling potential overflow using a more appropriate data type.

## Bug Description

The `counter_bug.vhd` file contains a VHDL counter design that utilizes an `INTEGER` type for the internal count. When the counter reaches its maximum value (15), incrementing it will lead to an unexpected overflow that might not be easily detectable during testing or simulation. This issue can manifest in various ways depending on the VHDL simulator and synthesis tool.  It may produce unexpected output values or could result in simulation errors.