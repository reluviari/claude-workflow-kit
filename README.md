# Claude Workflow Kit

Um kit operacional para usar Claude Code com contexto, agentes, comandos, workflows, revisão e execução assistida por IA.

Este projeto não é um boilerplate de aplicação. Ele define uma disciplina operacional de IA para estruturar como o Claude Code entende contexto, planeja, implementa, testa, revisa e entrega mudanças em projetos de software.

## Relação com `/init`

Este kit não substitui o comando `/init` do Claude Code. Ele complementa o bootstrap nativo com uma camada de método, governança e execução.

> **O `/init` dá consciência do projeto.**  
> **O Claude Workflow Kit dá disciplina operacional.**

Use os dois em conjunto:

```txt
1. Rode /init para o Claude entender o projeto real, se desejar.
2. Instale o Claude Workflow Kit para adicionar agentes, comandos, workflows e critérios de qualidade.
3. Cole o prompt de instalação gerado no Claude Code.
4. O prompt reconcilia automaticamente o CLAUDE.md existente com a disciplina operacional do kit.
```

Em outras palavras: `/init` descobre o contexto; o Claude Workflow Kit padroniza como a IA deve trabalhar dentro desse contexto, sem exigir uma etapa manual separada de reconciliação.

## Quickstart

### Projeto existente

Use este fluxo quando o projeto já tem código, README, dependências ou estrutura inicial.

```bash
cd meu-projeto
curl -fsSL https://raw.githubusercontent.com/reluviari/claude-workflow-kit/master/scripts/install.sh | bash -s -- existing
claude
```

Depois, cole no Claude Code o conteúdo gerado em:

```txt
.claude-workflow-kit/install-claude-workflow-kit.md
```

O Claude deve analisar a estrutura atual, detectar a stack, identificar comandos reais de build/test/lint, avaliar sinais de SOLID e Clean Architecture, reconciliar automaticamente `CLAUDE.md` existente com a disciplina operacional do kit, sugerir melhorias arquiteturais e criar o workspace adaptado ao projeto.

### Projeto vazio

Use este fluxo quando o projeto ainda não tem estrutura, stack ou código inicial.

```bash
mkdir meu-projeto
cd meu-projeto
curl -fsSL https://raw.githubusercontent.com/reluviari/claude-workflow-kit/master/scripts/install.sh | bash -s -- empty
claude
```

Depois, cole no Claude Code o conteúdo gerado em:

```txt
.claude-workflow-kit/install-claude-workflow-kit.md
```

O Claude deve perguntar apenas o contexto mínimo necessário, criar ou reconciliar `CLAUDE.md` automaticamente e gerar a estrutura operacional do projeto sem implementar código de aplicação.

## O que o kit cria

Depois da instalação e adaptação pelo Claude Code, o projeto deve ficar assim:

```txt
meu-projeto/
│
├── CLAUDE.md
│
├── README_SUGGESTED_CLAUDE.md
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
└── docs/
    └── claude/
        ├── PROJECT_CONTEXT.md
        ├── ARCHITECTURE.md
        ├── DECISIONS.md
        ├── TESTING_STRATEGY.md
        └── DELIVERY_PROCESS.md
```

A documentação gerada pelo kit fica em `docs/claude/` para não misturar com a documentação própria do projeto.

O arquivo `README_SUGGESTED_CLAUDE.md` é uma proposta separada de README de produto e engenharia. Ele não substitui automaticamente o `README.md` existente, deve ser adaptado ao produto e stack reais, e seu conteúdo não deve mencionar AI, Claude ou assistência automatizada.

O script de instalação prepara os arquivos fonte em `.claude-workflow-kit/`, gera o prompt temporário em `.claude-workflow-kit/install-claude-workflow-kit.md`, mas não cria código de aplicação, não instala dependências e não roda Claude automaticamente. A adaptação feita pelo Claude Code não deve deixar `prompts/` nem `.claude/worktrees/` como artefatos finais do kit. Como `.claude-workflow-kit/` ainda é necessário para executar o prompt, ele só deve ser removido depois da instalação; ao final, o Claude Code pergunta se o usuário deseja excluí-lo.

## Como o Claude usa estes arquivos

O kit separa contexto, comandos, agentes, workflows e documentação. Nem tudo é carregado automaticamente em toda pergunta.

