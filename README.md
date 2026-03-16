# A "Epidemia" de Partos Cesáreos no Brasil

> [cite_start]**Projeto Aplicado II** - Universidade Presbiteriana Mackenzie.

## Autores
* [cite_start]Giovanna da Silva Santos [cite: 2]
* [cite_start]Julia Petra Teixeira Chaves [cite: 3]
* [cite_start]Larissa Jacinto Bispo Christofoletti [cite: 4]
  
## Visão Geral
O Brasil apresenta uma das maiores taxas de cesáreas do mundo (>55%), contrastando com o limite de 15% recomendado pela OMS. Este projeto investiga se a decisão pela via de parto é influenciada por fatores socioeconômicos e operacionais do sistema de saúde, indo além da necessidade clínica.

## Objetivo do Projeto
[cite_start]O objetivo geral é desenvolver um **modelo analítico e preditivo** sobre a incidência de partos cesáreos no Brasil[cite: 43]. [cite_start]Utilizaremos a base de dados do **SINASC** para identificar os principais fatores (socioeconômicos, clínicos e operacionais) que induzem essa via de parto[cite: 32, 43].

[cite_start]No Brasil, as taxas de cesáreas superam os **55%**, enquanto a recomendação da OMS é de apenas **15%**[cite: 13].

## A Base de Dados
[cite_start]Os dados são provenientes do **Sistema de Informação sobre Nascidos Vivos (SINASC)**, gerido pelo Ministério da Saúde[cite: 21, 24].

### [cite_start]Principais Variáveis Analisadas[cite: 55, 58, 63, 67]:
* **Alvo (Target):** `tipoParto` (Vaginal ou Cesáreo).
* **Socioeconômicas:** Escolaridade, idade, raça e estado civil da mãe.
* **Clínicas:** Número de consultas pré-natal, semanas de gestação e filhos vivos.
* **Operacionais:** Data e local do nascimento.

## [cite_start] Cronograma de Desenvolvimento 
- [x] **Etapa 1 (16/03):** Definição da problemática e exploração do dataset.
- [ ] **Etapa 2 (30/03):** Limpeza de dados e Análise Exploratória (EDA).
- [ ] **Etapa 3 (27/04):** Entrega do método analítico e medidas de acurácia.
- [ ] **Etapa 4 (25/05):** Conclusão do projeto e storytelling.

### Organização do Repositório
* `/data`: Bases originais e tratadas.
* [cite_start]`/docs`: Documentação oficial e referências[cite: 92].
* `/notebooks`: Jupyter Notebooks com análises e modelos.
* `/scripts`: Documentos de apoio e códigos de limpeza.
