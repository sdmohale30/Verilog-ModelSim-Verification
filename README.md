# Verilog RTL Verification Portfolio (ModelSim)

Welcome to my digital design and verification portfolio. [cite_start]This repository serves as a continuous log of hardware designs implemented in Verilog HDL and verified using **ModelSim**[cite: 78]. 

## 📂 Repository Structure
[cite_start]Each directory contains standalone synthesizable source files (`/src`) and testbenches (`/sim`)[cite: 72].

| # | Design Description | Key Verification Concepts Demonstrated | Link |
| :-: | :--- | :--- | :-: |
| 01 | **2-to-1 Multiplexer (MUX)** | Dataflow modeling, conditional ternary assignment, timed simulation stimulus phase. | [View](./01_Mux21/) |

---

## 🛠️ Project 01: 2-to-1 Multiplexer (MUX)

### Logic Truth Table
| Selection (`sel`) | Output (`y`) | Description |
| :---: | :---: | :--- |
| `0` | `a` | [cite_start]Output routes Input A [cite: 17] |
| `1` | `b` | [cite_start]Output routes Input B [cite: 18] |

### Simulation and Verification
[cite_start]The testbench sequences through timed states to ensure complete behavioral coverage[cite: 23]:

| Time | Inputs (`a`, `b`) | Control (`sel`) | Expected Output (`y`) | Verified Case |
| :--- | :--- | :--- | :--- | :--- |
| **0 ns** | [cite_start]`0`, `1` [cite: 26] | [cite_start]`0` [cite: 26] | [cite_start]**`0`** [cite: 27] | [cite_start]Case 1: Active Input A [cite: 27] |
| **10 ns** | [cite_start]`1`, `1` [cite: 28] | [cite_start]`0` [cite: 28] | [cite_start]**`1`** [cite: 29] | [cite_start]Case 1: Active Input A [cite: 29] |
| **20 ns** | [cite_start]`1`, `0` [cite: 30] | [cite_start]`1` [cite: 30] | [cite_start]**`0`** [cite: 31] | [cite_start]Case 2: Active Input B [cite: 31] |
| **30 ns** | [cite_start]`1`, `1` [cite: 32] | [cite_start]`1` [cite: 32] | [cite_start]**`1`** [cite: 33] | [cite_start]Case 2: Active Input B [cite: 33] |

### Expected Transcript Stream
[cite_start]When simulated, the `$monitor` system task prints the following text stream in the ModelSim transcript window[cite: 3, 36]:
```text
Time=0 | A=0 B=1 Sel=0 | Y=0
Time=10 | A=1 B=1 Sel=0 | Y=1
Time=20 | A=1 B=0 Sel=1 | Y=0
Time=30 | A=1 B=1 Sel=1 | Y=1