# AIOps for Reliability: Evaluating Large Language Models for Automated Root Cause Analysis in Chaos Engineering

## Overview
This repository contains:
- **Metrics in CSV format**: Data collected from simulated infrastructure failures.
- **Research details**: Findings from the study on using Large Language Models (LLMs) for automated root cause analysis.
- **Terraform code**: Infrastructure-as-Code (IaC) scripts to provision the experimental setup in Google Cloud Platform (GCP).

## Research Summary
This study evaluates the capability of LLMs (GPT-4o, Gemini-1.5, and Mistral-small) in diagnosing system failures using observability metrics in a chaos engineering framework. The analysis includes eight real-world failure scenarios simulated in a controlled e-commerce environment.

Key findings:
- **LLMs achieve moderate accuracy (44–58%) in zero-shot settings.**
- **Few-shot prompting improves accuracy (60–74%),** showing that structured guidance enhances performance.
- **LLMs can assist in incident diagnosis, but human oversight remains crucial.**

The research highlights the potential of LLMs as co-pilots in infrastructure monitoring, rather than as full replacements for Site Reliability Engineers (SREs).

## Repository Structure
```
├── metrics/                     # CSV files containing experiment results
│   ├── scenario1.csv
│   ├── scenario2.csv
│   └── ...
├── terraform/                   # Terraform scripts for GCP infrastructure
│   ├── main.tf
│   ├── variables.tf
│   └── outputs.tf
├── paper/                       # Research documentation
│   ├── AIOps_RCA_study.pdf
│   └── supplementary_notes.txt
├── citation/                    # BibTeX entry for referencing the paper
│   └── citation.bib
├── README.md                    # This file
```

## Infrastructure Setup
The infrastructure consists of:
- **3 VMs** running a Django-based e-commerce application.
- **1 Redis instance** for caching.
- **2 PostgreSQL database instances** (primary and replica with synchronous replication).
- **Load balancer** for traffic distribution.

Terraform scripts automate the deployment of this setup in GCP.

### Deployment Instructions
1. Install [Terraform](https://developer.hashicorp.com/terraform/downloads).
2. Authenticate with Google Cloud:
   ```sh
   gcloud auth application-default login
   ```
3. Navigate to the Terraform directory:
   ```sh
   cd terraform
   ```
4. Initialize Terraform:
   ```sh
   terraform init
   ```
5. Apply the Terraform configuration:
   ```sh
   terraform apply -auto-approve
   ```

## Citation
If you use this work, please cite the paper as follows:

```bibtex
@inproceedings{Szandala2025AIOps,
  author    = {Tomasz Szandała},
  title     = {AIOps for Reliability: Evaluating Large Language Models for Automated Root Cause Analysis in Chaos Engineering},
  booktitle = {Proceedings of the ICCS 2025 Conference},
  year      = {2025},
  url       = {https://github.com/szandala/llms-chaos-engineering}
}
```

## License
This repository is released under the MIT License. See `LICENSE` for details.

## Contact
For any inquiries, please reach out to:
**Tomasz Szandała**
Email: [tomasz.szandala@pwr.edu.pl](mailto:tomasz.szandala@pwr.edu.pl)
GitHub: [szandala](https://github.com/szandala)
