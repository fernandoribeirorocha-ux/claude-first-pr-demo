import Foundation

/// Conteúdo de estudo embutido. São resumos didáticos, não citações:
/// confirme sempre no texto original antes de usar em trabalho acadêmico.
enum SeedData {

    static let concepts: [Concept] = [
        // MARK: Freud
        Concept(
            id: "freud-pulsao", author: .freud, name: "Pulsão",
            summary: "Conceito-limite entre o psíquico e o somático. Tem fonte (excitação corporal), pressão (força constante), alvo (satisfação) e objeto, que é o elemento mais variável. Diferencia-se do instinto animal por não ter objeto nem comportamento fixos.",
            work: "Pulsões e destinos da pulsão (1915)"
        ),
        Concept(
            id: "freud-inconsciente", author: .freud, name: "Inconsciente (primeira tópica)",
            summary: "O aparelho psíquico se divide em inconsciente, pré-consciente e consciente. O inconsciente opera pelo processo primário (condensação e deslocamento), sem negação nem noção de tempo, regido pelo princípio de prazer.",
            work: "A interpretação dos sonhos (1900), cap. VII; O inconsciente (1915)"
        ),
        Concept(
            id: "freud-edipo", author: .freud, name: "Complexo de Édipo",
            summary: "Conjunto de desejos amorosos e hostis da criança em relação aos pais. Organiza a escolha de objeto e a formação do superego. Seu declínio se dá, no menino, pela ameaça de castração.",
            work: "A dissolução do complexo de Édipo (1924)"
        ),
        Concept(
            id: "freud-narcisismo", author: .freud, name: "Narcisismo",
            summary: "Investimento libidinal no próprio eu. Freud distingue o narcisismo primário do secundário e opõe a libido do eu à libido de objeto.",
            work: "Introdução ao narcisismo (1914)"
        ),
        Concept(
            id: "freud-segunda-topica", author: .freud, name: "Segunda tópica (id, ego, superego)",
            summary: "O ego é em parte inconsciente e responde a três exigências: as do id, as do superego e as da realidade. O superego se forma como herdeiro do complexo de Édipo.",
            work: "O Eu e o Id (1923)"
        ),
        Concept(
            id: "freud-angustia", author: .freud, name: "Angústia-sinal",
            summary: "Em 1926 Freud inverte a teoria anterior: a angústia não nasce do recalque, ela o desencadeia. O ego emite a angústia como sinal diante de um perigo, para acionar a defesa.",
            work: "Inibição, sintoma e angústia (1926)"
        ),

        // MARK: Klein
        Concept(
            id: "klein-esquizoparanoide", author: .klein, name: "Posição esquizoparanoide",
            summary: "Organização de angústias e defesas dos primeiros meses: cisão do objeto em bom e mau, idealização e angústia persecutória. Não é uma fase superada de uma vez; é uma posição a que se pode regredir ao longo da vida.",
            work: "Notas sobre alguns mecanismos esquizoides (1946)"
        ),
        Concept(
            id: "klein-depressiva", author: .klein, name: "Posição depressiva",
            summary: "O bebê reconhece que o objeto bom e o mau são o mesmo e passa a temer ter danificado quem ama. Surgem culpa, preocupação com o objeto e o impulso de reparação.",
            work: "Uma contribuição à psicogênese dos estados maníaco-depressivos (1935)"
        ),
        Concept(
            id: "klein-identificacao-projetiva", author: .klein, name: "Identificação projetiva",
            summary: "Fantasia de projetar partes do self no objeto, para controlá-lo ou livrar-se delas. Bion a amplia depois como forma de comunicação primitiva.",
            work: "Notas sobre alguns mecanismos esquizoides (1946)"
        ),
        Concept(
            id: "klein-inveja", author: .klein, name: "Inveja",
            summary: "Impulso de destruir o que o outro tem de bom justamente por ser bom. Distingue-se do ciúme, que envolve três pessoas, e da voracidade, que busca esvaziar o objeto.",
            work: "Inveja e gratidão (1957)"
        ),

        // MARK: Winnicott
        Concept(
            id: "winnicott-transicional", author: .winnicott, name: "Objeto transicional",
            summary: "Primeira posse \"não-eu\" do bebê. Ocupa uma área intermediária entre o subjetivo e o objetivo, e não se pergunta à criança se o objeto foi criado por ela ou encontrado.",
            work: "Objetos transicionais e fenômenos transicionais (apresentado em 1951, publicado em 1953)"
        ),
        Concept(
            id: "winnicott-holding", author: .winnicott, name: "Mãe suficientemente boa e holding",
            summary: "A mãe suficientemente boa se adapta quase por completo no início e falha de modo gradual, o que permite ao bebê tolerar a frustração. Holding é o sustentar físico e psíquico que garante a continuidade do ser.",
            work: "Objetos transicionais e fenômenos transicionais (1953); A teoria do relacionamento paterno-infantil (1960)"
        ),
        Concept(
            id: "winnicott-falso-self", author: .winnicott, name: "Falso self",
            summary: "Organização defensiva que protege o verdadeiro self e se constrói por submissão às exigências do ambiente. Varia de um traço de polidez a uma dissociação grave.",
            work: "Distorção do ego em termos de falso e verdadeiro self (1960)"
        ),
        Concept(
            id: "winnicott-uso-objeto", author: .winnicott, name: "Uso do objeto",
            summary: "O objeto sobrevive à destruição fantasiada, não retalia, e por isso passa a ser reconhecido como externo e real, não mais como projeção do sujeito.",
            work: "O uso de um objeto e o relacionamento por meio de identificações (1969)"
        ),
        Concept(
            id: "winnicott-espaco-potencial", author: .winnicott, name: "Espaço potencial",
            summary: "Área do brincar e da experiência cultural, situada entre a realidade interna e a externa. Onde se dá a criatividade.",
            work: "O brincar e a realidade (1971)"
        ),

        // MARK: Lacan
        Concept(
            id: "lacan-espelho", author: .lacan, name: "Estádio do espelho",
            summary: "Entre os seis e os dezoito meses, a criança antecipa uma unidade corporal na imagem especular. O eu se forma por identificação imaginária e carrega uma alienação constitutiva.",
            work: "O estádio do espelho como formador da função do eu (1949), em Escritos"
        ),
        Concept(
            id: "lacan-rsi", author: .lacan, name: "Real, simbólico e imaginário",
            summary: "Três registros que organizam a experiência: o imaginário (imagem, semelhante), o simbólico (linguagem, lei, o Outro) e o real (o que escapa à simbolização).",
            work: "O simbólico, o imaginário e o real (conferência de 1953)"
        ),
        Concept(
            id: "lacan-significante", author: .lacan, name: "Significante",
            summary: "O inconsciente é estruturado como uma linguagem. O significante prevalece sobre o significado, que desliza sob ele, e o sujeito é efeito da cadeia significante.",
            work: "A instância da letra no inconsciente ou a razão desde Freud (1957)"
        ),
        Concept(
            id: "lacan-nome-do-pai", author: .lacan, name: "Nome-do-Pai e foraclusão",
            summary: "O Nome-do-Pai é o significante que sustenta a função paterna e a lei simbólica. Sua foraclusão (rejeição primordial) é o mecanismo próprio da psicose.",
            work: "O Seminário, livro 3: as psicoses (1955-56)"
        ),
        Concept(
            id: "lacan-objeto-a", author: .lacan, name: "Objeto a",
            summary: "Causa do desejo: resto não simbolizável da operação em que o sujeito se constitui diante do Outro. Tem relação direta com a angústia.",
            work: "O Seminário, livro 10: a angústia (1962-63)"
        ),

        // MARK: Bion
        Concept(
            id: "bion-funcao-alfa", author: .bion, name: "Elementos beta e função alfa",
            summary: "Impressões sensoriais e emocionais brutas (elementos beta) não podem ser pensadas. A função alfa as transforma em elementos alfa, que servem para sonhar, pensar e recalcar.",
            work: "Aprendendo com a experiência (1962)"
        ),
        Concept(
            id: "bion-reverie", author: .bion, name: "Rêverie",
            summary: "Capacidade da mãe (e do analista) de acolher as projeções do bebê, metabolizá-las e devolvê-las com sentido, de forma tolerável.",
            work: "Aprendendo com a experiência (1962)"
        ),
        Concept(
            id: "bion-continente", author: .bion, name: "Continente e conteúdo",
            summary: "Modelo da relação em que uma mente (continente) recebe e transforma o que outra projeta (conteúdo). Quando a contenção falha, o afeto retorna ainda mais ameaçador.",
            work: "Aprendendo com a experiência (1962); Elementos de psicanálise (1963)"
        ),
        Concept(
            id: "bion-ataques-elo", author: .bion, name: "Ataques ao elo",
            summary: "Ataque às ligações entre objetos, pensamentos e afetos, típico do funcionamento psicótico da personalidade.",
            work: "Ataques ao elo (1959)"
        ),
        Concept(
            id: "bion-grupos", author: .bion, name: "Pressupostos básicos",
            summary: "Em grupos, emoções primitivas organizam o funcionamento sob três pressupostos básicos: dependência, luta e fuga, e acasalamento. Coexistem com o grupo de trabalho.",
            work: "Experiências com grupos (1961)"
        ),
    ]

