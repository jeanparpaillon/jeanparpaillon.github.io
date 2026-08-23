---
title: 'Ecto3 Mnesia'
slug: 'ecto3-mnesia'
date: 
draft: false
client: ""
projectType: "Open Source"            # Open Source | Consulting | R&D | Product
status: "in_progress"        # completed | in_progress | planning
link: "https://github.com/jeanparpaillon/ecto3_mnesia"
featured: false
description: "Mnesia backend for Ecto"
summary: ""
cover: ""
tags:                      # Technologies & themes
  - Open Source
  - elixir
  - Distributed Systems
roles:                     # Architect | Technical Lead | Product Owner | R&D Manager | Consultant
  - Technical Lead
domains:                   # Telecom | IoT | Embedded | Open Source | Cloud
  - Open Source
  - IoT
---

## Context

**Ecto** is the standard persistence and query abstraction used by Elixir applications, providing schemas, queries, changesets and a common repository API.

**Mnesia** is Erlang/OTP's distributed database management system. Unlike conventional SQL databases, it is tightly integrated with the Erlang runtime and supports distributed and replicated data across Erlang nodes.

This makes Mnesia particularly interesting for distributed, embedded and IoT applications, but its native programming model differs significantly from Ecto's abstractions.

The objective of **Ecto3 Mnesia** is to bridge these two models by providing a Mnesia backend for Ecto.

## What I did

I developed an Ecto adapter allowing Elixir applications to use Mnesia through standard Ecto abstractions.

The work focused on mapping Ecto's persistence model and query mechanisms onto Mnesia while preserving the characteristics of the underlying Erlang database.

This involved working across several layers:

* Ecto adapter architecture
* schema and data-type mapping
* query translation
* CRUD operations
* transaction handling
* Mnesia table management
* integration with Elixir/OTP applications

A key architectural challenge was reconciling two different database models: Ecto provides an abstraction largely shaped around conventional database operations, while Mnesia is designed around Erlang terms, transactions and distributed tables.

The adapter provides an idiomatic Elixir interface while retaining Mnesia as the underlying storage engine.

## Outcome

**Ecto3 Mnesia** provides an open-source persistence backend enabling Elixir applications to combine the familiar Ecto programming model with Erlang/OTP's native Mnesia database.

It makes Mnesia easier to integrate into applications already structured around Ecto, while avoiding the need for an external database service.

The project is particularly relevant to **distributed, embedded and IoT architectures**, where keeping persistence within the Erlang/OTP runtime can provide a lightweight alternative to deploying and operating a separate database infrastructure.
