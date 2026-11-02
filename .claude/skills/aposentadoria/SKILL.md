---
name: aposentadoria
description: Modelo de planejamento para antecipar a aposentadoria de Fernando, com dois cenários lado a lado (agressivo e conservador) a partir das premissas dele. Use quando ele perguntar quando pode parar de trabalhar, quanto precisa acumular, quanto aportar, ou quiser comparar estratégias de investimento e regras de transição previdenciária.
---

# Planejamento de aposentadoria antecipada

## Premissas que precisam existir antes de qualquer conta

Peça ao usuário o que faltar. Não estime no lugar dele.

| Grupo | Dado |
|---|---|
| Pessoal | idade atual (55), idade-alvo de parada, expectativa de horizonte de vida para o plano |
| Patrimônio | valor investido hoje, por classe (renda fixa pós, pré, IPCA+, ações, outros) |
| Fluxo | renda líquida mensal, aporte mensal atual, gasto mensal de vida, gasto mensal desejado depois de parar |
| Previdência | tempo de contribuição ao INSS, regra de transição aplicável, previdência privada existente |
| Imposto | regime de tributação de cada veículo (tabela regressiva ou progressiva, come-cotas) |
| Moradia e saúde | imóvel próprio ou aluguel, custo de plano de saúde na aposentadoria |

## Método

1. **Taxa real.** Converta retorno nominal esperado em real: `(1 + nominal) / (1 + inflação) - 1`. Mostre a conta.
2. **Alvo de patrimônio.** Gasto anual desejado dividido pela taxa de retirada sustentável. A taxa de retirada é uma premissa do usuário, então deixe-a explícita e varie-a. Não apresente nenhuma taxa como regra.
3. **Acumulação.** Valor futuro do patrimônio atual mais o valor futuro dos aportes mensais, na taxa real do cenário. Use Bash com Python para calcular e mostre as fórmulas.
4. **Ponte até a renda do INSS.** Se houver lacuna entre parar de trabalhar e começar a receber, calcule quanto do patrimônio é consumido nessa ponte.
5. **Dois cenários lado a lado**, sempre os dois:

| | Agressivo | Conservador |
|---|---|---|
| Retorno real | mais alto | mais baixo |
| Volatilidade assumida | maior | menor |
| Taxa de retirada | maior | menor |
| Resultado | idade mais cedo, margem menor | idade mais tarde, margem maior |

6. **Sensibilidade.** Mostre o que acontece com a idade de parada se o retorno real cair um ponto percentual, se a inflação de saúde subir, ou se os 3 primeiros anos de retorno forem ruins (risco de sequência).

## Legislação previdenciária e tributária

- Cite o dispositivo exato (lei, artigo, parágrafo, inciso) e o link oficial.
- Pesquise a regra vigente antes de aplicá-la. Ela muda, e o que você lembra pode estar desatualizado.
- Se não conseguir confirmar o texto em fonte oficial, diga que não confirmou e não calcule com a regra.
- Para checar uma referência, acione o subagente `revisor-de-fonte`.

## Entrega

Duas versões, como o usuário pediu:

1. **Pronta para uso:** resumo com a idade de parada em cada cenário, o aporte necessário e as premissas usadas.
2. **Comentada:** as mesmas conclusões com cada premissa justificada, o que mudar se a vida mudar, e o que está incerto.

Se for criar a planilha no Google Sheets, deixe as premissas em células de entrada separadas das fórmulas, para ele alterar um número e ver o efeito.

Ao terminar, pergunte se o resultado ficou satisfatório.
