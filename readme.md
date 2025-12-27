# 📚 Material da Disciplina de Banco de Dados

Repositório contendo todo o material relacionado à disciplina de **Banco de Dados**, incluindo slides, scripts SQL, exercícios, notebooks Python e referências bibliográficas.

---

## 🚀 Início Rápido

**Novo no projeto?** Escolha seu caminho:

| Guia | Quando usar |
|------|-------------|
| 📖 [README.md](README.md) | Visão geral do projeto (você está aqui) |
| ⚡ [QUICKSTART.md](QUICKSTART.md) | **Configuração rápida em 3 passos** |
| 📋 [SETUP.md](SETUP.md) | Guia detalhado passo a passo |
| 🔧 `setup.sh` ou `setup.bat` | **Scripts automáticos** (recomendado) |

### Configuração Automática (1 comando):

**Linux/Mac:**
```bash
./setup.sh
```

**Windows:**
```cmd
setup.bat
```

---

## 📋 Estrutura do Projeto

```
BancoDeDados/
├── 📄 readme.md                # Este arquivo
├── 📄 SETUP.md                 # Guia detalhado de instalação
├── 📄 QUICKSTART.md            # Guia rápido visual
├── 📄 requirements.txt         # Dependências Python
├── 🔧 setup.sh                 # Script automático (Linux/Mac)
├── 🔧 setup.bat                # Script automático (Windows)
├── 📁 venv/                    # Ambiente virtual (criado após setup)
└── 📁 BDI/
    ├── 📁 Notebook/            # Jupyter Notebooks
    │   └── 📓 main.ipynb       # Notebook sobre ORM e Engenharia Reversa
    ├── 📁 Books/               # Livros e referências
    ├── 📁 Scripts/             # Scripts SQL
    └── 📁 Slides/              # Apresentações das aulas
```

---

## 📁 Conteúdo

### 💻 Notebooks (Notebook/)

- **main.ipynb** - Notebook completo sobre:
  - Engenharia Reversa em Banco de Dados
  - ORM (Object-Relational Mapping)
  - SQLAlchemy, Peewee, Django ORM
  - Diagramas E-R (Entidade-Relacionamento)
  - Exemplos práticos
  - Comparação SQL vs ORM

### 📖 Livros (Books/)

- **Projeto_de_Banco_de_Dados_-_Carlos_Alberto_Heuser.pdf**
  - Referência principal da disciplina
  - Autor: Carlos Alberto Heuser
  - Cobertura completa sobre design e projeto de bancos de dados

### 🗂️ Scripts SQL (Scripts/)

Arquivos contendo scripts SQL para prática e exercícios:

| Arquivo | Descrição |
|---------|-----------|
| `BancoExercicioFinal.sql` | Exercício final da disciplina |
| `RespostaBancoExercicioFinal.sql` | Solução comentada do exercício final |
| `ScriptAula.sql` | Scripts utilizados durante as aulas |

**Exemplos de Conteúdo:**
- Criação de tabelas (Pessoa, Turma, Participante)
- Definição de chaves primárias e estrangeiras
- Relacionamentos entre tabelas

### 📊 Slides (Slides/)

Apresentações em PDF das aulas:

| Slide | Assunto |
|-------|---------|
| `Aula1.pdf` | Fundamentos de Banco de Dados |
| `Aula2.pdf` | Continuação dos conceitos |
| `Aula3.pdf` | Normalização de Bancos de Dados |
| `Aula4.pdf` | SQL |

## 🎓 Tópicos Abordados

- ✅ Conceitos fundamentais de Banco de Dados
- ✅ Design e Projeto de BD (ER/DER)
- ✅ Normalização (1FN, 2FN, 3FN, BCNF)
- ✅ SQL (DDL, DML, DQL)
- ✅ Integridade referencial e relacionamentos
- ✅ Chaves primárias e estrangeiras
- ✅ Exercícios práticos

## 🚀 Como Usar

### Executar Scripts SQL

1. **Usando PostgreSQL (recomendado):**
   ```bash
   psql -U seu_usuario -d seu_banco -f BDI/Scripts/ScriptAula.sql
   ```

2. **Usando pgAdmin:**
   - Abrir pgAdmin
   - Conectar ao servidor PostgreSQL
   - Abrir uma nova janela de Query
   - Copiar e colar o conteúdo do script
   - Executar (F5 ou botão Execute)

3. **Usando outro SGBD:**
   - Adapte os comandos SQL conforme a sintaxe do seu SGBD
   - Os scripts utilizam padrão ANSI SQL

### Estudar os Conceitos

1. Leia primeiro os slides de introdução (Aula1Nova.pdf)
2. Estude normalização (Aula Normalizacao.pdf)
3. Pratique com os scripts em Scripts/
4. Resolva o exercício final (BancoExercicioFinal.sql)
5. Compare com a resposta (RespostaBancoExercicioFinal.sql)
6. Consulte o livro de referência para aprofundamento

## 📚 Referências

- **Heuser, Carlos Alberto** - *Projeto de Banco de Dados*
  - Edição atualizada
  - Disponível em: `BDI/Books/`

## 🔧 Requisitos

