# Neo4j + AWS Embark: A Graph-Native RAG System on Kubernetes

## Overview

This project explores how to build an end-to-end **Graph-Native Retrieval-Augmented Generation (Graph RAG)** system using **Neo4j**, **AWS Embark**, **IBM Synthetic Fraud Dataset**, and **Kubernetes**. The goal is to simulate real-world fraud detection, create discovery assistants, chatbots, and trend analysis—powered by graph intelligence.

We integrate:

* **Structured and unstructured data** (from IBM Synthetic Financial Dataset)
* **Graph storage and querying** (Neo4j)
* **Vector stores** for embedding-based retrieval
* **ETL jobs and APIs** as Kubernetes pods
* **REST and GraphQL interfaces** via FastAPI
* **AWS infrastructure provisioning** with Terraform

---

## 🚀 Project Goal

Build a fraud detection graph system that allows advanced querying and generative AI integration, demonstrating:

* How to use **Neo4j** for storing fraud related data.
* How to embed unstructured text (e.g., fraud detection) into a **vector store**.
* How to combine **vector search + graph traversal** to power Retrieval-Augmented Generation (RAG).
* How to orchestrate everything in a **Kubernetes-based cloud-native setup** using AWS Embark.

---

## Why IBM Synthetic Financial Dataset
We chose **IBM Synthetic Financial Dataset** because:

* ✅ This dataset simulates mobile money transactions based on real-world patterns. Despite being synthetic, it maintains high fidelity to the types of transactions, fraud behaviors, and account structures seen in financial systems—without violating user privacy or compliance requirements.
* ✅ Rich in Relationships
   - The dataset inherently contains multiple entity relationships that graph databases like Neo4j excel at:
     - (Customer)-[OWNS]->(Account)
     - (Account)-[SENDS|RECEIVES]->(Transaction)
     - (Transaction)-[IS_FRAUD]->(Flag)
* ✅ Suitable Scale
  - At ~133 MB compressed, it’s small enough to be used for experimentation on local and cloud infrastructure, including Docker, WSL, and Kubernetes—without triggering cost concerns or data transfer issues.
* ✅ Versatile for AI Integration
  - Its structured fields and binary fraud labels make it an ideal candidate for building a Graph-RAG pipeline, integrating Neo4j with LLMs to explain why certain accounts or transactions are flagged as fraudulent.

---

## 🧱 Key Components

| Component         | Tech Stack        | Description                                    |
| ----------------- | ----------------- | ---------------------------------------------- |
| Knowledge Graph   | Neo4j             | Stores and queries fraud entities              |
| ETL Loader        | Python + FastAPI  | Extracts and transforms OpenAlex data          |
| Vector Store      | FAISS/Chroma      | Stores text embeddings of abstracts            |
| Graph RAG API     | FastAPI + GraphQL | REST/GraphQL interface for queries and RAG     |
| Infrastructure    | Terraform         | Provisions AWS (EKS, EC2, S3, IAM)             |
| Deployment        | Kubernetes (EKS)  | Manages all workloads as pods                  |
| Sidecar Container | Fluent Bit/Vector | Logging/monitoring pod next to main containers |

---

## 🧠 Learning Objectives

* Design a graph schema representing customer, transactions, fraud detections.
* Use Cypher to build powerful graph queries.
* Load both metadata and textual data (e.g., abstracts) into the system.
* Generate embeddings and store them in a vector DB.
* Implement a RAG API that uses both the graph and vector store for intelligent answers.
* Deploy the complete stack with Kubernetes.
* Automate cloud provisioning with Terraform.

---

## 🎯 Learning Objectives ++ (Graph-Native RAG with FastAPI + GraphQL)

* Terraform Scripts for AWS services
* Kubernetes Pods for:

  * Neo4j (graph database)
  * etl-loader (IBM Synthetic Fraud dataset importer)
  * rag-api (FastAPI with REST & GraphQL)
  * vector-store (FAISS/Chroma for embeddings)
* Sidecar pods for observability (e.g., Fluent Bit)

---

## 💡 Narrative Summary

> From ingestion to intelligent response, this system builds a scalable, explainable, and modular **Graph RAG pipeline**, enabling LLMs to reason over both text and graph knowledge.

A Kubernetes pod pulls OpenAlex data, parses entities and abstracts, pushes the graph to Neo4j, and vector embeddings to FAISS/Chroma. Queries are served through a unified FastAPI service (supporting GraphQL), combining Cypher traversal + semantic similarity. Everything runs on AWS via Terraform-managed infrastructure.

---

## 🔧 Tech Stack

* **Neo4j**: Graph database
* **Fraud**: Dataset for covid related data
* **FAISS/Chroma**: Vector database for semantic search
* **FastAPI**: API service for RAG
* **GraphQL**: For flexible query interaction
* **Kubernetes (EKS)**: Container orchestration
* **Terraform**: Infrastructure as code (EKS, S3, IAM)
* **Fluent Bit**: Log aggregation (sidecar)

---

## ✅ Next Steps (Dev Flow)

1. ✅ GitHub repo initialized 
2. ✅ Dataset selected: IBM Synthetic Fraud dataset
3. ✅ Schema design and Cypher loader WIP
4. 🏗️ Jupyter notebook for exploratory loading
5. 🔄 ETL pod YAML (K8s)
6. 🔄 Terraform script for AWS resources
7. 🔄 RAG API development
8. 🔄 Vector store integration
9. 🔄 E2E pipeline validation
10.  📦 Final Docker builds

---

Stay tuned for detailed setup guides, schema files, loader scripts, deployment manifests, and performance testing.

