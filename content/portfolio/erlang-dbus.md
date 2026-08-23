---
title: 'Erlang D-Bus'
slug: 'erlang-dbus'
date: 
draft: false
client: ""
projectType: "Open Source"
status: "in_progress"        # completed | in_progress | planning
link: "https://github.com/jeanparpaillon/erlang-dbus"
featured: false
description: "Pure Erlang implementation of D-Bus protocol"
summary: ""
cover: ""
tags:                      # Technologies & themes
  - Linux
  - Open Source
  - erlang
  - Distributed Systems
roles:                     # Architect | Technical Lead | Product Owner | R&D Manager | Consultant
  - Architect
  - Technical Lead
domains:                   # Telecom | IoT | Embedded | Open Source | Cloud
  - Open Source
# Insert a recommendation in the body with {{< recommendation "file-name" >}}
---

## Context

D-Bus is a message bus and inter-process communication (IPC) system widely used
on Linux desktops and embedded systems. It provides a language-independent,
object-oriented RPC mechanism that allows applications and system services to
communicate through well-defined interfaces.

The objective of Erlang D-Bus is to provide a native Erlang implementation of
the protocol, allowing Erlang applications to communicate directly with D-Bus
services and to expose Erlang processes themselves as D-Bus services.

## What I did

I developed and maintained a native Erlang implementation of the D-Bus protocol,
designing the library around Erlang/OTP concepts rather than simply wrapping an
external D-Bus library.

This work combined several areas of software architecture:
- binary protocol implementation
- IPC and distributed communication
- asynchronous message handling
- object/RPC abstraction
- Erlang/OTP behaviours and supervision
- API design
- interoperability with the Linux system stack

## Outcome

Erlang D-Bus provides a reusable open-source D-Bus implementation for the Erlang
ecosystem.

The library supports both D-Bus clients and services, with connections over UNIX
sockets and TCP. Client and service functionality are covered by tests, and the
repository also provides API documentation, a manual and example services.

The project is published under the Apache 2.0 license and has attracted
community adoption and contributions.

On GitHub:
- 55 stars
- 27 forks
- 448 commits

The project is also referenced by Erlang ecosystem resource lists, demonstrating its use as a D-Bus solution for Erlang applications.