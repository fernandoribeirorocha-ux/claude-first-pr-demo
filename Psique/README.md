# Psique

App iOS de estudos de Psicanálise (Freud, Klein, Winnicott, Lacan, Bion). Projeto SwiftPM no formato do [xtool](https://github.com/xtool-org/xtool), para compilar e instalar a partir de Linux ou Windows (WSL).

## Funções
- **Conceitos**: 25 verbetes por autor, com obra de referência e busca.
- **Revisão**: um cartão por verbete, com repetição espaçada (SM-2). Você também cria cartões próprios.
- **Fichamentos**: título, referência ABNT, resumo, citações com página e comentários. Compartilha como texto.
- **Comparar**: quatro temas lado a lado (constituição do eu, angústia, objeto, posição do analista).

Os dados ficam em `Documents/psique.json` no aparelho. Não há rede nem conta.

## Estado do código
**Não foi compilado.** Foi escrito sem acesso a um toolchain Swift. Espere corrigir alguns erros de compilação na primeira rodada. O pacote usa o modo de linguagem Swift 5 para reduzir erros de concorrência.

## Compilar e instalar
1. Instale o xtool (AppImage em https://github.com/xtool-org/xtool/releases) e rode `xtool setup`. Ele pede seu Apple ID e o `Xcode.xip` baixado em https://developer.apple.com/download/all/.
2. Edite `bundleID` em `xtool.yml` para um identificador seu, por exemplo `br.com.seunome.Psique`.
3. Conecte o iPhone por USB, ative o Modo Desenvolvedor e confie no computador.
4. Na pasta `Psique`, rode `xtool dev`.

Com conta gratuita da Apple, o app expira em 7 dias e precisa ser reinstalado.

## Conteúdo
Os verbetes são resumos didáticos, escritos de memória e sem acesso às obras. Antes de citar em trabalho acadêmico, confira título, ano e tese no texto original. O arquivo a revisar é `Sources/Psique/SeedData.swift`.
