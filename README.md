# Claude Workflow Kit

Um workspace estruturado para usar Claude Code com `CLAUDE.md`, agentes, comandos, workflows, revisão e execução assistida por IA.

Este projeto não fornece apenas um esqueleto de código para iniciar uma aplicação. Ele define boas práticas operacionais para implementação responsável de sistemas em produção utilizando AI.

Ele é um kit de trabalho para definir uma forma mais organizada de usar Claude Code em projetos de software.

## Objetivo

O objetivo do Claude Workflow Kit é transformar o Claude Code em um assistente de engenharia mais disciplinado, previsível e orientado por processo.

Em vez de usar prompts soltos, o projeto passa a ter:

- contexto do projeto;
- regras de execução;
- agentes especializados;
- comandos reutilizáveis;
- workflows por tipo de tarefa;
- documentação mínima de arquitetura;
- processo de revisão;
- processo de teste;
- processo de entrega.

## Como pensar neste kit

A ideia é simples:

```txt
Contexto → Planejamento → Execução → Teste → Revisão → Documentação → Entrega
```

O Claude Code continua sendo uma IA.

O kit apenas reduz improviso, aumenta contexto e cria um método repetível.

## O que este kit cria no projeto

Depois da instalação, o projeto deve ficar assim:

```txt
meu-projeto/
│
├── CLAUDE.md
│
├── .claude/
│   ├── agents/
│   │   ├── architect.md
│   │   ├── backend-engineer.md
│   │   ├── frontend-engineer.md
│   │   ├── qa-engineer.md
│   │   ├── code-reviewer.md
│   │   ├── devops-engineer.md
│   │   ├── security-reviewer.md
│   │   ├── product-analyst.md
│   │   └── documentation-writer.md
│   │
│   ├── commands/
│   │   ├── plan.md
│   │   ├── implement.md
│   │   ├── review.md
│   │   ├── test.md
│   │   ├── refactor.md
│   │   ├── commit.md
│   │   └── update-context.md
│   │
│   └── workflows/
│       ├── feature-development.md
│       ├── bugfix.md
│       ├── refactor.md
│       ├── technical-design.md
│       └── release-review.md
│
├── docs/
│   ├── PROJECT_CONTEXT.md
│   ├── ARCHITECTURE.md
│   ├── DECISIONS.md
│   ├── TESTING_STRATEGY.md
│   └── DELIVERY_PROCESS.md
│
└── prompts/
    ├── 01-install-claude-workflow-kit.md
    ├── 02-generate-project-context.md
    ├── 03-generate-agents.md
    ├── 04-generate-workflows.md
    └── 05-review-installation.md
```

## Estrutura deste repositório

```txt
claude-workflow-kit/
│
├── README.md
├── LICENSE
├── CHANGELOG.md
│
├── kit/
│   ├── base/
│   ├── agents/
│   ├── commands/
│   ├── workflows/
│   ├── stacks/
│   └── prompts/
│
└── scripts/
    └── build-zip.sh
```

## Primeira versão do kit

Esta primeira versão já entrega a estrutura operacional principal para instalar o Claude Workflow Kit em projetos de software.

Inclui:

- documentação base do projeto;
- princípios de engenharia;
- definição de pronto;
- definição de concluído;
- checklist de revisão;
- contexto de projeto;
- agentes especializados;
- comandos operacionais;
- workflows por tipo de tarefa;
- notas por stack;
- prompts de instalação e geração de contexto;
- script para gerar o pacote ZIP de distribuição.

### Agentes incluídos

- arquitetura;
- backend;
- frontend;
- QA;
- code review;
- DevOps;
- segurança;
- produto;
- documentação.

### Comandos incluídos

- planejar;
- implementar;
- revisar;
- testar;
- refatorar;
- gerar commit;
- atualizar contexto.

### Distribuição

O repositório inclui o script:

```txt
scripts/build-zip.sh
```

A pasta `zip/` e o arquivo `zip/claude-workflow-kit.zip` são artefatos gerados pelo script, não arquivos versionados obrigatórios.

## Instalação em um projeto vazio

Use este fluxo quando o projeto ainda não tem estrutura, stack ou código inicial.