- Python 3.8+ (para executar notebooks e scripts Python)
- PostgreSQL 10+ (para executar os scripts SQL)
- pgAdmin 4 (opcional, para gerenciamento visual)
- Um leitor de PDF (para os slides)

---

## ⚙️ Configuração do Ambiente de Desenvolvimento

### 📦 Passo a Passo: Criar Ambiente Virtual e Instalar Dependências

#### **1️⃣ Criar o Ambiente Virtual (venv)**

O ambiente virtual isola as dependências do projeto, evitando conflitos com outros projetos Python.

**No Linux/Mac:**
```bash
# Navegar até a pasta do projeto
cd /caminho/para/BancoDeDados

# Criar ambiente virtual chamado 'venv'
python3 -m venv venv

# Ativar o ambiente virtual
source venv/bin/activate
```

**No Windows (CMD):**
```cmd
# Navegar até a pasta do projeto
cd C:\caminho\para\BancoDeDados

# Criar ambiente virtual chamado 'venv'
python -m venv venv

# Ativar o ambiente virtual
venv\Scripts\activate
```

**No Windows (PowerShell):**
```powershell
# Navegar até a pasta do projeto
cd C:\caminho\para\BancoDeDados

# Criar ambiente virtual chamado 'venv'
python -m venv venv

# Ativar o ambiente virtual
venv\Scripts\Activate.ps1
```

> 💡 **Dica:** Quando o ambiente está ativado, você verá `(venv)` no início da linha de comando.

---

#### **2️⃣ Instalar as Bibliotecas do requirements.txt**

Com o ambiente virtual ativado, instale todas as dependências:

```bash
# Atualizar pip para a versão mais recente (recomendado)
pip install --upgrade pip

# Instalar todas as dependências do projeto
pip install -r requirements.txt
```

**Verificar instalação:**
```bash
# Listar pacotes instalados
pip list

# Verificar versão do SQLAlchemy
python -c "import sqlalchemy; print(sqlalchemy.__version__)"
```

---

#### **3️⃣ Configurar Jupyter Notebook (opcional)**

Para trabalhar com os notebooks interativos:

```bash
# Registrar o kernel do ambiente virtual no Jupyter
python -m ipykernel install --user --name=venv --display-name="Python (BancoDeDados)"

# Iniciar Jupyter Notebook
jupyter notebook
```

Ou usar o **VS Code** com a extensão **Jupyter** (recomendado).

---

#### **4️⃣ Desativar o Ambiente Virtual**

Quando terminar de trabalhar no projeto:

```bash
# Desativar o ambiente virtual
deactivate
```

---

### 📋 Bibliotecas Incluídas

O arquivo `requirements.txt` contém as seguintes bibliotecas:

| Biblioteca | Versão | Descrição |
|------------|--------|-----------|
| **SQLAlchemy** | 2.0+ | ORM completo para Python |
| **Peewee** | 3.17+ | ORM leve e simples |
| **Alembic** | 1.13+ | Ferramenta de migrações |
| **psycopg2-binary** | 2.9+ | Driver PostgreSQL |
| **Jupyter** | 1.0+ | Ambiente de notebooks |
| **ipykernel** | 6.27+ | Kernel Python para Jupyter |
| **python-dotenv** | 1.0+ | Gerenciamento de variáveis de ambiente |

---

### 🔍 Troubleshooting (Resolução de Problemas)

#### **Problema 1: "pip não encontrado"**
```bash
# Instalar pip (Ubuntu/Debian)
sudo apt-get install python3-pip

# Instalar pip (macOS)
python3 -m ensurepip --upgrade

# Instalar pip (Windows)
# Reinstale o Python marcando "Add Python to PATH"
```

#### **Problema 2: Erro ao instalar psycopg2**
```bash
# Ubuntu/Debian - Instalar dependências
sudo apt-get install libpq-dev python3-dev

# macOS - Usar Homebrew
brew install postgresql

# Windows - Usar psycopg2-binary (já incluído no requirements.txt)
```

#### **Problema 3: Permissão negada no PowerShell**
```powershell
# Executar como Administrador e permitir scripts
Set-ExecutionPolicy -ExecutionPolicy RemoteSigned -Scope CurrentUser
```

---

## 🔧 Requisitos (Resumo)

- PostgreSQL 10+ (para executar os scripts)
- pgAdmin 4 (opcional, para gerenciamento visual)
- Um leitor de PDF (para os slides)

## 📝 Notas Importantes

- Os scripts foram gerados com pgAdmin 4
- Compatíveis com PostgreSQL
- Seguem o padrão de nomenclatura em português
- Incluem comentários explicativos

## 🎯 Objetivos da Disciplina

Após estudar este material, você será capaz de:

✨ Entender os conceitos fundamentais de Banco de Dados  
✨ Projetar um banco de dados relacional eficiente  
✨ Aplicar regras de normalização  
✨ Escrever queries SQL complexas  
✨ Implementar relacionamentos e integridade referencial  
✨ Resolver problemas de design de BD  

## 📧 Informações

- **Disciplina:** Banco de Dados
- **Formato:** Presencial com material online
- **Referência:** Sistema BDI (Banco de Dados Integrado)

---

**Última atualização:** Dezembro de 2025  
**Autor/Organizador:** Material da disciplina de Banco de Dados
