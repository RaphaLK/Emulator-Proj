Project : GBA Emulator
Start date : 30/11/2022

*GBA's assembly code is ARM7
Signed Halfword Multiply uses SM---xy

Specs 
- Resolution : 240x160
- CPU : 32-Bits *ARMTDMI7
- Display : 15-Bit Color


Memory Map (Copied from problemkaputt.de)
General Internal Memory
  00000000-00003FFF   BIOS - System ROM         (16 KBytes) <--- DO NOT READ, JUST EXEC
  00004000-01FFFFFF   Not used
  02000000-0203FFFF   WRAM - On-board Work RAM  (256 KBytes) 2 Wait
  02040000-02FFFFFF   Not used
  03000000-03007FFF   WRAM - On-chip Work RAM   (32 KBytes)
  03008000-03FFFFFF   Not used
  04000000-040003FE   I/O Registers
  04000400-04FFFFFF   Not used
Internal Display Memory
  05000000-050003FF   BG/OBJ Palette RAM        (1 Kbyte)
  05000400-05FFFFFF   Not used
  06000000-06017FFF   VRAM - Video RAM          (96 KBytes)
  06018000-06FFFFFF   Not used
  07000000-070003FF   OAM - OBJ Attributes      (1 Kbyte)
  07000400-07FFFFFF   Not used
External Memory (Game Pak)
  08000000-09FFFFFF   Game Pak ROM/FlashROM (max 32MB) - Wait State 0
  0A000000-0BFFFFFF   Game Pak ROM/FlashROM (max 32MB) - Wait State 1
  0C000000-0DFFFFFF   Game Pak ROM/FlashROM (max 32MB) - Wait State 2
  0E000000-0E00FFFF   Game Pak SRAM    (max 64 KBytes) - 8bit Bus width
  0E010000-0FFFFFFF   Not used
Unused Memory Area
  10000000-FFFFFFFF   Not used (upper 4bits of address bus unused)

Phase 1 : CPU (Emulate the ARM7TDMI)
Phase 2 : Display & Startup 
Phase 3 : ROM Loading
Phase 4 : Audio

Resources :
https://programminginsider.com/programming-a-gameboy-advance-emulator-getting-started/
https://www.reddit.com/r/EmuDev/comments/cfy60z/resources_to_build_a_gba_emulator/
https://problemkaputt.de/gbatek.htm
https://www.coranac.com/tonc/text/
https://www.patater.com/gbaguy/gba/ch1.htm
