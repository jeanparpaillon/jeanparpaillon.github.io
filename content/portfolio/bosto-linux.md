---
title: 'Bosto Linux'
slug: 'bosto-linux'
date: 2026-08-23T13:26:21+02:00
draft: true
client: ""
projectType: "Open Source"            # Open Source | Consulting | R&D | Product
status: "completed"        # completed | in_progress | planning
link: "https://github.com/jeanparpaillon/bosto_-_linux"
featured: false
description: "Linux full support for BOSTO pen tablet"
summary: ""
cover: ""
tags:                      # Technologies & themes
  - Linux
  - Open Source
roles:                     # Architect | Technical Lead | Product Owner | R&D Manager | Consultant
  - Technical Lead
domains:                   # Telecom | IoT | Embedded | Open Source | Cloud
  - Open Source
---

## Context

BOSTO pen tablets had limited Linux support and could not be fully configured through standard Linux desktop environments.

The objective of this project was to provide complete Linux integration, allowing the tablets to behave as standard graphics tablets and work transparently with the existing Linux desktop stack.

## What I did

I implemented the missing components required for full Linux support:
* Linux input driver support
* udev integration for automatic device detection and configuration
* integration with the standard Linux graphics-tablet stack
* Debian packaging for straightforward installation

The work required understanding the tablet's input protocol and integrating the device at the appropriate layers of the Linux input subsystem.

## Outcome

BOSTO tablets became fully supported through the standard Linux desktop stack.

Once installed, the tablet is automatically detected and can be configured using standard desktop tools, including **GNOME's built-in graphics tablet settings**, without requiring a BOSTO-specific configuration application.
