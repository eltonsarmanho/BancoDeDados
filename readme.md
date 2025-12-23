# 📚 Material da Disciplina de Banco de Dados

Repositório contendo todo o material relacionado à disciplina de **Banco de Dados**, incluindo slides, scripts SQL, exercícios e referências bibliográficas.

## 📋 Estrutura do Projeto

```
BancoDeDados/
├── readme.md
└── BDI/
    ├── Books/               # Livros e referências
    ├── Scripts/             # Scripts SQL
    └── Slides/              # Apresentações das aulas
```

## 📁 Conteúdo

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