### Passo 1 — Baixar o ZIP

Baixe o arquivo:

```txt
claude-workflow-kit.zip
```

### Passo 2 — Extrair na raiz do projeto

Exemplo:

```bash
mkdir meu-projeto
cd meu-projeto
unzip ../claude-workflow-kit.zip
```

### Passo 3 — Abrir o Claude Code no projeto

```bash
claude
```

### Passo 4 — Rodar o prompt de instalação

Abra o arquivo:

```txt
kit/prompts/install-in-empty-project.md
```

Cole o conteúdo no Claude Code.

### Passo 5 — Claude adapta tudo para a stack e escopo

O Claude deve:

1. entender que o projeto está vazio;
2. perguntar somente o contexto mínimo necessário;
3. identificar stack desejada;
4. criar `CLAUDE.md`;
5. criar `.claude/agents`;
6. criar `.claude/commands`;
7. criar `.claude/workflows`;
8. criar `docs/`;
9. criar `prompts/`;
10. não implementar código de aplicação ainda.

## Instalação em um projeto existente

Use este fluxo quando o projeto já tem código, README, dependências ou estrutura inicial.

### Passo 1 — Baixar o ZIP

Baixe o arquivo:

```txt
claude-workflow-kit.zip
```

### Passo 2 — Extrair na raiz do projeto

Exemplo:

```bash
cd meu-projeto-existente
unzip ../claude-workflow-kit.zip
```

### Passo 3 — Abrir o Claude Code no projeto

```bash
claude
```

### Passo 4 — Rodar o prompt de instalação

Abra o arquivo:

```txt
kit/prompts/install-in-existing-project.md
```

Cole o conteúdo no Claude Code.

### Passo 5 — Claude adapta tudo para a stack e escopo

O Claude deve:

1. analisar a estrutura atual;
2. detectar linguagens, frameworks e ferramentas;
3. identificar comandos reais de build, teste e lint;
4. avaliar sinais de SOLID, Clean Architecture e separação de responsabilidades;
5. sugerir melhorias arquiteturais sem alterar código de aplicação;
6. criar ou atualizar `CLAUDE.md`;
7. criar agentes úteis para a stack real;
8. criar comandos compatíveis com o projeto;
9. criar workflows adequados;
10. documentar premissas;
11. não alterar regra de negócio;
12. não refatorar código existente.

## Regra principal

A instalação do Claude Workflow Kit não deve criar features.

Ela deve criar apenas a estrutura de trabalho para o Claude Code operar melhor dentro do projeto.

## Fluxo recomendado depois da instalação

Depois de instalar o kit, use este fluxo:

```txt
1. Explicar a feature ou problema
2. Rodar /plan
3. Revisar o plano
4. Autorizar implementação
5. Rodar /implement
6. Rodar /test
7. Rodar /review
8. Rodar /commit
```

## Princípios

- Entender antes de alterar.
- Planejar antes de implementar.
- Implementar em passos pequenos.
- Evitar refatoração fora de escopo.
- Preservar padrões existentes.
- Avaliar aderência a SOLID e Clean Architecture quando analisar projetos existentes.
- Sugerir melhorias arquiteturais sem refatorar fora de escopo.
- Rodar testes quando possível.
- Revisar antes de concluir.
- Documentar decisões importantes.
- Não inventar regra de negócio.
- Não adicionar dependências sem justificativa.

## Quando usar

Use este kit para:

- projeto novo;
- projeto legado;
- MVP;
- SaaS;
- API;
- frontend;
- monorepo;
- backend;
- sistema interno;
- ferramenta de dados;
- produto com IA;
- projeto pessoal;
- projeto profissional.

## Quando não usar

Não use este kit esperando que ele crie uma aplicação pronta.

Ele não substitui arquitetura, produto, engenharia ou revisão humana.

Ele organiza o trabalho da IA dentro do projeto.

## Gerar o ZIP

Para gerar o pacote de distribuição:

```bash
chmod +x scripts/build-zip.sh
./scripts/build-zip.sh
```

O arquivo será criado em:

```txt
zip/claude-workflow-kit.zip
```

## Licença

MIT.