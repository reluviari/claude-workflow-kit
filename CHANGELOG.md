# Changelog

## Unreleased

- Reconciliará `CLAUDE.md` automaticamente durante o prompt de instalação, sem etapa manual separada.
- Gera `README_SUGGESTED_CLAUDE.md` como proposta separada de README de produto/engenharia, sem sobrescrever o README existente.
- Move a documentação gerada pelo Claude Workflow Kit para `docs/claude/`, preservando `docs/` para documentação própria do projeto.
- Move o prompt bootstrap gerado para `.claude-workflow-kit/install-claude-workflow-kit.md`.
- Remove `prompts/` do resultado final esperado da instalação.
- Instrui o cleanup seguro de `.claude/worktrees/` quando criado pelo fluxo e vazio.
- Pergunta ao usuário se deve remover `.claude-workflow-kit/` após a instalação terminar.

## v0.2.0

- Adiciona `scripts/install.sh` para instalação simplificada em projetos existentes ou vazios.
- Gera um único prompt de instalação em `.claude-workflow-kit/install-claude-workflow-kit.md`.
- Simplifica o README com Quickstart baseado em um comando via `curl`.
- Mantém o ZIP como artefato de distribuição para mantenedores.
- Corrige o build do ZIP removendo referência à pasta `examples/` inexistente.

## v0.1.0

Primeira versão do Claude Workflow Kit.

Inclui:

- Estrutura inicial do repositório.
- README com objetivo, instalação, fluxo recomendado e princípios de uso.
- Documentação base para orientar o uso do Claude Code no projeto:
  - `CLAUDE.md`;
  - `PROJECT_CONTEXT.md`;
  - `DEFINITION_OF_READY.md`;
  - `DEFINITION_OF_DONE.md`;
  - `ENGINEERING_PRINCIPLES.md`;
  - `REVIEW_CHECKLIST.md`.
- Agentes especializados para:
  - arquitetura;
  - backend;
  - frontend;
  - QA;
  - code review;
  - DevOps;
  - segurança;
  - produto;
  - documentação.
- Comandos operacionais para:
  - planejar;
  - implementar;
  - revisar;
  - testar;
  - refatorar;
  - gerar commit;
  - atualizar contexto.
- Workflows para:
  - desenvolvimento de feature;
  - correção de bug;
  - refatoração;
  - design técnico;
  - revisão de release.
- Notas por stack para:
  - projeto genérico;
  - Next.js;
  - React/Vite;
  - Node/NestJS;
  - Python/FastAPI;
  - Rails.
- Prompts para instalação em projeto vazio, instalação em projeto existente, análise de stack, geração de agentes e geração de workflows.
- Script `scripts/build-zip.sh` para gerar o pacote de distribuição `zip/claude-workflow-kit.zip`.