| Local | Tipo | Uso automático? | Quando é usado |
| --- | --- | --- | --- |
| `CLAUDE.md` | contexto persistente do projeto | sim, no início da sessão | orienta regras, padrões, comandos e critérios de trabalho |
| `.claude/commands/` | slash commands / skills | sob demanda | quando o usuário chama `/plan`, `/implement`, `/review`, `/test`, `/commit` ou outro comando |
| `.claude/agents/` | subagentes especializados | sob demanda | quando o usuário pede ou quando o Claude delega uma tarefa compatível |
| `.claude/workflows/` | biblioteca de processos do kit | não automaticamente | quando `CLAUDE.md`, um comando, um agente ou o usuário referencia o workflow |
| `docs/claude/` | documentação operacional consultável | não automaticamente | quando importada, lida por comando/agente ou solicitada pelo usuário |

`CLAUDE.md` é a camada de orientação permanente. Ele não executa ações sozinho, mas define como o Claude deve trabalhar no projeto e quando deve consultar comandos, workflows e documentação.

Os arquivos em `.claude/commands/` ficam disponíveis como comandos. O conteúdo completo de um comando entra no contexto quando ele é invocado.

Os arquivos em `.claude/agents/` definem agentes do projeto instalado. O diálogo `/agents` lista agentes que existem em `.claude/agents/` do workspace atual. Neste repositório, os agentes em `kit/agents/` são apenas templates de distribuição; por isso `/agents` pode não listar nada se o kit não foi instalado/adaptado neste próprio projeto.

Os arquivos em `.claude/workflows/` são uma convenção deste kit para descrever processos reutilizáveis. Eles não são um diretório mágico carregado automaticamente pelo Claude Code; precisam ser referenciados por `CLAUDE.md`, comandos, agentes ou pelo usuário.

Os arquivos em `docs/claude/` guardam contexto operacional separado da documentação própria do produto. Eles ficam disponíveis para consulta, mas não entram automaticamente no contexto só por existirem.

Em resumo:

```txt
CLAUDE.md              → orienta sempre
.claude/commands/     → comandos invocados sob demanda
.claude/agents/       → especialistas delegados sob demanda
.claude/workflows/    → processos consultados quando referenciados
docs/claude/          → contexto operacional consultável
```

## Como pensar neste kit

A ideia é simples:

```txt
Contexto → Planejamento → Execução → Teste → Revisão → Documentação → Entrega
```

O Claude Code continua sendo uma IA. O kit reduz improviso, aumenta contexto e cria um método repetível.

## Como usar depois da instalação

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

## Conteúdo do kit

### Documentação base

- `CLAUDE.md`;
- `README_SUGGESTED_CLAUDE.md` como proposta separada de README de produto/engenharia;
- documentos operacionais gerados em `docs/claude/`, como `PROJECT_CONTEXT.md`;
- `DEFINITION_OF_READY.md`;
- `DEFINITION_OF_DONE.md`;
- `ENGINEERING_PRINCIPLES.md`;
- `REVIEW_CHECKLIST.md`.

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

### Workflows incluídos

- desenvolvimento de feature;
- correção de bug;
- refatoração;
- design técnico;
- revisão de release.

### Stacks com notas iniciais

- genérico;
- Next.js;
- React/Vite;
- Node/NestJS;
- Python/FastAPI;
- Rails.

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

## Regra principal

A instalação do Claude Workflow Kit não deve criar features.

Ela deve criar apenas a estrutura de trabalho para o Claude Code operar melhor dentro do projeto.

## Instalação manual

Se não quiser usar o instalador via `curl`, clone este repositório e rode o instalador localmente a partir da raiz do projeto alvo.

Projeto existente:

```bash
cd meu-projeto
/path/to/claude-workflow-kit/scripts/install.sh existing
claude
```

Projeto vazio:

```bash
mkdir meu-projeto
cd meu-projeto
/path/to/claude-workflow-kit/scripts/install.sh empty
claude
```

Depois, cole no Claude Code o conteúdo de:

```txt
.claude-workflow-kit/install-claude-workflow-kit.md
```

## Para mantenedores

### Gerar ZIP de distribuição

O ZIP é um artefato de release, não o fluxo principal de instalação.

```bash
./scripts/build-zip.sh
```

O arquivo será criado em:

```txt
zip/claude-workflow-kit.zip
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
    ├── install.sh
    └── build-zip.sh
```

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

## Licença

MIT.
