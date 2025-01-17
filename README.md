# Approximate 4x4-bit Multiplier

## Description
This project implements an approximate 4x4-bit multiplier in Verilog. The design reduces hardware complexity by ignoring certain lower-bit contributions, leading to lower power consumption and LUT usage while maintaining accuracy within acceptable limits.

## Approximation Technique
The approximation is achieved by:
- Prioritizing MSB contributions and ignoring lower-order bit multiplications
- Reducing the impact of LSB interactions to optimize LUT utilization
- Using selective bit truncation for reduced computation complexity

## Test Bench and Verification
- The provided test bench (`multiplier_tb.v`) was used to verify the design.
- The `approx_multiplier` module was tested in **Vivado**, and the **Mean Relative Error (MRE) was observed to be <10%**, with an effort to reduce it further to <5%.

## Results
### Mean Relative Error (MRE)
- **MRE:** <10% (Screenshot attached)

### Power and Utilization Reports
- **LUTs:** ≤12 (Compared to 16 in a real multiplier)
- **Power consumption:** Screenshot attached
- **Utilization report:** Screenshot attached

## Steps to Run in Vivado
1. Set `approx_multiplier` as the top module.
2. Run synthesis (`Flow -> Run Synthesis`).
3. Open the synthesized design (`Flow -> Open Synthesized Design`).
4. Generate utilization and power reports (`Report Utilization` & `Report Power`).
5. Verify **MRE** in the TCL console after running the testbench.

## Screenshots
- **MRE Output**
- **Power Report**
- **Utilization Report**

## Submission Details
- GitHub Repository Link: [Insert Your Repo Link Here]

