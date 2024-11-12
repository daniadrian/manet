# 📡 Wireless Network Simulation Project - MANET 🌐

Welcome to our Mobile Adhoc Network (MANET) simulation project! This project dives into the world of wireless networking, simulating how different protocols handle dynamic connections in various environments. The goal? To see how these protocols perform and discover insights about Quality of Service (QoS) parameters like delay, jitter, and packet loss.

⚠️ **Note:** This project is currently under development. Features, configurations, and results may change as we refine and expand the simulation.

## 🛠️ What We’re Building
We’re simulating MANETs—mobile networks where devices can communicate directly with each other without a central infrastructure. We’ll use network simulators like NS-2 or NS-3 to build scenarios with different routing protocols.

## 🧭 Key Protocols to Explore
- Proactive Protocols (e.g., DSDV, OLSR): These maintain routes at all times, even if they’re not needed.
- Reactive Protocols (e.g., AODV, DSR, TORA): These find routes only when necessary.

## 🔍 The Setup
- Simulation Area: 2000 x 2000 m², simulating an open environment.
- Network Protocol: IEEE 802.11b with data rates of 2 Mbps, 5.5 Mbps, and 11 Mbps.
- Movement Model: Random walk with a max speed of 2 m/s.
- Number of Nodes: 20, 50, 75, and 100.
- Simulation Duration: 1000 seconds.
- Traffic Type: CBR (Constant Bit Rate) with options for:
  - Single source-destination pairs
  - Multiple (5) source-destination pairs

## 🎯 Our Goals
We’re focusing on analyzing and comparing how well each protocol performs based on:

- Data Rates
- Number of Nodes
- Source-Destination Pair Count

For each setup, we’ll measure:
- Delay (how long it takes for data to reach its destination)
- Jitter (the variation in packet delay)
- Packet Loss (the percentage of data packets lost)

## 📋 License
This project is licensed under the Creative Commons Legal Code CC0 1.0 Universal. See the [LICENSE](LICENSE) file for details.

Let’s explore MANETs and see what these networks can teach us about real-world connections! 🌐🚀
