# IA para consultor funcional de ERP sob restrição corporativa

Nov 11, 2026 · @Fernando Ribeiro Rocha

Curso curto, neutro de fornecedor, para quem não pode instalar nada no equipamento de trabalho nem expor dado de cliente. Seis módulos de 20 a 30 minutos.

## Ementa pronta

Ao final, o aluno produz fit-gap, especificação, roteiro de teste e material de treinamento com apoio de IA, sem que nenhum dado identificável de cliente saia da máquina. Todos os exemplos usam a empresa fictícia Lumar Embalagens.

| Módulo | Objetivo verificável | Exercício (dados fictícios) | Erro plantado para o aluno achar |
| --- | --- | --- | --- |
| 1. O que pode e o que não pode sair da máquina | Classificar dez trechos de material de projeto em três faixas e anonimizar os da faixa do meio | Ata de workshop de Compras com nomes, CNPJ e preços | Um CNPJ escondido no nome de um arquivo citado |
| 2. Fit-gap assistido | Montar uma tabela de fit-gap de oito requisitos com classificação e justificativa | Oito requisitos de Compras escritos pelo usuário-chave | A IA classifica como padrão um requisito que descreve solução, não necessidade |
| 3. Especificação funcional | Redigir a especificação de um gap com regra, exceções e critério de aceite | Gap de aprovação de pedido por alçada | Uma exceção inventada pela IA, que ninguém pediu |
| 4. Roteiro de teste | Derivar casos de teste de uma especificação e conferir a cobertura | A especificação do módulo 3 | Um caso sem resultado esperado e um requisito sem caso |
| 5. Material de treinamento | Transformar um processo em roteiro de aula de 15 minutos com exercício | Recebimento de mercadoria com divergência de quantidade | Um passo fora de ordem, plausível à primeira leitura |
| 6. Limites e conferência | Aplicar uma lista de sete verificações a uma resposta da IA e apontar o que não se sustenta | Resposta longa sobre uma regra fiscal, com fonte | Uma norma citada que não existe |

Cada módulo tem roteiro de fala, o exercício, o gabarito e uma folha de uma página com os comandos usados.

## Ementa comentada

- **O módulo 1 é o diferencial; os outros cinco existem em outros cursos.** O que achei à venda trata de um fornecedor por vez e em inglês. Se o tempo de gravação for curto, grave o 1 e o 6 primeiro e venda como minicurso.
- **Os objetivos estão no mínimo observável.** "Classificar", "montar", "redigir", "derivar": dá para corrigir. Se quiser certificado, cada um já serve de critério de aprovação.
- **O erro plantado é a aula.** Sem ele o curso ensina a pedir; com ele ensina a conferir. Troque os meus erros pelos que você viu a IA cometer no seu trabalho: os seus são melhores.
- **Nenhum módulo fala de fiscal brasileiro de propósito.** Entrou só no 6, como exemplo de afirmação que precisa de fonte. Se o público for de localização, o módulo 2 pode usar requisitos fiscais, mas o risco de o aluno tomar o exemplo por orientação tributária cresce.
- **Gravado ou ao vivo.** Gravado não ocupa a sua agenda e envelhece em meses; turma ao vivo trimestral se atualiza sozinha e permite cobrar mais. Não há resposta certa: depende de quanto tempo você quer vender.
- **O que só você decide:** se o seu contrato permite vender curso de tema ligado ao trabalho. Nenhuma tela, documento ou método de empregador ou cliente entra no material.

## Módulo 1: roteiro de fala

Duração estimada: 22 minutos em ritmo de narração. O texto abaixo é para ser lido em voz alta.

**Abertura (2 min)**

Você recebeu duas ordens que parecem se anular. A primeira: use inteligência artificial, e use cada vez mais. A segunda: nenhum dado de cliente sai desta máquina, e nesta máquina não se instala nada. Este módulo mostra que as duas cabem no mesmo dia de trabalho. Cabem porque quase tudo o que um consultor funcional pede a uma IA não depende de saber quem é o cliente. Depende de saber qual é o problema.

**A pergunta que organiza tudo (3 min)**

Antes de copiar qualquer trecho, faça uma pergunta só: se este texto aparecesse amanhã num lugar público, alguém saberia de quem se trata? Se a resposta for sim, ele não sai. Se for não, ele pode sair. Se for "depende", ele precisa ser trabalhado antes. Dessa pergunta nascem três faixas.

**As três faixas (6 min)**

Faixa um, o que sai sem tratamento. Conhecimento público e dúvida de método. A regra de um imposto, a estrutura de um documento fiscal, como se escreve um critério de aceite, a diferença entre requisito e solução. Nada disso pertence a cliente algum.

Faixa dois, o que sai depois de anonimizado. O processo do cliente descrito em termos gerais, um requisito, uma ata, uma lista de pendências. O conteúdo é útil, mas vem carregado de identificadores. É aqui que você vai trabalhar mais.

