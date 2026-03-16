# A "Epidemia" de Partos Cesáreos no Brasil

> **Projeto Aplicado II** — Universidade Presbiteriana Mackenzie.

---

## 👥 Autores
* **Giovanna da Silva Santos - 10747002**
* **Julia Petra Teixeira Chaves - 10746236**
* **Larissa Jacinto Bispo Christofoletti - 10747730**

---

## 📌 Visão Geral
O Brasil apresenta uma das maiores taxas de cesáreas do mundo, superando os **55%** do total de nascimentos. A Organização Mundial da Saúde (OMS) recomenda um limite de **15%**. Este projeto investiga se a decisão pela via de parto é influenciada por fatores socioeconômicos e operacionais, indo além da necessidade clínica.

## 🎯 Objetivo do Projeto
O objetivo geral é desenvolver um **modelo analítico e preditivo** sobre a incidência de partos cesáreos no Brasil. Utilizaremos a base de dados do **SINASC** para identificar os principais fatores (socioeconômicos, clínicos e operacionais) que induzem essa via de parto.

## 📊 A Base de Dados
Os dados são provenientes do **Sistema de Informação sobre Nascidos Vivos (SINASC)**, gerido pelo Ministério da Saúde.

### Principais Variáveis Analisadas:
* **Alvo (Target):** `PARTO` (Tipo de parto: 1. Vaginal; 2. Cesáreo).
* **Socioeconômicas:** Escolaridade da mãe (`ESCMAE`), idade (`IDADEMAE`), raça (`RACACOR`) e estado civil.
* **Clínicas:** Número de consultas pré-natal (`CONSULTAS`), semanas de gestação (`GESTACAO`) e filhos vivos.
* **Operacionais:** Data do nascimento (`DATAOCOR`) e local do nascimento (`LOCNASC`).

---

## 📅 Cronograma de Desenvolvimento
| Etapa | Descrição | Prazo Final |
| :--- | :--- | :--- |
| **Etapa 1** | Definição da problemática e exploração do dataset | **16/03/2026** |
| **Etapa 2** | Limpeza de dados e Análise Exploratória (EDA) | **30/03/2026** |
| **Etapa 3** | Entrega do método analítico e medidas de acurácia | **27/04/2026** |
| **Etapa 4** | Conclusão do projeto e storytelling | **25/05/2026** |

---

## 📂 Organização do Repositório
* `/data`: Bases de dados originais e tratadas.
* `/docs`: Documentação oficial e referências.
* `/notebooks`: Jupyter Notebooks com análises e modelos.
* `/scripts`: Códigos de apoio e limpeza.
