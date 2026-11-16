# Implantando agentes de IA na gráfica — passo a passo para quem nunca fez

Nov 14, 2026 · @Fernando Ribeiro Rocha

São 16 semanas do zero ao primeiro conjunto de agentes funcionando, com ponto de parada a cada fase. Quem tem pressa pode usar só as fases 0 a 3 e já terá o agente de orçamento em operação em cerca de dez semanas.

## Antes de começar: quem faz o quê

Ninguém precisa programar. O que o projeto exige é tempo de quem conhece a gráfica, mais do que conhecimento técnico.

| Papel | Quem | Tempo estimado | Responsabilidade |
| --- | --- | --- | --- |
| Dono do projeto | Você | 1 h por semana | Define o teto de valor, as regras e aprova cada mudança de nível |
| Atendente-chave | A pessoa que mais orça hoje | 4 a 5 h por semana nas fases 2 e 3 | Testa, corrige as respostas e registra os erros |
| Montador | Consultor ou funcionário com jeito para sistemas | Cenário A: cerca de 8 h; cenário B: cerca de 60 h | Configura plataforma, fluxos e integrações |
| Contador | Seu contador | Pontual | Nota fiscal dos serviços contratados e política de dados |

Os tempos são estimativas minhas para uma gráfica pequena. Separe antes de abrir a primeira conta:

- a tabela de preços, mesmo que esteja em caderno ou na cabeça de alguém;
- vinte conversas reais de orçamento dos últimos meses, com os dados pessoais apagados;
- a lista das vinte perguntas que os clientes mais fazem;
- os documentos da empresa para a Meta (CNPJ, contrato social ou equivalente).

## Fase 0, semanas 1 e 2: arrumar a casa

Esta fase não usa IA e é a que mais decide o resultado. Um agente bom em cima de uma tabela confusa produz orçamentos confusos mais rápido.

1. **Registre 30 dias de orçamentos** numa planilha com as colunas: data, canal, produto, valor, fechou (sim ou não) e tempo até a primeira resposta. É o seu "antes"; sem ele não dá para provar o retorno.
2. **Monte a tabela de preços** com uma linha por combinação vendável. As colunas: produto, formato, papel ou material, faixa de quantidade, acabamento, preço, prazo padrão. Onde o preço depende de cálculo (m² de lona, por exemplo), escreva a fórmula numa coluna; o agente vai chamar a conta, não refazê-la.
3. **Leia as vinte conversas reais** e marque o que o atendente perguntou antes de poder orçar. Essa lista de perguntas vira o roteiro do agente.
4. **Escreva quatro regras num papel:** o teto de valor que o agente pode enviar sozinho (comece baixo), os casos que sempre vão para uma pessoa, o horário em que a equipe responde e o tom de voz.

**Pronto quando** a tabela cobrir a maior parte dos pedidos que você recebe (uma meta de 80% é sugestão minha) e as quatro regras estiverem assinadas por você.

## Fase 1, semanas 3 e 4: WhatsApp oficial e contas

