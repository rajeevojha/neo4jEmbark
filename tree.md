neo4j-embark-graphrag/
│
├── README.md                      # Project overview
├── LICENSE
├── .gitignore
│
├── terraform/                     # AWS resource provisioning
│   ├── main.tf
│   ├── variables.tf
│   └── outputs.tf
│
├── k8s/                           # Kubernetes manifests
│   ├── neo4j/
│   │   └── neo4j-deployment.yaml
│   ├── etl-loader/
│   │   └── etl-loader-deployment.yaml
│   ├── rag-api/
│   │   └── rag-api-deployment.yaml
│   └── vector-store/
│       └── vector-store-deployment.yaml
│
├── data/                          # Raw or processed data files
│   ├── openalex/
│   │   ├── authors.json
│   │   ├── institutions.json
│   │   └── works.json
│   └── processed/
│       └── parsed_nodes.csv
│
├── docs/                          # Documentation
│   ├── schema.md                  # Entity-relationship schema
│   ├── cypher-loader.md          # How data is loaded into Neo4j
│   └── architecture.md           # System design and diagrams
│
├── fastapi-app/                  # REST/GraphQL API
│   ├── main.py
│   ├── routers/
│   │   ├── search.py
│   │   └── health.py
│   ├── services/
│   │   └── rag_service.py
│   └── requirements.txt
│
├── etl-loader/                   # ETL logic and Neo4j loaders
│   ├── main.py
│   ├── config.py
│   └── requirements.txt
│
├── vector-store/                 # Vector index & embeddings
│   ├── build_index.py
│   ├── query_index.py
│   └── requirements.txt
│
└── notebooks/                    # Jupyter experiments, prototyping
    ├── EDA.ipynb
    └── GraphRAG_Prototype.ipynb

