# Low Power CMOS Full Adder Circuit

- This repository presents the design of Low Power CMOS Full Adder implemented using Synopsis Custom Compiler on 28nm CMOS Technology.

 // Table of contents here

 ## Introduction
- In current years due to rapid growth and development of integration system of manufacturing if ICs from small scale integration (which allow the manufacturing of ICs with 1-10 transistor in a single chip) to ultra large scale integration (which allow manufacturing of ICs which consists of billions of transistor in a single chip) which lead the development in the electronics.

- Due to advancement of electronic world development takes place in the electronics devices in smart phones, laptops, computers which demand low power consumption, high speed performance with very less time propagation delay.

- In those devices arithmetic logic units adders plays a vital role to perform the various logical operation (addition, subtraction, multiplication, division) in a system. Full Adder is the adder which adds three inputs and produces two outputs.

- In conventional full adder circuits, we use CMOS technology i.e. PMOS and NMOS are used as a switch in complementary mode. Such applications of NMOS and PMOS as a switch is called pass transistor logic. In Transmission Gates, both NMOS and PMOS transistors are combined in parallel fashion.

- When performance of both the circuits was compared, transmission gate circuit consumed less power as compared to the pass transistor circuit designed using CMOS logic.
//image of transmission gate

- A transmission gate is defined as an electronic element that will selectively block or pass a signal level from the input to the output. This solid-state switch is comprised of a PMOS transistor and NMOS transistor. The transmission gate consists of two MOSFETs, one n-channel responsible for correct transmission of logic zeros, and one p-channel, responsible for correct transmission of logic ones.

- When C = 1, X and Y are connected, both logic zero and logic one are passed without degradation. A transmission gate has three inputs, called source, ngate, and p-gate; and it has one output, called drain. The two transistors, an NMOS and a PMOS are connected in parallel configuration. 

- When the control input is a logic zero (negative power supply potential), the gate of the NMOS is also at a negative supply voltage potential. The gate terminal of the PMOS is caused by the inverter, to the positive supply voltage potential. Regardless of on which switching terminal of the transmission gate (X or Y) a voltage is applied, the gate-source voltage of the NMOS is always negative, and the PMOS is always positive.

- Accordingly, neither of the two transistors will conduct and the transmission gate turns off. When the control input is a logic one, so the gate terminal of the NMOS is located at a positive supply voltage potential. By the inverter, the gate terminal of the PMOS is now at a negative supply voltage potential. As the substrate terminal of the transistors is not connected to the source terminal, the drain and source terminals are almost equal and the transistors start at a voltage difference between the gate terminal and one of these conducts.

-  One of the switching terminals of the transmission gate is raised to a voltage near the negative supply voltage, a positive gate-source voltage (gate-to-drain voltage) will occur at the NMOS, and the transistor begins to conduct, and the transmission gate conducts. 

-The voltage at one of the switching terminals of the transmission gate is now raised continuously up to the positive supply voltage potential, so the gate-source voltage is reduced (gate-drain voltage) on the NMOS, and this begins to turn off. 

-At the same time, the PMOS has a negative gate-source voltage (gate-to-drain voltage) builds up, whereby this transistor starts to conduct and the transmission gate switches. Thereby it is achieved that the transmission gate passes over the entire voltage range. Transmission gates are used in order to realize electronic switches and analog multiplexers.

- The relations between the inputs and the outputs are expressed as: 

```

Sum = XY´Z´ + X´YZ´ + XYZ + X´Y´Z
C_out= XY + YZ + XZ

```

- Transmission gate based implementation is similar to pass transistor with the difference that transmission gate logic uses both NMOS and PMOS transistors connected in parallel where as pass transistor logic uses only one type of transistor i.e. either NMOS or PMOS. 