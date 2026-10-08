# 🎵 Harmony Music School - Banco de Dados Relacional

Este repositório contém a solução completa para o gerenciamento de dados da **Harmony Music School**, desenvolvida como entrega da **Atividade III - BCD SEDUC DEST1**.

---

## 📌 Sobre o Projeto

A **Harmony Music School** enfrentava problemas de desorganização, inconsistência financeira e falta de histórico de matrículas devido ao uso de planilhas manuais.

Esta solução relacional centraliza o cadastro de **alunos**, **professores**, **responsáveis**, **planos contratados** e o histórico de **pagamentos**, garantindo a integridade dos dados e facilitando a geração de relatórios gerenciais.

---

## 🛠️ Tecnologias Utilizadas

* **SGBD:** MySQL / MariaDB
* **Modelagem:** Modelo Relacional (3ª Forma Normal)
* **Cloud Hosting:** Aiven Cloud Database
* **Ferramenta de Gestão:** MySQL Workbench / DBeaver

---

## 📂 Estrutura de Arquivos

* `harmony_music_school_Alunos.sql`: Estrutura e inserções da tabela de Alunos.
* `harmony_music_school_Professor.sql`: Estrutura e inserções da tabela de Professores.
* `harmony_music_school_Responsavel.sql`: Estrutura e inserções da tabela de Responsáveis.
* `harmony_music_school_Planos.sql`: Estrutura e inserções dos Planos.
* `harmony_music_school_Pagamentos.sql`: Histórico e registros de Pagamentos.
* `harmony_music_school_Aluno_Professor.sql`: Tabela relacional entre Alunos e Professores.
* `harmony_music_school_Aluno_Responsavel.sql`: Tabela relacional entre Alunos e Responsáveis.
* `apresentacao.html`: Apresentação interativa do projeto.

---

## 🚀 Como Executar o Projeto Localmente

1. Certifique-se de ter o MySQL Server instalado localmente ou utilize uma instância na nuvem (ex.: Aiven).
2. Abra os arquivos `.sql` no MySQL Workbench ou no seu cliente SQL de preferência.
3. Execute os scripts para criar a estrutura das tabelas e carregar os dados.