1. **Escolha um provedor oficial de WhatsApp** pedindo ao menos dois orçamentos. Compare quatro coisas: a mensalidade, a margem sobre cada mensagem (as tabelas de mercado falam em 10% a 30% sobre o preço da Meta, segundo a [Message Central](https://www.messagecentral.com/pt-br/blog/whatsapp-business-api-pricing-brazil)), se o agente de IA já vem incluso e se há integração com outros sistemas. Algumas plataformas, como o [RD Station Conversas](https://www.rdstation.com/produtos/conversas/agentes-de-ia/), trazem agentes nativos sobre a API oficial; isso serve ao cenário A.
2. **Abra e verifique a conta Meta Business** com o CNPJ. A aprovação depende de documentos e pode levar dias.
3. **Defina o número.** Pergunte ao provedor se a coexistência está disponível, que deixa a equipe usar o aplicativo no mesmo número da API ([Eazybe](https://eazybe.com/br/blog/preco-api-whatsapp-business)). Se não estiver, use um número novo para o agente.
4. **Crie as contas de IA e automação no nome da empresa**, com o seu e-mail como administrador, e coloque um limite mensal de gasto em cada uma. Se o consultor sair, as chaves continuam com você.
5. **Cadastre os modelos de mensagem** que a Meta exige para falar com o cliente fora da janela de 24 horas: aviso de status (categoria utilidade) e retomada de orçamento (marketing, que custa mais). Cada um passa por aprovação.

**Pronto quando** uma mensagem de teste sair do número oficial para o seu celular e você tiver o acesso de administrador em todas as contas.

## Fase 2, semanas 4 a 6: montar o agente de orçamento

O caminho muda conforme o cenário, mas a lógica é a mesma: o cliente escreve, o agente conduz a conversa, a tabela dá o preço e uma pessoa entra quando a regra manda.

**Cenário A, na plataforma pronta**

1. Crie o agente na plataforma e cole o texto-base da seção mais abaixo, trocando o que está entre chaves.
2. Suba a tabela de preços como base de conhecimento, ou no formato que a plataforma aceitar.
3. Configure a transferência para humano com as regras da Fase 0 e escolha quem recebe o aviso.
4. Ligue o agente em **modo sugestão**: ele escreve o rascunho e o atendente envia. Se a plataforma não tiver esse modo, use o número de teste com a equipe antes de abrir ao público.

**Cenário B, com automação própria (n8n ou Make)**

1. O montador cria um fluxo que recebe cada mensagem do WhatsApp e entrega ao modelo de IA, junto com o histórico da conversa.
2. O modelo ganha duas ferramentas: *consultar preço* (lê a planilha ou o sistema e devolve o valor calculado) e *chamar humano* (avisa o atendente com o resumo do pedido).
3. O fluxo grava cada conversa, proposta e custo numa planilha de registro. Essa planilha é a prova do seu retorno.
4. A resposta vai ao atendente como rascunho antes de ir ao cliente.

&#91;embedded content: fluxo do agente de orçamento · cenário B\]

O modelo só conversa e decide a próxima pergunta. O valor vem da tabela, a conversa fica registrada, e uma pessoa é chamada quando uma das regras da Fase 0 dispara.

Vale uma escolha de modelo: Haiku 5.5 custa uma fração do Sonnet 5.5 ([preços](https://benchlm.ai/anthropic/api-pricing)) e costuma bastar para perguntar e anotar. Teste os dois nas vinte conversas da Fase 0 e fique com o mais barato que acerta o suficiente.

## Fase 3, semanas 7 a 10: rodar em modo sugestão e medir

Esta é a fase em que o agente aprende com a sua equipe, e não o contrário.

1. **Abra uma planilha de conferência** com as colunas: pedido do cliente, proposta do agente, correta (sim ou não) e tipo do erro (preço, prazo, pergunta que faltou, tom, outro).
2. **Registre os primeiros 50 casos.** O atendente marca cada um depois de ler o rascunho.
3. **Reuna a equipe 30 minutos por semana** para ler os erros e corrigir o texto-base ou a tabela. A maioria dos erros vem de tabela incompleta, e não da IA.
4. **Decida a subida de nível:** com 95% ou mais de acertos nos 50 casos (critério sugerido, ajuste ao seu risco), passe ao nível 2, em que o agente envia após um clique de aprovação. Repita a conta com 50 casos novos antes do nível 3, e comece o nível 3 com um teto baixo de valor.
5. **Compare com os 30 dias da Fase 0:** tempo de primeira resposta, orçamentos enviados e fechados.

**Pronto quando** os 50 casos estiverem registrados, o resultado estiver escrito e você tiver decidido o nível em que o agente fica. Se o resultado for ruim, o agente continua no nível 1 e você não perdeu nada além de algumas semanas de mensalidade.

## Fase 4, semanas 11 a 16: os outros agentes

Cada agente repete o ciclo das fases 2 e 3, em escala menor: monta, roda em sugestão, confere 50 casos e sobe de nível.

| Agente | O que precisa existir antes | Como funciona na prática | Pronto quando |
| --- | --- | --- | --- |
| Status do pedido | Uma planilha ou sistema com a etapa de cada pedido, atualizada pela produção | O cliente pergunta; o agente lê a etapa e responde. A cada mudança de etapa, envia um aviso (modelo de utilidade) | O balcão para de atender ligações de "já ficou pronto?" |
| Conferência de arquivo | Lista de regras da sua máquina: sangria, resolução mínima, perfil de cor, fontes | Uma ferramenta de preflight lê o PDF; a IA reescreve o relatório numa mensagem simples. Se a sua impressora tem o Fiery, a versão base do JobFlow é gratuita ([Fiery](https://www.fiery.com/wp-content/uploads/sites/3/documents/2518/efi_fiery_workflow_automation_ebook_eb_pt_br.pdf)) | O agente aponta o problema, nunca altera a arte |
| Cobrança e retomada | Lista de orçamentos abertos e de títulos a vencer | Lembra o cliente em datas fixas, com modelos aprovados na Meta | Nenhum cliente recebe mais de um lembrete por semana |
| Resumo do dono | Os registros das fases anteriores | Todo fim de dia a automação lê as planilhas e a IA escreve um resumo curto no seu WhatsApp | Você lê em menos de dois minutos |
| Compras e estoque | Planilha de estoque com o mínimo de cada insumo | Quando um item chega ao mínimo, o agente prepara o pedido ao fornecedor para você enviar | Nenhum pedido sai sem a sua confirmação |

A ordem pode mudar conforme a sua dor. Se a perda maior é refação por arquivo ruim, adiante o agente de conferência.

## O texto-base do agente de orçamento

Este é o modelo de instrução que o agente lê antes de cada conversa. Troque o que está entre chaves e acrescente as regras da sua gráfica. Quanto mais específico, melhor ele se comporta.

```text
Você é o atendimento automático da {NOME DA GRÁFICA}, gráfica digital em {CIDADE}. Seu trabalho é entender o que o cliente quer imprimir, perguntar somente o que falta e montar o pedido de orçamento.

Regras que nunca mudam
1. Nunca invente preço, prazo ou desconto. O preço só vem da ferramenta consultar_preco. Se ela não encontrar o produto, diga que vai confirmar com a equipe e use chamar_humano.
2. Prazo: informe a faixa padrão da tabela e diga que a confirmação final vem da produção.
3. Use chamar_humano quando: o valor passar de R$ {TETO}; o pedido não estiver na tabela; o cliente pedir desconto; houver reclamação; o cliente demonstrar irritação; houver dúvida de arquivo ou de cor que você não resolva.
4. Nunca altere nem prometa corrigir a arte do cliente.
5. Se perguntarem se você é uma pessoa, diga que é o atendimento automático da gráfica e que a equipe acompanha as conversas.
6. Escreva como um bom atendente de balcão: frases curtas, sem gíria, sem excesso de simpatia.

Informações que você precisa ter antes de orçar
produto; formato final; quantidade; papel ou material; cores (frente e verso); acabamentos; prazo desejado; retirada ou entrega; arte pronta ou a criar.

Quando tiver tudo, chame consultar_preco com esses dados e responda neste formato:
Produto e especificação em uma linha; quantidade; valor total; prazo estimado; o que acontece depois (envio da arte, aprovação, pagamento).
```

O ponto 5 atende à transparência que a LGPD pede ao titular; o ponto 3 mantém uma pessoa nas decisões que o cliente pode contestar (art. 9º e art. 20 da [Lei 13.709/2018](https://www.planalto.gov.br/ccivil_03/_ato2015-2018/2018/lei/l13709.htm); confirme com seu contador ou advogado).

## Checklist de aceite e plano B

Antes de abrir o agente de orçamento ao público no nível 2 ou 3, confira cada item:

- [ ] A tabela de preços cobre os produtos mais vendidos e está com data de atualização
- [ ] O teto de valor e a lista de casos que chamam um humano estão escritos e assinados
- [ ] 50 casos conferidos, com o percentual de acerto registrado
- [ ] O agente informa que é atendimento automático
- [ ] Há um botão ou palavra-chave que desliga o agente na hora ("pausar agente")
- [ ] Existe limite mensal de gasto nas contas de IA e de automação
- [ ] As contas estão no nome da empresa e você é administrador em todas
- [ ] A equipe sabe o que fazer quando o agente chama um humano

Se algo der errado:

| Se acontecer | Faça |
| --- | --- |
| O agente enviou um preço errado | Pause o agente, avise o cliente pelo atendente, corrija a tabela e registre o caso entre os 50 |
| O cliente reclama de estar falando com robô | Passe a conversa a uma pessoa na hora e revise a regra 5 |
| A conta de IA subiu além do previsto | Confira o limite de gasto, veja qual conversa gastou mais e troque para o modelo mais barato nas etapas simples |
| O número do WhatsApp foi limitado | Pare os envios de marketing, abra chamado com o provedor e confira se os modelos usados estavam na categoria certa |
| O montador sumiu | Você tem as contas e o fluxo documentado: contrate outro montador com os acessos que já são seus |

O plano de gastos que acompanha este documento mostra quanto cada decisão muda na conta.
