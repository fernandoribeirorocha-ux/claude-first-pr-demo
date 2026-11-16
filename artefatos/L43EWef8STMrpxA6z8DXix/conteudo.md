# Versão comentada — o que revisar antes de entregar ao empresário

Nov 14, 2026 · @Fernando Ribeiro Rocha

O guia, o passo a passo e a planilha estão prontos para uso. Este documento aponta o que você deve trocar pelos dados reais do cliente e onde a análise é mais frágil, para você não ser pego de surpresa na reunião.

## O que trocar antes de entregar

| Item | Onde está | Por que trocar |
| --- | --- | --- |
| 400 orçamentos por mês, ticket de R$ 450, margem de 35%, refação de R$ 3.000 | Planilha, aba Premissas, B8 a B11 | São ilustrativos e todo o retorno depende deles |
| Horas liberadas, pontos de conversão, redução de refação | Planilha, aba Cenários, linhas 13, 15 e 17 | São hipóteses minhas, nenhuma foi medida |
| Plataforma (R$ 400 a R$ 600 por mês), consultor (R$ 180 por hora), preflight (R$ 400 por mês), outros custos de montagem do cenário C | Planilha, aba Cenários | Não achei tabela pública que os confirme; peça orçamentos |
| Câmbio (R$ 5,50 e R$ 6,40) | Premissas, B2 e B3 | São valores de referência, não a cotação do dia |
| Nome da gráfica, cidade e teto de valor | Texto-base, no documento de implantação | São marcadores entre chaves |

## Onde a análise é mais frágil

1. **O ganho de conversão sustenta boa parte do cenário B.** São R$ 1.890 dos R$ 4.938 de ganho mensal. Sem ele, a sobra do B cai para R$ 784 por mês e a montagem paga em 15,7 meses, e não em 4,6. No A, sem conversão, a sobra é R$ 556 e o retorno sai em 2,6 meses; no C, a sobra é R$ 330 e o retorno passa de 150 meses.
2. **As horas liberadas só valem se virarem venda ou uma contratação evitada.** Tire as horas e a conversão do B e sobra só a refação: o cenário perde R$ 1.514 por mês. O argumento honesto ao empresário é que os 30 dias de medição da Fase 0 existem para decidir isso com números dele.
3. **Os custos de plataforma e consultoria não têm fonte.** Os custos unitários de WhatsApp, Claude e n8n têm link no guia; esses não.
4. **A LGPD está citada pelos arts. 9º, 20 e 46, conferidos só por mim, sem abrir o texto consolidado nesta sessão.** Abra a [Lei 13.709/2018](https://www.planalto.gov.br/ccivil_03/_ato2015-2018/2018/lei/l13709.htm) e confirme os três dispositivos antes de repetir isso ao cliente. O guia já avisa o empresário para checar com contador ou advogado.
5. **Não pesquisei a política da Meta sobre agentes de IA na API do WhatsApp.** Confirme com o provedor que um agente de atendimento da própria gráfica é permitido e como fica o número de modelos de mensagem aprovados.
6. **O custo de IA depende do tamanho da conversa.** Usei 40 mil tokens de entrada e 3 mil de saída por conversa de dez trocas. Com histórico longo sem controle o custo sobe; por isso o guia manda colocar limite mensal de gasto na conta.
7. **O n8n Pro (10.000 execuções) pressupõe cerca de 4.000 execuções por mês**, uma por mensagem recebida em 400 conversas de dez mensagens. Se o volume dobrar, confira o limite do plano antes.

## Duas versões do plano, lado a lado

|  | Conservador (A, depois B) | Agressivo (C) |
| --- | --- | --- |
| Quando faz sentido | Volume de até cerca de 400 orçamentos por mês e nenhuma medição prévia | Volume bem maior, sistema de gestão com API e preflight já necessário |
| Risco | Ganho menor no começo | Montagem de R$ 49.600 antes de provar o retorno |
| Montagem paga em | 1,2 mês (A) ou 4,6 meses (B) | 17,4 meses |
| O que você diria ao empresário | "Comece pequeno, meça e amplie" | "Só vale com volume maior que o assumido" |

Minha recomendação é o caminho conservador, e a razão está na linha 2 acima: o agressivo gasta quatro vezes mais antes de qualquer prova.

## O que falta para ficar específico

- Porte real da gráfica: faturamento, pedidos por mês e equipamentos.
- O sistema de gestão que ela usa e se ele tem integração (API) para consultar preço e status.
- Por onde chegam os pedidos hoje: WhatsApp, e-mail, site ou balcão.
- Quem atende e quanto tempo por dia gasta com orçamento e status.
- Se a impressora usa Fiery, o que abre a opção gratuita de pré-impressão básica.
