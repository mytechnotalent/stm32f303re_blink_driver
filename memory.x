/* Copyright (c) 2025 Kevin Thomas
 * Licensed under the MIT License. See LICENSE file in the project root for full license information.
 */

/* STM32F303RE Memory Layout
 *
 * This linker script defines the memory regions for the STM32F303RET6 microcontroller.
 * The STM32F303RE features an ARM Cortex-M4F core with FPU and DSP instructions.
 *
 * Memory Specifications:
 * - FLASH: 512KB of program memory starting at 0x08000000
 *   - Used for storing compiled code and constant data
 *   - Non-volatile, retains data when power is removed
 *   - Flash sectors can be used for EEPROM emulation if needed
 *
 * - RAM: 64KB of SRAM starting at 0x20000000
 *   - Used for stack, heap, and runtime variables
 *   - Volatile, loses data when power is removed
 *   - Split across multiple banks for optimal performance
 *
 * Additional Memory (not defined here):
 * - CCM RAM: 16KB at 0x10000000 (Core Coupled Memory, CPU-only access)
 * - System Memory: Boot ROM at 0x1FFFD800
 *
 * Reference: STM32F303xE datasheet, section 4 (Memory mapping)
 */

MEMORY
{
  FLASH : ORIGIN = 0x08000000, LENGTH = 512K
  RAM : ORIGIN = 0x20000000, LENGTH = 64K
}
