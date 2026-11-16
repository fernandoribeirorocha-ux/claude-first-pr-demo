# Infor GenAI Assistant (v2025.04): resumo para leigos

Oct 19, 2026 · @Fernando Ribeiro Rocha

O GenAI Assistant é o chatbot de inteligência artificial da plataforma Infor OS: o usuário pergunta em linguagem normal e recebe resposta com dados reais do ERP. O material é um treinamento da Infor sobre a versão 2025.04.

## A ideia central

Hoje, quem usa um sistema como o Infor CloudSuite enfrenta três dificuldades: navegar por telas complicadas, buscar dados manualmente e não ter informação em tempo real. Quem não é da área técnica costuma pedir ajuda à TI só para obter um dado, e isso atrasa decisões.

A solução é um assistente de conversa. O usuário escreve, por exemplo, "qual o status do pedido 123?" e o sistema responde na hora, consultando os dados do ERP. Por trás dele estão os LLMs (modelos de linguagem de grande porte, a mesma família de tecnologia dos chatbots modernos). Segundo a apresentação, a infraestrutura roda sobre serviços da AWS (Bedrock) e da Azure (OpenAI GPT).

O material separa duas funções que costumam ser confundidas:

- **GenAI Assistant:** conversa com os **dados** do CloudSuite. É o foco do curso.
- **GenAI Knowledge Hub:** conversa com a **documentação** (manuais e guias). É outro recurso, recomendado como estudo complementar.

## Como funciona por dentro: Tools e Agents

O assistente é movido por duas peças:

- **Tool (ferramenta):** uma única ação que o usuário pode pedir durante a conversa, como consultar um pedido ou ver o perfil de um funcionário.
- **Agent (agente):** o "maestro" que organiza um conjunto de Tools ligadas a um mesmo assunto, perfil de usuário ou caso de uso, e conduz a conversa.

As Tools funcionam usando as APIs do ION API Gateway, ou seja, as portas de comunicação já existentes entre os aplicativos Infor. Cada CloudSuite está preparando seu próprio conjunto de Agents e Tools padrão.

## As telas e recursos

| Recurso | Quem usa | Para que serve |
| --- | --- | --- |
| Painel lateral (Smart Panel) | Usuário final | Conversar com o assistente em qualquer tela do Infor OS Portal. Tem botões para nova conversa, histórico, fixar na tela, maximizar e fechar. |
| Factory | Administrador | Criar, editar, ativar ou desativar Tools e Agents e escolher o que será publicado aos usuários. Após a versão 2025.05, o menu terá "Factory" como ramo principal, com "Tools" e "Chat" dentro dele. |
| Chat de testes | Administrador e testador | Experimentar Agents e Tools antes de liberá-los aos usuários. |
| Conversation Starters | Usuário final | Atalhos com exemplos do que perguntar, como "Consultar status do pedido \<número>". O usuário clica, preenche o dado que falta e envia. |
| Feedback | Usuário final | Marcar polegar para cima ou para baixo após cada resposta. Se foi ruim, informar o motivo (incorreta, sem relação com a pergunta ou com poucos detalhes) e, se quiser, escrever um comentário. Serve para melhorar o sistema. |
| Opt-out de rastreamento | Administrador | Em Admin > System Configuration, impede que as conversas sejam enviadas a serviços de terceiros de monitoramento, como o LangSmith. Recomendado quando há dados pessoais ou informações sensíveis. |

## Benefícios prometidos

A Infor promete mais eficiência e produtividade, decisões mais rápidas, relatórios automatizados, acesso em tempo real aos dados, menos dependência da TI e redução de custos.

## Informações de contexto da versão

| Item | Informação |
| --- | --- |
| Modelo de implantação | Multi-tenant (vários clientes compartilham a mesma infraestrutura, com dados separados) |
| Idiomas | Suporte a vários idiomas |
| Países certificados nesta versão | EUA e União Europeia |
| Impacto no Catálogo de Processos (IPC) | Nenhum |
| Status | LA (Limited Availability, disponibilidade limitada) a partir da versão 2025.04 |
| Onde saber mais | Infor U (treinamentos) e User Guide em docs.infor.com |

## Leitura do especialista

Duas observações que o treinamento não faz, mas ajudam a entender o contexto:

- **O assistente não "sabe" nada do negócio por conta própria.** Ele só responde sobre o que as Tools expõem via API. Se não existir uma Tool para determinada consulta, ele não consegue atender. Por isso a Factory, onde se cria e ativa Tools, é a peça mais importante para quem implanta.
- **O status LA indica liberação controlada.** O próprio material avisa que a cobertura de Agents por CloudSuite está em construção. Em projetos reais, vale confirmar quais Agents e Tools padrão existem para o produto específico antes de prometer funcionalidade ao cliente.
