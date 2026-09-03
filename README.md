![](https://capsule-render.vercel.app/api?type=waving&color=0:120A8F,100:FF69B4&height=120&section=header&text=Assembly%20Language&fontSize=36&fontColor=ffffff&animation=fadeIn)

# Computer Organization & Assembly Language — The Ultimate Roadmap (CS-202)

> 16-week mastery system · 3rd Semester, Batch 8
> Exemplar ISA: x86 (8086). The phases are ISA-agnostic — if your course uses MIPS/ARM, only syntax and tooling change.

## Contents

1. [Foundational Mental Models](#1-foundational-mental-models)
2. [Day-Zero Environment Setup](#2-day-zero-environment-setup)
3. [The 16-Week Roadmap](#3-the-16-week-roadmap)
4. [Phase Checklists (Progress Tracking)](#4-phase-checklists-progress-tracking)
5. [Neuro-Optimized Learning Protocol](#5-neuro-optimized-learning-protocol)
6. [Weekly Time Budget](#6-weekly-time-budget)
7. [Pre-Mortem: Canonical Failure Modes](#7-pre-mortem-canonical-failure-modes)
8. [Capstone Options (Asymmetric Outcomes)](#8-capstone-options-asymmetric-outcomes)
9. [Repository Structure & Conventions](#9-repository-structure--conventions)
10. [Reference Materials](#10-reference-materials)

---

## 1. Foundational Mental Models

Adopt these before writing a single instruction:

- **First principles:** A CPU is a fetch–decode–execute machine. Memory is a byte-addressable array; registers are CPU-local variables; flags are one-bit status registers; the stack is a downward-growing LIFO region. Every "rule" of assembly derives from this model.
- **Inversion (debugging):** Never ask "what did I intend?" Ask "what will the machine do next, exactly?" Predict state, then verify.
- **Resource allocation (systems thinking):** Assembly is optimization under constraints — registers are scarce, memory is slow. This framing pays dividends in OS, compilers, and performance engineering.
- **Compounding asset:** Your notes and code become a repository you can teach from next semester. Most students consume; you will build.

## 2. Day-Zero Environment Setup

| Tool | Purpose |
|---|---|
| EMU8086 / SASM + NASM + DOSBox (or MARS for MIPS) | Writing, running, step-debugging |
| Compiler Explorer (godbolt.org) | Observe how C compiles to assembly — your ground truth |
| Anki | Spaced-repetition deck for instruction semantics |
| GitHub repository | Cumulative notes, solutions, write-ups |
| Paper notebook | Hand-tracing register/flag/memory state |

## 3. The 16-Week Roadmap

| Weeks | Assembly Thread | Organization Thread | Drill / Checkpoint |
|---|---|---|---|
| 1–2 | Number systems, two's complement, endianness; registers & flags; `MOV/ADD/SUB/INC/DEC/NEG` | Von Neumann architecture; fetch–decode–execute | Hand-trace 15 snippets; predict all flags before running |
| 3–4 | `CMP`; signed vs unsigned jumps (`JG/JL` vs `JA/JB`); `LOOP`; translate if/for/while from C | Datapath & control unit; how a jump executes in hardware | Re-implement 6 C functions; verify against Compiler Explorer |
| 5–6 | `PUSH/POP/CALL/RET`; stack frames; parameters & locals; recursion | Control vs datapath; role of PC/SP in hardware | Factorial, Fibonacci, GCD — with full stack diagrams |
| 7–8 | Addressing modes; `LEA`; arrays; string ops (`MOVSB/CMPSB/REP`) | Memory hierarchy; cache basics; why locality matters | Max/sum/reverse/search; palindrome check. Midterm revision |
| 9–10 | DOS interrupts (`INT 21h`: 01h/02h/09h/4Ch) or syscalls; divide-by-10 print-number algorithm | Interrupt mechanics; I/O architectures; polled vs interrupt-driven | Menu-driven CLI calculator with validated input |
| 11–12 | Macros; multi-file modular programs; linking; calling-convention discipline | Pipelining; hazards; introduction to performance | Build a small reusable library; interface one function with C |
| 13–14 | Capstone project; instruction-count thinking | Review: datapath → pipeline → memory coherency | Ship project; write a 2-page technical retrospective |
| 15–16 | Timed past-paper writing; lab exam drills; bug-hunt exercises | Cumulative organization revision | Two full closed-book mocks; error-log review |

## 4. Phase Checklists (Progress Tracking)

### Phase I — Machine Model (Weeks 1–2)
- [ ] Binary/hex/two's-complement conversions fluent
- [ ] Register file and flag semantics memorized (Anki)
- [ ] 15 snippets hand-traced with flag predictions
- [ ] First 5 programs written and verified in the simulator

### Phase II — Control Flow (Weeks 3–4)
- [ ] Signed vs unsigned jump table committed to Anki
- [ ] 6 C functions (if/else, for, while, nested) re-implemented
- [ ] Each solution cross-checked against Compiler Explorer output

### Phase III — Procedures & Stack (Weeks 5–6)
- [ ] Stack-frame diagram drawn for every procedure
- [ ] Recursion drills complete: factorial, Fibonacci, GCD
- [ ] Closed-book write-out of `CALL/RET` + parameter passing

### Phase IV — Memory, Arrays, Strings (Weeks 7–8)
- [ ] Every addressing mode used at least once
- [ ] Array drills: max / sum / reverse / search
- [ ] String drills: length, reverse, palindrome
- [ ] Midterm mock completed and reviewed

### Phase V — I/O & Interrupts (Weeks 9–10)
- [ ] `INT 21h` service table committed to Anki
- [ ] Print-number (divide-by-10) algorithm written from scratch
- [ ] Menu-driven CLI calculator with validated input shipped

### Phase VI — Modular Programming (Weeks 11–12)
- [ ] Multi-file project assembled and linked successfully
- [ ] Macro library written and reused
- [ ] One C ↔ assembly interface completed

### Phase VII — Capstone (Weeks 13–14)
- [ ] Capstone project shipped and pushed to this repository
- [ ] Two-page technical retrospective written

### Phase VIII — Exam Mastery (Weeks 15–16)
- [ ] Two timed, closed-book mocks completed
- [ ] Error log fully reviewed
- [ ] Lab exam drills completed

## 5. Neuro-Optimized Learning Protocol

| Cadence | Activity |
|---|---|
| Daily (15 min) | Anki: one card per instruction (operands, flags affected), jump-condition table, addressing modes |
| Session start (5 min) | Rewrite yesterday's program from memory, then reconcile |
| Weekly (30 min) | Closed-book retrieval: one complete program + the week's instruction set from scratch |
| Bi-weekly (60 min) | Cumulative past-paper-style mock |

Operating rules:

1. **Predict → Run → Reconcile.** Every program is traced on paper *before* execution. Mismatches between prediction and reality are the learning signal.
2. **Interleave with C.** Write a function in C, inspect its compiled output, then re-implement it by hand.
3. **Dual coding.** Always draw register, memory, and stack state — diagrams, not prose.
4. **Feynman write-ups.** One repository note per concept, written as if teaching it.
5. **Consolidation.** Protect sleep; use 90-minute focused blocks; retrieval beats re-reading.

## 6. Weekly Time Budget

Approximately **7 hours/week** alongside CS-201, CS-203, and Calculus:

- Two 90-minute deep blocks (new material + drills)
- One 60-minute lab drill
- Daily 15-minute Anki reviews
- One 30-minute weekly review

Consistency over cramming: never allow two consecutive days without touching assembly.

## 7. Pre-Mortem: Canonical Failure Modes

- Confusing signed (`JG/JL`) with unsigned (`JA/JB`) jumps.
- Ignoring flag side effects (e.g., `INC/DEC` do not modify CF on x86; `LOOP` affects no flags).
- Unbalanced stacks across procedures (every `PUSH` lacks a `POP`).
- Off-by-one loop bounds and unterminated strings.
- Translating C line-by-line instead of planning register allocation first.

Maintain a personal error log (`notes/error-log.md`) and review it weekly.

## 8. Capstone Options (Asymmetric Outcomes)

Select one for Weeks 13–14 and publish it in this repository:

- Multi-module, macro-based calculator
- String-toolkit library callable from C
- Assembly sort benchmarked against C

This converts a course requirement into a portfolio asset.

## 9. Repository Structure & Conventions

    assembly-roadmap/
    ├── README.md            ← this document
    ├── notes/               ← one Feynman write-up per concept
    │   └── error-log.md
    ├── code/
    │   ├── phase-1/ … phase-8/
    │   └── capstone/
    └── mocks/               ← timed past-paper attempts with scores

Conventions: commit at least every 2–3 days; write notes as if teaching; record every bug and its root cause in the error log.

## 10. Reference Materials

- Irvine, *Assembly Language for x86 Processors* (primary text, if x86)
- Patterson & Hennessy, *Computer Organization and Design* (organization thread; MIPS/RISC-V/ARM editions)
- Nand2Tetris, Part I (hardware intuition)
- OpenSecurityTraining, *Introduction to Assembly Language*
- Compiler Explorer (godbolt.org); later, GDB for long-term leverage

---

*Maintained as a living document. Update checkboxes and metrics weekly.*