Faixa três, o que não sai. Dado pessoal de qualquer pessoa. Preço, margem, volume, condição comercial. Contrato. Base de dados, mesmo um pedaço. Tela do sistema com dado real. E tudo o que o seu contrato ou o do cliente chamar de confidencial. Na dúvida entre a faixa dois e a três, é três.

**Como anonimizar sem estragar o conteúdo (7 min)**

São quatro movimentos, sempre na mesma ordem.

Primeiro, troque nomes por papéis. Não é "a Marta do fiscal"; é "a analista fiscal". Não é o nome da empresa; é "uma indústria de embalagens de porte médio".

Segundo, troque números por ordens de grandeza. Não é o valor do pedido; é "pedidos acima de um limite de alçada". Não são cento e oitenta e três fornecedores; são "algumas centenas".

Terceiro, retire os identificadores que se escondem. Código de item, número de pedido, CNPJ, nome de arquivo, endereço de e-mail, o apelido interno de um projeto. Eles não parecem dado sensível e são os que mais escapam.

Quarto, releia como se fosse um concorrente do cliente. Se com três pistas você adivinha a empresa, ainda não terminou. Um setor raro, uma cidade pequena e um produto único identificam tanto quanto o nome.

Um aviso sobre o canal. Anonimizar resolve o conteúdo, não o caminho. O texto tratado tem de sair por um meio que a sua empresa permite. Se a regra proíbe copiar qualquer coisa do equipamento de trabalho, você reescreve de memória, em termos gerais, fora dele. Leia a política antes; este curso não a substitui.

**O que a IA devolve também precisa de cuidado (2 min)**

A resposta volta genérica, com os papéis que você inventou. É no seu equipamento de trabalho, e só nele, que os nomes reais voltam para o documento. A IA nunca precisa conhecê-los.

**Fecho (2 min)**

Três faixas, quatro movimentos, uma pergunta. No exercício a seguir você recebe a ata de um workshop de Compras de uma empresa que não existe. Há nela dez trechos para classificar e um identificador escondido que quase todo mundo deixa passar.

## Módulo 1: exercício e gabarito

A empresa, as pessoas, os números e os códigos abaixo são inventados.

**Ata fictícia: workshop de Compras, Lumar Embalagens**

> Participantes: Marta Queirós (fiscal), João Tavares (compras), consultoria.
>
> 1. João explicou que toda requisição acima de R$ 48.500 precisa da aprovação do diretor industrial.
> 2. O fornecedor Papelmax responde por 41% da compra de bobinas e tem prazo de 28 dias.
> 3. Marta confere à mão toda nota de entrada antes do recebimento físico.
> 4. Dúvida da equipe: uma devolução de compra exige documento fiscal próprio?
> 5. O item BOB-7731 tem dois códigos de classificação fiscal cadastrados em filiais diferentes.
> 6. A planilha de controle está em "compras\_lumar\_07444888000155\_v3.xlsx".
> 7. A equipe quer saber como se escreve um critério de aceite para aprovação por alçada.
> 8. O contrato com a Papelmax prevê multa de 2% por atraso de pagamento.
> 9. Hoje não há registro de quem aprovou cada pedido.
> 10. João pediu que o e-mail joao.tavares@lumar.example receba os alertas de atraso.

**Tarefa.** Classifique cada trecho na faixa 1, 2 ou 3. Reescreva os da faixa 2 em forma anonimizada.

**Gabarito**

| Trecho | Faixa | Por quê | Forma anonimizada |
| --- | --- | --- | --- |
| 1 | 2 | Processo útil, com valor exato e cargo | Requisições acima de um limite de alçada exigem aprovação de um diretor |
| 2 | 3 | Fornecedor nomeado, participação e condição comercial | Não sai |
| 3 | 2 | Processo com nome de pessoa | A analista fiscal confere manualmente toda nota de entrada antes do recebimento |
| 4 | 1 | Dúvida de regra pública | Sai como está |
| 5 | 2 | Problema de cadastro, com código de item | Um mesmo item tem classificações fiscais diferentes em filiais diferentes |
| 6 | 3 | Nome de arquivo com o CNPJ da empresa | Não sai |
| 7 | 1 | Dúvida de método | Sai como está |
| 8 | 3 | Cláusula de contrato | Não sai |
| 9 | 2 | Lacuna de processo, sem identificador; basta tirar o contexto | Não há registro de quem aprovou cada pedido |
| 10 | 3 | Dado pessoal | Não sai |

**O erro plantado** está no trecho 6. Quem lê depressa vê "uma planilha de controle" e classifica como faixa 2. O CNPJ está dentro do nome do arquivo.

**Segunda armadilha, para discussão.** A lista de participantes no topo não é um trecho numerado e quase ninguém a remove. Dois nomes e a palavra "Lumar" bastam para identificar tudo o que vem depois.
