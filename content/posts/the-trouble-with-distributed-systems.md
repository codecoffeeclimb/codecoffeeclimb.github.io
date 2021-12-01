---
title: "The Trouble With Distributed Systems"
date: 2021-12-01T08:49:59-08:00
draft: false
---
In a distributed software system, computers can only communicate through network. Here are the key issues in a distributed software system that is not present in non-distributed ones:

- Network is intrinsically unrealiable and network calls are unbounded.
- Clocks on different nodes are not in sync and there is no global clock time can be obtained as ground truth.
- Nodes and processes can fail or pause at any time for any reason.

However, we still assume that the behavior of nodes and software will follow pre-defined protocols and Byzantine fault are generally not considered. Single node's state and communication to others can not be trusted, therefore the state of system can only be determined by the consensus of observations from majority of the nodes.

