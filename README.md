# 🚀 MANET Simulation: AODV vs. DSDV

Hi there! 👋 Welcome to the **MANET Simulation Project**! This project is all about exploring how Mobile Ad Hoc Networks (MANETs) work using two popular routing protocols: **AODV** (Ad hoc On-Demand Distance Vector) and **DSDV** (Destination-Sequenced Distance Vector). Ready to dive in? Let’s get started!

---
## 🌟 What’s Inside?
Here’s what makes this project awesome:
- **Dynamic Node Movement**: Nodes move randomly, just like real-world mobile networks!
- **Routing Protocols**: Compare the performance of AODV and DSDV in real time.
- **Visualizations**: Watch how data packets flow between nodes using cool animations. 
- **Performance Metrics**: Get stats like:
  - Number of successful ping replies. 📩
  - Number of lost pings. ❌


## 🗂 Project Structure
Here’s what you’ll find in this repo:
- **`omnetpp.ini`**: The brain of the simulation. Configures mobility, routing protocols, and visualization.
- **`ManetProcolsShowcase.ned`**: The heart of the network. Defines all the nodes and their roles.

---
## 🛠 Getting Started

### Prerequisites
Before you start, make sure you have:
1. **OMNeT++** (v5.x or later) installed.
2. The **INET Framework** set up in OMNeT++.

### Steps to Run the Simulation
1. Clone this repo:
   ```
   git clone <REPOSITORY_URL>
   cd <REPOSITORY_NAME>
   ```
2. Open the project in OMNeT++ IDE.
3. Build the project.
4. Run the simulation! 🎉

## 🎮 How to Play
1. Open omnetpp.ini in the OMNeT++ IDE.
2. Choose your configuration:
   - Aodv: Simulates the AODV protocol.
   - Dsdv: Simulates the DSDV protocol.
3. Hit the Run button, sit back, and enjoy the show! 🍿
4. Explore the metrics:
   - Ping Replies: Check how many pings successfully reached their destination.
   - Ping Losses: See how often the network struggled.

---
🔧 Customize Your Simulation!
Want to tweak things? Here’s how:
- Change Node Speeds: In omnetpp.ini, adjust the speed range:`
```
*.node*.mobility.speed = uniform(5mps, 15mps)
```
- Modify Simulation Time: Extend or shorten the simulation:
```
sim-time-limit = 1000s
```
- Experiment with Protocols: Play around with AODV and DSDV parameters:
  - AODV :
    ```
    *.*.routingApp.activeRouteTimeout = 1s
    ```
  - DSDV :
    ```
    *.*.routing.helloInterval = 100s
    ```

---
## 📊 Performance Metrics
This simulation tracks:

- ✅ Ping Replies: Successfully delivered pings.
- ❌ Ping Losses: Packets that didn’t make it.
Visualizations make it super easy to see these in action. Different protocols are color-coded:
- AODV RREQ: 🟡 Yellow
- Ping Messages: 🔵 Blue
- AODV RREP: ⚫ Dark Slate Gray
- AODV RERR: 🔴 Red
- Hello Messages: 🟢 Green

---
## 🤝 Contributing
Got ideas to make this project even better? Awesome! Feel free to:
1. Open an issue.
2. Submit a pull request.
3. Share your feedback.
Your contributions make a difference! ❤️

## 📜 License
This project is licensed under the Creative Commons Legal Code CC0 1.0 Universal. See the [LICENSE](LICENSE) file for details.😉

## ✉️ Need Help?
Got stuck or have questions? No worries! Create an issue or reach out. We’re here to help you out.

---
Happy simulating and have fun exploring the world of MANETs! 🌐✨
