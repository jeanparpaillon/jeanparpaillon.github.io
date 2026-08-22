---
title: "ZOLA Electric"
slug: "zola-electric"
date: 2023-05-01
draft: false
client: "ZOLA Electric"
projectType: "Consulting"
status: "completed"
link: ""
featured: true
description: "Communication gateway for off-grid solar energy systems, in Elixir on embedded hardware."
summary: "Architecture, design and development of an Elixir-based communication gateway for off-grid, sustainable energy systems -- from the CAN bus up to the cloud protocols."
cover: ""
tags:
  - Elixir
  - Nerves
  - Embedded
  - Buildroot
  - CAN bus
  - Protobuf
  - CoAP
  - 6LoWPAN
  - SNMP
  - Mnesia
  - Architecture
roles:
  - Architect
  - Technical Lead
domains:
  - Embedded
  - IoT
  - Energy
---

## Context

ZOLA Electric builds off-grid solar energy systems for markets where the grid is
unreliable or absent. Their devices -- panels, batteries, inverters -- have to be
monitored and controlled remotely, over intermittent and expensive links, on
hardware with a tight power and memory budget.

## What I did

Lead developer and architect of the PV monitoring and control gateway:

- Architecture and design of an Elixir/Nerves communication gateway running on
  the embedded platform.
- Device-side integration over CAN bus and 6LoWPAN, telemetry encoding with
  Protobuf, transport over CoAP and SNMP.
- Local persistence and replication with Mnesia, so the gateway keeps working
  through connectivity outages.
- Embedded Linux build and integration with Buildroot.

## Outcome

A single gateway codebase covering the whole path from field devices to the
cloud back end, deployed on off-grid systems in production.
