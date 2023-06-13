Traffic Control System

This repository contains an implementation of a traffic control system using Promela (Process Meta Language). The system models the behavior of traffic lights and handles requests from vehicles and pedestrians at an intersection.

## Problem
Traffic control is a critical aspect of urban planning and transportation management. Efficiently managing the flow of vehicles and ensuring the safety of pedestrians is essential. This project aims to simulate a traffic control system and explore different strategies for coordinating traffic flow and pedestrian crossings.

## Promela Language
Promela is a modeling language used for formal verification of concurrent systems. It allows for the description of concurrent processes, message passing between processes, and synchronization mechanisms. In this project, Promela is used to model the behavior of the traffic control system, define the processes for traffic controllers, and simulate the interaction between vehicles, pedestrians, and traffic lights.

## Properties
The traffic control system implementation includes properties expressed using Linear Temporal Logic (LTL) formulas. These properties capture safety and liveness aspects of the system and can be used for formal verification. Some of the properties defined in the code include:
- Safety property: Ensuring that only one direction is allowed to proceed at a time
- Liveness property: Guaranteeing that if a vehicle or pedestrian is waiting at a red light, eventually the light will turn green for their direction
- Fairness property: Ensuring that all requests for different directions and pedestrians are eventually serviced in a fair manner

## Usage
To run the traffic control simulation and explore the system behavior, follow these steps:
1. Install the Spin model checker (http://spinroot.com/spin/Man/README.html) on your machine.
2. Clone this repository: `git clone https://github.com/your-username/traffic-control-system.git`
3. Change into the repository directory: `cd traffic-control-system`
4. Run the simulation using Spin: `spin -run main.pml`
5. Observe the console output to see the actions and interactions of the traffic controllers, vehicles, and pedestrians.
6. To check the system properties, you can use Spin's verification capabilities. For example, to check the safety property, use the command: `spin -run -ltl p1 main.pml`, where `p1` is the name of the property.

Feel free to explore the code, modify the system parameters, and experiment with different traffic scenarios. Contributions and improvements are welcome!