    // MARK: Comparação entre autores

    struct Theme: Identifiable, Hashable {
        let id: String
        let title: String
        let lines: [Author: String]
    }

    static let themes: [Theme] = [
        Theme(
            id: "constituicao", title: "Constituição do eu",
            lines: [
                .freud: "O ego se diferencia do id a partir do contato com a realidade e de identificações sucessivas.",
                .klein: "Há ego desde o início, que se estrutura por cisões e introjeções de objetos parciais e depois totais.",
                .winnicott: "Depende do ambiente facilitador: a integração parte de um estado de não-integração, sustentada pelo holding.",
                .lacan: "O eu nasce da imagem especular, com alienação imaginária, e o sujeito é capturado pelo significante.",
                .bion: "O aparelho de pensar surge da relação continente-conteúdo e da função alfa do objeto.",
            ]
        ),
        Theme(
            id: "angustia", title: "Angústia",
            lines: [
                .freud: "Sinal emitido pelo ego diante do perigo (1926). Antes, libido sem descarga.",
                .klein: "Angústia persecutória e depressiva, ligadas ao conflito entre pulsão de vida e de morte.",
                .winnicott: "Agonias primitivas, \"impensáveis\", ligadas a falhas do ambiente antes da integração do self.",
                .lacan: "É o afeto que não engana: surge quando falta a falta, na proximidade do objeto a.",
                .bion: "Terror sem nome: o que se projeta não é contido e retorna sem significado.",
            ]
        ),
        Theme(
            id: "objeto", title: "Objeto",
            lines: [
                .freud: "O elemento mais variável da pulsão; aquilo por meio do qual ela atinge o alvo.",
                .klein: "Objetos internos, bons e maus, formados por introjeção e projeção.",
                .winnicott: "Do objeto subjetivo ao transicional e, por fim, ao objeto objetivamente percebido.",
                .lacan: "O objeto a é causa do desejo, não um objeto a ser alcançado.",
                .bion: "O objeto funciona como continente que transforma a experiência emocional.",
            ]
        ),
        Theme(
            id: "clinica", title: "Posição do analista",
            lines: [
                .freud: "Neutralidade e abstinência; interpreta resistência e transferência.",
                .klein: "Interpreta ansiedade e defesas na transferência, inclusive as mais precoces.",
                .winnicott: "Oferece holding e setting confiável; interpreta com parcimônia e acolhe a regressão.",
                .lacan: "Ocupa o lugar de objeto a e de sujeito suposto saber; usa o corte da sessão.",
                .bion: "Trabalha \"sem memória e sem desejo\" e com rêverie para receber o que é projetado.",
            ]
        ),
    ]
}
