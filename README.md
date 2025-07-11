# Performance-of-CMOS-Based-Ring-Oscillator-Architecture
Design and performance analysis of 5-, 7-, and 9-stage CMOS ring oscillators using 45nm technology with Cadence Virtuoso and MATLAB.
This project analyzes and compares 5-, 7-, and 9-stage CMOS-based ring oscillators using **45nm technology**, designed and simulated using **Cadence Virtuoso** and **MATLAB**. The goal is to explore trade-offs in frequency, power, delay, and area for modern VLSI applications.

## 📌 Objectives

- Design 5-, 7-, and 9-stage ring oscillators using CMOS inverters.
- Simulate circuits using Cadence Virtuoso.
- Analyze performance (frequency, delay, power) via MATLAB.
- Compare trade-offs across oscillator configurations.
- Recommend optimized designs for applications like clock generation and IoT.

## 🧠 Tools & Technologies

- **Cadence Virtuoso** – For schematic, layout, and simulation
- **MATLAB** – For waveform analysis and power calculation
- **45nm CMOS technology**

## 📈 Performance Summary

| Metric              | 5-Stage     | 7-Stage     | 9-Stage     |
|---------------------|-------------|-------------|-------------|
| Frequency (GHz)     | 4.5         | 3.8         | 3.5         |
| Delay per Stage (ps)| 22.05       | 18.62       | 15.79       |
| Power (mW)          | 0.0068      | 0.0063      | 0.0057      |
| Area (nm²)          | 78.76       | 94.67       | 122.01      |

## 🧪 MATLAB Simulation Scripts

- `/src/matlab/power_analysis_5stage.m`
- `/src/matlab/power_analysis_7stage.m`
- `/src/matlab/power_analysis_9stage.m`

Each script simulates voltage, current, and power consumption across oscillator stages.

## 🖼️ Images & Layouts

Add waveform and layout screenshots in the `images/` folder to visualize:
- Transient waveforms
- Cadence layouts (with DRC and LVS results)

## 📦 Applications

- Clock generation for digital ICs
- Secure random number generators
- Frequency references in PLLs
- IoT and low-power systems

## 🚀 Future Scope

- Implement using FinFET / 7nm / 5nm technology
- Integrate with Phase-Locked Loops (PLLs)
- Apply in secure hardware (e.g., PUFs)
- Enhance temperature/process variation tolerance
