# WombatX Exchange Core

---

This repository contains the core smart contracts for the WombatX V1
Protocol.

## High-level System Overview

!["WombatX High-level System Design"](/diagrams/high-level-design.png "High-level System Design")

## Protocol Design

WombatX protocol adopts a monolithic smart contract design where a single implementation contract, i.e. `Pool.sol`, inherits multiple contracts for extended functionalities, such as `ownable`, `initializable`, `reentrancy guards`, `pausable`, and `core algorithm` contracts. These inherited contracts provide access-controlled functions, and the ability to `pause` or `upgrade` the implementation contract (_also serves as main entry point of WombatX protocol_).
