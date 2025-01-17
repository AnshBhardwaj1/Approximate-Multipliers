# **Approximate 4x4-bit Multiplier**  

## **Description**  
This project implements an **approximate 4x4-bit multiplier** in Verilog. The design reduces hardware complexity by ignoring certain lower-bit contributions, leading to **lower power consumption** and **LUT usage** while maintaining accuracy within acceptable limits.  

## **Approximation Technique**  
The approximation is achieved by:  
- Prioritizing **MSB contributions** and reducing lower-bit interactions  
- Using **selective bit truncation** to reduce hardware complexity  
- Reducing **LUT utilization** while keeping Mean Relative Error (MRE) **under 10%**  

## **Test Bench and Verification**  
- The provided test bench (`testbench.sv`) was used to verify the design.  
- The `approx_multiplier` module was tested using **Icarus Verilog (iverilog) in an online compiler**.  
- The **simulation output is attached as a screenshot**.  

## **Steps to Run in an Online Compiler**  
1. Upload `design.sv` and `testbench.sv`.  
2. Run the following command in **Icarus Verilog (iverilog)**:  
   ```sh
   iverilog -Wall -g2012 design.sv testbench.sv && unbuffer vvp a.out
   ```  
3. Observe the **simulation output** in the console.  
4. Take **screenshots** of the simulation results.  

## **Results**  
### **Mean Relative Error (MRE)**  
- **MRE:** <10% (Screenshot attached)  

### **Simulation Output**  
- The output from the testbench verifies the correctness of the approximate multiplier.  
- Screenshot of the simulation output is attached.  

## **Screenshots**  
- **Simulation Output (Console Log)**  
- **Code Screenshot (`full.sv`)**  

## Submission Details
- GitHub Repository Link: (https://github.com/AnshBhardwaj1/Approximate-Multipliers)

