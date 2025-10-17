# 🗄️ Repositório de Bancos de Dados

Este repositório reúne os **arquivos de banco de dados** de vários projetos em desenvolvimento.  
Cada pasta representa um sistema ou aplicação diferente, contendo seus respectivos scripts, diagramas e dados de exemplo.

---

## 📂 Conteúdo dos Diretórios

Cada diretório de projeto contém normalmente os seguintes arquivos:

| Arquivo | Descrição |
|----------|------------|
| `schema.sql` | Script SQL de criação das tabelas e relacionamentos. |
| `diagram.png` *(opcional)* | Diagrama ER (Entidade-Relacionamento) do banco. |
| `README.md` | Documentação específica do banco de dados do projeto. |

---

## 🧩 Objetivo

Os arquivos deste repositório têm como propósito:

- Centralizar e padronizar os bancos de dados dos projetos;
- Facilitar o versionamento e manutenção das estruturas SQL;
- Permitir reutilização de padrões entre diferentes sistemas;
- Servir como documentação técnica e de apoio ao desenvolvimento.

---

## ⚙️ Como Usar

### 1️⃣ Clonar o repositório
```bash
git clone https://github.com/seuusuario/bancos-de-dados.git
```

### 2️⃣ Escolher o projeto desejado
Exemplo:
```bash
cd bancos-de-dados/eternal-games
```

### 3️⃣ Executar scripts SQL
Você pode importar os scripts diretamente em seu SGBD (MySQL, PostgreSQL, etc.):
```sql
SOURCE schema.sql;
SOURCE data.sql;
```

Ou deixar o **Spring Boot** executar automaticamente se os arquivos estiverem em:
```
src/main/resources/
```

---

## 🛠️ Tecnologias e Padrões

Os bancos de dados seguem a convenção:
- SQL compatível com **MySQL** ;
- Chaves primárias do tipo **BIGINT AUTO_INCREMENT**;
- Relacionamentos entre tabelas via **chaves estrangeiras (FK)**;

---

## 🧠 Boas Práticas

- Cada projeto deve conter **seu próprio README** descrevendo entidades e relacionamentos;  
- Mantenha os nomes das tabelas e colunas **em minúsculas** e **no singular**;  
- Evitar incluir dados sensíveis ou de produção em `data.sql`.

---

## 📅 Status

📦 Repositório em desenvolvimento contínuo.  
Novos bancos e scripts serão adicionados conforme evolução dos projetos.

---

**Gerenciado por:** Andressa 
**Versão:** 1.0  
📘 **Finalidade:** Armazenamento e documentação de bancos de dados de múltiplos sistemas.
