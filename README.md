# Neo4j + AWS Embark: A Graph-Native RAG System on Kubernetes

## Overview

This project explores how to build an end-to-end **Graph-Native Retrieval-Augmented Generation (Graph RAG)** system using **Neo4j**, **AWS Embark**, **OpenAlex Dataset**, and **Kubernetes**. The goal is to simulate real-world academic or enterprise scenarios—like discovery assistants, chatbots, and trend analysis—powered by graph intelligence.

We integrate:

* **Structured and unstructured data** (from OpenAlex)
* **Graph storage and querying** (Neo4j)
* **Vector stores** for embedding-based retrieval
* **ETL jobs and APIs** as Kubernetes pods
* **REST and GraphQL interfaces** via FastAPI
* **AWS infrastructure provisioning** with Terraform

---

## 🚀 Project Goal

Build a scalable academic knowledge graph system that allows advanced querying and generative AI integration, demonstrating:

* How to use **Neo4j** for storing scholarly data.
* How to embed unstructured text (e.g., paper abstracts) into a **vector store**.
* How to combine **vector search + graph traversal** to power Retrieval-Augmented Generation (RAG).
* How to orchestrate everything in a **Kubernetes-based cloud-native setup** using AWS Embark.

---

## Why OpenAlex?

We chose **OpenAlex** because:

* ✅ It provides a **rich, real-world academic graph**: authors, papers, institutions, topics, and citations.
* ✅ It includes **structured data** (metadata) and **unstructured data** (abstracts).
* ✅ It has an **open license**, making it perfect for academic and experimental use.
* ✅ It simulates **enterprise use cases** like research assistants and knowledge discovery systems.

---

## 🧱 Key Components

| Component         | Tech Stack        | Description                                    |
| ----------------- | ----------------- | ---------------------------------------------- |
| Knowledge Graph   | Neo4j             | Stores and queries scholarly entities          |
| ETL Loader        | Python + FastAPI  | Extracts and transforms OpenAlex data          |
| Vector Store      | FAISS/Chroma      | Stores text embeddings of abstracts            |
| Graph RAG API     | FastAPI + GraphQL | REST/GraphQL interface for queries and RAG     |
| Infrastructure    | Terraform         | Provisions AWS (EKS, EC2, S3, IAM)             |
| Deployment        | Kubernetes (EKS)  | Manages all workloads as pods                  |
| Sidecar Container | Fluent Bit/Vector | Logging/monitoring pod next to main containers |

---

## 🧠 Learning Objectives

* Design a graph schema representing papers, authors, institutions, and citations.
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
  * etl-loader (OpenAlex importer)
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
* **OpenAlex**: Dataset for academic metadata and abstracts
* **FAISS/Chroma**: Vector database for semantic search
* **FastAPI**: API service for RAG
* **GraphQL**: For flexible query interaction
* **Kubernetes (EKS)**: Container orchestration
* **Terraform**: Infrastructure as code (EKS, S3, IAM)
* **Fluent Bit**: Log aggregation (sidecar)

---

## ✅ Next Steps (Dev Flow)

1. ✅ GitHub repo initialized - tree.md gives the planned folder structure
2. ✅ Dataset selected: OpenAlex
3. ✅ Schema design and Cypher loader WIP
4. 🏗️ Jupyter notebook for exploratory loading
5. 🔄 ETL pod YAML (K8s)
6. 🔄 Terraform script for AWS resources
7. 🔄 RAG API development
8. 🔄 Vector store integration
9. 🔄 E2E pipeline validation
10. 📦 Final Docker builds

---

Stay tuned for detailed setup guides, schema files, loader scripts, deployment manifests, and performance testing.

