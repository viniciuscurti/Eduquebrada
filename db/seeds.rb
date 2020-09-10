# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
require "open-uri"

Lesson.destroy_all
Course.destroy_all
User.destroy_all
Quiz.destroy_all
Enrollment.destroy_all
Answer.destroy_all


puts "Start"

['Meio Ambiente', 'Economia', 'Empreendedorismo', 'Matemática']

# Curso Educação Ambiental

file = URI.open('https://pbs.twimg.com/profile_images/756105761193857024/dC_s9UYh_400x400.jpg')
user = User.new(
  name: "Universidade Corporativa do Transporte",
  email: "contato@uct-fetranspor.com.br",
  password: Faker::Internet.password(min_length: 8),
  cpf: Faker::IDNumber.brazilian_id,
  phone: Faker::Number.number(digits: 10),
  occupation: "Instituição de ensino",
  teacher: true
)
user.photo.attach(io: file, filename: 'nes.png', content_type: 'image/png')
user.save!

file = URI.open('https://static.todamateria.com.br/upload/ed/uc/educaa_a_o_ambiental_1.jpg')
course = Course.new(
  name: "Educação Ambiental",
  category: 'Meio Ambiente',
  description: 'Qual é a maior floresta urbana do mundo? Floresta da Tijuca? Não, essa é a segunda maior. Então qual é a maior? Essa resposta e outras ainda mais surpreendentes, você verá em Educação Ambiental, a nova série da UCT. Com imagens deslumbrantes da natureza do Rio de Janeiro, a série de 9 episódios dará dicas de como você pode melhorar sua qualidade de vida e ainda economizar com pequenas mudanças de atitude.',
  url: "https://www.youtube.com/embed/HEdNerolZSw",
  user: user
)
course.photo.attach(io: file, filename: 'nes.png', content_type: 'image/png')
course.save!

Lesson.new(
  name: 'Ecossistema e desequilíbrio ecológico',
  chapter: 'Módulo Único',
  url: "https://www.youtube.com/embed/BHfvd3OPTeI",
  description: 'No episódio de estreia o biólogo Vinicius Thees, que irá nos guiar por esta jornada em defesa da natureza, fala sobre as consequências da ação do homem no meio ambiente. Saiba como você pode ajudar a minimizar os impactos ambientais.',
  course: course
).save!

Lesson.new(
  name: "Animais",
  chapter: 'Módulo Único',
  url: "https://www.youtube.com/embed/AnVJSdtBIMA",
  description: 'Neste episódio você conhece a diferença entre animais nativos e exóticos, silvestres e domésticos. Vinicius Thees também mostra como podemos contribuir para a diminuição do tráfico de animais silvestres e para a campanha pela extinção das gaiolas. ',
  course: course
).save!

Lesson.new(
  name: "Mata Atlântica",
  chapter: 'Módulo Único',
  url: "https://www.youtube.com/embed/QqvWi-Ozhkg",
  description: 'Neste episódio o biólogo Vinicius Thees fala sobre a importância da Mata Atlântica para nossa qualidade de vida e como podemos ajudar na sua preservação. O programa também tem imagens belíssimas do manguezal, da restinga e da maior floresta urbana do mundo. Você sabe qual é?',
  course: course
).save!

Lesson.new(
  name: "Água",
  chapter: 'Módulo Único',
  url: "https://www.youtube.com/embed/RJMRCxY4vws",
  description: 'Neste episódio o biólogo Vinicius Thees mostra o exemplo de um condomínio que reaproveita e economiza na conta de água. Também fala sobre a importância da água e faz um passeio de barco pela Lagoa de Marapendi, com lindas imagens da natureza.',
  course: course
).save!

Lesson.new(
  name: "Lixo e Coleta Seletiva",
  chapter: 'Módulo Único',
  url: "https://www.youtube.com/embed/vcMkUKlUwcI",
  description: 'O costume que o brasileiro tem de jogar lixo na rua é tão estranho que joga-se lixo até em sua área de lazer: a praia. O biólogo Vinicius Thees vai até uma praia para ver os resíduos que se deixa na areia e fala das consequências de não se dar o destino adequado ao lixo. Também visita um condomínio que faz coleta seletiva, dando dicas de como implantá-la.',
  course: course
).save!

Lesson.new(
  name: "Energia",
  chapter: 'Módulo Único',
  url: "https://www.youtube.com/embed/s0g6GWl4GJQ",
  description: 'É possível optar por fontes de energias mais limpas no dia a dia? O biólogo Vinicius Thees explica porque esse tema é tão importante e mostra que a escolha da fonte de energia pode estar ao alcance de nossas mãos. Também visita uma usina que transforma lixo em energia e um condomínio que economiza na conta de luz usando a energia solar.',
  course: course
).save!

Lesson.new(
  name: "Transporte Sustentável",
  chapter: 'Módulo Único',
  url: "https://www.youtube.com/embed/JMAo6Vvhka4",
  description: 'Faz diferença se deslocar pela cidade de carro, ônibus ou bicicleta? Neste episódio Vinicius Thees mostra que os meios de transporte afetam diretamente o meio ambiente e a nossa qualidade de vida. Também dá dicas de como podemos contribuir para uma mobilidade urbana sustentável e visita o BRT Transoeste para mostrar como a tecnologia é uma grande aliada contra a poluição.',
  course: course
).save!

Lesson.new(
  name: "Hábitos de Consumo",
  chapter: 'Módulo Único',
  url: "https://www.youtube.com/embed/0aW_TYLz4ew",
  description: 'Os hábitos de consumo atuais fizeram disparar a produção de lixo e o uso de recursos naturais a ponto de prejudicar nossa própria qualidade de vida. Neste episódio o biólogo Vinicius Thees mostra que pequenas mudanças de atitude podem fazem uma enorme diferença para o bolso e para o planeta. Também explica o que é pegada ecológica e como você pode calcular a sua.',
  course: course
).save!

Lesson.new(
  name: "Ecoturismo",
  chapter: 'Módulo Único',
  url: "https://www.youtube.com/embed/48waORmA3d4",
  description: 'No último episódio da série o biólogo Vinicius Thees visita lugares pouco conhecidos dos cariocas como as praias selvagens de Barra de Guaratiba e as Ilhas Cagarras. Também dá dicas de como o turista pode diminuir o seu impacto ambiental e de como o ecoturismo pode ser uma boa opção que agregue desenvolvimento econômico com preservação ambiental.',
  course: course
).save!

Quiz.new(
  question: "O modelo de desenvolvimento adotado desde a Revolução Industrial trouxe impactos significativos na qualidade de vida dos seres humanos. Desde então, o crescimento econômico tem ocorrido de forma desordenada, sem planejamento e à custa de níveis crescentes de poluição e degradação ambiental. A consciência crítica sobre o modo de vida e a interferência no meio ambiente devem ser repensados por meio da reflexão sobre as ações do homem. Considerando o tema educação ambiental, sociedade e ambiente, uma forma de desenvolver o pensamento crítico em relação ao meio ambiente é:",
  answer_1: "analisando criticamente os direitos e deveres de cada cidadão, mobilizando a participação social e a representatividade do coletivo na busca da melhor qualidade de vida.",
  answer_2: "se comprometendo com a educação ambiental, a fim de fortalecer os conceitos de cidadania sem comprometer o modo de vida daqueles que buscam o mundo capitalista.",
  answer_3: "impondo a consciência crítica sobre o papel do homem na natureza.",
  answer_4: "definindo ações em busca da sustentabilidade ambiental, que afeta negativamente o crescimento econômico da sociedade atual que tem suas bases em um sistema capitalista.",
  answer_5: "N/A",
  course: course
).save!

Quiz.new(
  question: "'A ___________________ é uma dimensão da educação, é atividade intencional da prática social, que deve imprimir ao desenvolvimento ___________________ um caráter social em sua relação com a natureza e com os outros seres humanos, visando potencializar essa atividade humana com a finalidade de torná-la plena de prática social e de ética ambiental.' Assinale a alternativa que completa corretamente as lacunas do texto:",
  answer_1: "educação ambiental / individual",
  answer_2: "sociologia / sustentável",
  answer_3: "sustentabilidade / coletivo",
  answer_4: "educação social / sustentável",
  answer_5: "educação moral / tecnológico",
  course: course
).save!

Quiz.new(
  question: "Assinale a alternativa que indica corretamente o nome que se dá à educação que é uma proposta de filosofia de vida que resgata valores éticos, estéticos, democráticos e humanistas. Parte de um princípio de respeito pela diversidade natural e cultural, que inclui a especificidade de classe, etnia e gênero:",
  answer_1: "Educação Ambiental",
  answer_2: "Educação Social",
  answer_3: "Educação Étnico Racial",
  answer_4: "Educação Fundamental",
  answer_5: "Educação de Jovens e Adultos",
  course: course
).save!

Quiz.new(
  question: "Para a coleta seletiva de lixo, os resíduos orgânicos, de plástico, de papelão e de vidro, são, respectivamente, descartados, em cestos de cor:",
  answer_1: "marrom, vermelho, azul e verde.",
  answer_2: "verde, amarelo, azul e marrom.",
  answer_3: "amarelo, vermelho, marrom e azul.",
  answer_4: "vermelho, verde, amarelo e azul.",
  answer_5: "azul, vermelho, preto e branco",
  course: course
).save!
Quiz.new(
  question: "Todas as alternativas abaixo apontam princípios básicos da Educação Ambiental, exceto o contido em:",
  answer_1: "A abordagem restrita a questões ambientais locais.",
  answer_2: "O enfoque humanista, holístico, democrático e participativo.",
  answer_3: "A concepção do meio ambiente em sua totalidade, considerando a interdependência entre o meio natural, o socioeconômico e o cultural, sob o enfoque da sustentabilidade.",
  answer_4: "O pluralismo de ideias e concepções pedagógicas, na perspectiva da inter, multi e transdisciplinaridade.",
  answer_5: "A vinculação entre a ética, a educação, o trabalho e as práticas sociais.",
  course: course
).save!
Quiz.new(
  question: "Em relação ao conceito e aos princípios da sustentabilidade, assinale a alternativa INCORRETA.",
  answer_1: "A sustentabilidade é baseada no tripé (triple bottom line): Educação, Meio Ambiente e Economia.",
  answer_2: "As ações sustentáveis podem ser adotadas em um nível individual, comunitário ou global, dependendo do alcance dessas ações.",
  answer_3: "Desenvolvimento sustentável pode ser conceituado como o desenvolvimento que satisfaz as necessidades do presente sem comprometer a capacidade das gerações futuras de satisfazerem suas próprias necessidades.",
  answer_4: "Sustentabilidade pode ser conceituado como a capacidade de sustentação ou conservação de um processo ou sistema.",
  answer_5: "A sustentabilidade ambiental abrange a conservação e a manutenção do meio ambiente.",
  course: course
).save!
Quiz.new(
  question: "Para o uso racional da água é necessário",
  answer_1: "incentivar mudanças de hábitos e eliminar vícios de desperdício, com foco na conservação, e consequente aumento da disponibilidade de água.",
  answer_2: "investir na ampliação do sistema de tratamento de esgoto de modo que a degradação da água por efluentes clandestinos seja minimizada.",
  answer_3: "investir na ampliação do sistema produtor de água a fim de fornecer água em quantidades que garantam o desenvolvimento futuro.",
  answer_4: "incentivar o desenvolvimento de novas tecnologias, voltadas ao aumento da produção de água, a fim de manter o nível do consumo.",
  answer_5: "investir na criação de novos mananciais, garantindo a curto e médio prazos, o fornecimento da água necessária à população.",
  course: course
).save!
Quiz.new(
  question: "Isabel Cristina de Moura Carvalho, no livro Educação Ambiental: a formação do sujeito ecológico (2008), sugere que para renovar a nossa visão de mundo, às vezes, é importante trocar as lentes, implicando em desnaturalizar os modos óbvios que tínhamos de ver as coisas. Isso é necessário, por exemplo, nas questões relativas ao meio ambiente. Propondo lançar novos olhares sobre a percepção de ambiente disseminada no conjunto da sociedade, a autora propõe uma visão socioambiental que consiste, em linhas gerais, numa visão:",
  answer_1: "orientada por uma racionalidade complexa e interdisciplinar, pensando o ambiente como um campo de interações entre a cultura, a sociedade e a base física e biológica dos processos vitais.",
  answer_2: "orientada por uma racionalidade complexa e interdisciplinar, pensando o ambiente como sinônimo de natureza intocada, mas que pode ser afetado pelas constantes ações antrópicas e por fenômenos naturais.",
  answer_3: "que tende a considerar a natureza como o mundo de ordem biológica, pacificada, equilibrada, estável em suas interações ecossistêmicas, o qual segue vivendo como autônomo e independente da interação com o mundo cultural humano.",
  answer_4: "que tende a considerar a natureza como o mundo de ordem biológica, o qual segue vivendo como autônomo e independente da interação com o mundo cultural humano, exceto no caso de populações ribeirinhas e indígenas.",
  answer_5: "orientada por uma racionalidade complexa e interdisciplinar, pensando o ambiente como um campo de interações entre a cultura e a sociedade, desconsiderando- se a base física e biológica dos processos vitais.",
  course: course
).save!

Quiz.new(
  question: "No que concerne à Educação Ambiental e à Política Nacional de Educação Ambiental, analise:

            I. A primeira deve ter como base o pensamento crítico e inovador, em qualquer tempo ou lugar, em seus modos formal, não formal e informal, promovendo a transformação e a construção da sociedade.

            II. A primeira pode ser entendida como os processos por meio dos quais o indivíduo e a coletividade constroem valores sociais, conhecimentos, habilidades, atitudes e competências voltadas para a conservação do meio ambiente.

            III. A primeira é um componente essencial e permanente da educação nacional, devendo estar presente de forma articulada e, segundo a Constituição Federal, restrita a todos os níveis e modalidades do processo educativo de caráter formal.

            IV. A segunda tem sua esfera de ação restrita aos órgãos e entidades integrantes do Sistema Nacional de Meio Ambiente e instituições educacionais públicas e privadas dos sistemas de ensino.

            V. A segunda é coordenada por um órgão gestor que define as diretrizes para sua implementação e articula, coordena e supervisiona os planos, programas e projetos na área de educação ambiental em âmbito nacional.

            É correto o que consta APENAS em",
  answer_1: "I, II e V.",
  answer_2: "I, II e IV.",
  answer_3: "I, IV e V.",
  answer_4: "II, III, IV e V.",
  answer_5: "III, IV e V.",
  course: course
).save!

Quiz.new(
  question: "Uma das práticas a ser adotada visando a efetiva conservação da natureza e o desenvolvimento sustentável é, sem dúvidas, a educação ambiental. Considerando os diferentes aspectos desse processo, assinale a alternativa incorreta.",
  answer_1: "A participação coletiva corresponde a um dos objetivos fundamentais da educação ambiental na lei brasileira, sendo incentivada em detrimento da participação individual.",
  answer_2: "A Lei Federal nº 9.795/99, que dispõe sobre a Política Nacional de Educação Ambiental, estipula que ela não seja uma prática instituída como disciplina específica no currículo de ensino.",
  answer_3: "A interdisciplinaridade representa um princípio da educação ambiental não só no Brasil, como também no cenário internacional.",
  answer_4: "A abordagem participativa integra as populações locais na conservação de um ambiente, sendo os insucessos encarados como parte do processo de aprendizagem.",
  answer_5: "N/A",
  course: course
).save!


file = URI.open('https://lh3.googleusercontent.com/j9veNeLnxg3MzfIx7FaRjHWX7CX_4BKn0sTtP2pCTLkuJh916-qGH8Kz5WOIN01i3ZO2wdFlgSjZK7o_HtHkFg=w953')
user = User.new(
  name: "Profa. Pamba",
  email: "assessoria@redacaoegramatica.com.br",
  password: Faker::Internet.password(min_length: 8),
  cpf: Faker::IDNumber.brazilian_id,
  phone: Faker::Number.number(digits: 10),
  occupation: "Professora de Redação e Gramática",
  teacher: true
)
user.photo.attach(io: file, filename: 'nes.png', content_type: 'image/png')
user.save!

1.times do
  file = URI.open("data:image/jpeg;base64,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")
  course = Course.new(
    name: "CURSO DE LINGUAGENS COMPLETO: ENEM",
    category: 'ENEM',
    description: 'Por que o ensino de língua portuguesa é dado de forma tão complicada? Foi esse tipo de questionamento que me levou a acreditar que aprender não precisa ser chato, ao contrário, o ato precisa ser prazeroso e leve. Por esse motivo, sou apaixonada pelo o que faço: ensinar com muita diversão, pois a ponte entre entender o conteúdo e o aluno é construída ao passo que nos identificamos, vemos que somos próximos e não criamos barreiras. Aprender não precisa ser chato e eu aprendi isso ensinando. Seja muito bem-vindo ao Canal Redação e Gramática Zica! ',
    url: "https://www.youtube.com/embed/49OirKhfqzc",
    user: user
  )
  course.photo.attach(io: file, filename: 'nes.png', content_type: 'image/png')
  course.save!

  Lesson.new(
    name: "Aula 1",
    chapter: 'Módulo Único',
    url: "https://www.youtube.com/embed/9cZ7MBGh1fU",
    description: "GABARITE LINGUAGENS NO ENEM",
    course: course
  ).save!

  Lesson.new(
    name: "Aula 2",
    chapter: 'Módulo Único',
    url: "https://www.youtube.com/embed/s6L2a1X_9a4",
    description: "COMPETÊNCIA 1 DA PROVA DE LINGUAGENS",
    course: course
  ).save!

  Lesson.new(
    name: "Aula 3",
    chapter: 'Módulo Único',
    url: "https://www.youtube.com/embed/eN9nxNpAdhI",
    description: "COMPETÊNCIA 3 DA PROVA DE LINGUAGENS",
    course: course
  ).save!

  Lesson.new(
    name: "Aula 4",
    chapter: 'Módulo Único',
    url: "https://www.youtube.com/embed/SQrJ8BIYU-w",
    description: "COMPETÊNCIA 4 DA PROVA DE LINGUAGENS",
    course: course
  ).save!

  Lesson.new(
    name: "Aula 5",
    chapter: 'Módulo Único',
    url: "https://www.youtube.com/embed/KSkeCNwoCEk",
    description: "COMPETÊNCIA 5 DA PROVA DE LINGUAGENS",
    course: course
  ).save!

  Lesson.new(
    name: "Aula 6",
    chapter: 'Módulo Único',
    url: "https://www.youtube.com/embed/4yIYPNLzInk",
    description: "COMPETÊNCIA 6 DA PROVA DE LINGUAGENS",
    course: course
  ).save!

  Lesson.new(
    name: "Aula 7",
    chapter: 'Módulo Único',
    url: "https://www.youtube.com/embed/pLL8d89-C_0",
    description: "COMPETÊNCIA 7 DA PROVA DE LINGUAGENS",
    course: course
  ).save!

  Lesson.new(
    name: "Aula 8",
    chapter: 'Módulo Único',
    url: "https://www.youtube.com/embed/r2lqyTtZI48",
    description: "COMPETÊNCIA 8 DA PROVA DE LINGUAGENS",
    course: course
  ).save!

  Lesson.new(
    name: "Aula 9",
    chapter: 'Módulo Único',
    url: "https://www.youtube.com/embed/jz01sIyysu8",
    description: "COMPETÊNCIA 9 DA PROVA DE LINGUAGENS",
    course: course
  ).save!

  Quiz.new(
    question: "'Há tempos que a leitura está em pauta. E, diz-se, em crise. Comenta-se esta crise, por exemplo, apontando a precariedade das práticas de leitura, lamentando a falta de familiaridade dos jovens com livros, reclamando da falta de bibliotecas em tantos municípios, do preço dos livros em livrarias, num nunca acabar de problemas e de carências. Mas, de um tempo para cá, pesquisas acadêmicas vêm dizendo que talvez não seja exatamente assim, que brasileiros leem, sim, só que leem livros que as pesquisas tradicionais não levam em conta. E, também de um tempo para cá, políticas educacionais têm tomado a peito investir em livros e em leitura. - Os falantes, nos textos que produzem, sejam orais ou escritos, posicionam-se frente a assuntos que geram consenso ou despertam polêmica. No texto, a autora:'",
    answer_1: "questiona a existência de uma crise de leitura com base nos dados de pesquisas acadêmicas.",
    answer_2: "atribui a crise da leitura à falta de incentivos e ao desinteresse dos jovens por livros de qualidade.",
    answer_3: "ressalta a importância de os professores incentivarem os jovens às práticas de leitura.",
    answer_4: "critica pesquisas tradicionais que atribuem a falta de leitura à precariedade de bibliotecas.",
    answer_5: "rebate a ideia de que as políticas educacionais são eficazes no combate à crise de leitura.",
    course: course
    ).save!

  Quiz.new(
    question: "'(Enem/2017) Essas moças tinham o vezo de afirmar o contrário do que desejavam. Notei a singularidade quando principiaram a elogiar o meu paletó cor de macaco. Examinavam-no sérias, achavam o pano e os aviamentos de qualidade superior, o feitio admirável. Envaideci-me: nunca havia reparado em tais vantagens. Mas os gabas se prolongaram, trouxeram-me desconfiança. Percebi afinal que elas zombavam e não me susceptibilizei. Longe disso: achei curiosa aquela maneira de falar pelo avesso, diferente das grosserias a que me habituara. Em geral me diziam com franqueza que a roupa não me assentava no corpo, sobrava nos sovacos.' - Por meio de recursos linguísticos, os textos mobilizam estratégias para introduzir e retomar ideias, promovendo a progressão do tema. No fragmento transcrito, um novo aspecto do tema é introduzido pela expressão",
    answer_1: "'Longe disso.'",
    answer_2: "'Em geral'",
    answer_3: "'a singularidade'",
    answer_4: "'tais vantagens'",
    answer_5: "'os gabos'",
    course: course
    ).save!
  Quiz.new(
    question: "'No caso do esporte, a mediação efetuada pela câmera de TV construiu uma nova modalidade de consumo: o esporte telespetáculo, realidade textual relativamente autônoma face à prática “real” do esporte, construída pela codificação e mediação dos eventos esportivos efetuados pelo enquadramento, edição das imagens e comentários, interpretando para o espectador o que ele está vendo. Esse fenômeno tende a valorizar a forma em relação ao conteúdo, e para tal faz uso privilegiado da linguagem audiovisual com ênfase na imagem cujas possibilidades são levadas cada vez mais adiante, em decorrência dos avanços tecnológicos. Por outro lado, a narração esportiva propõe uma concepção hegemônica de esporte: esporte é esforço máximo, busca da vitória, dinheiro... O preço que se paga por sua espetacularização é a fragmentação do fenômeno esportivo. A experiência global do ser-atleta é modificada: a sociabilização no confronto e a ludicidade não são vivências privilegiadas no enfoque das mídias, mas as eventuais manifestações de violência, em partidas de futebol, por exemplo, são exibidas e reexibidas em todo o mundo.' - A reflexão trazida pelo texto, que aborda o esporte telespetáculo, está fundamentada na",
    answer_1: "distorção da experiência do ser-atleta para os espectadores.",
    answer_2: "interpretação dos espectadores sobre o conteúdo transmitido.",
    answer_3: "utilização de equipamentos audiovisuais de última geração.",
    answer_4: "valorização de uma visão ampliada do esporte.",
    answer_5: "equiparação entre a forma e o conteúdo.",
    course: course
    ).save!
  Quiz.new(
    question: "'Meu caro Sherlock Holmes, algo horrível aconteceu às três da manhã no Jardim Lauriston. Nosso homem que estava na vigia viu uma luz às duas da manhã saindo de uma casa vazia. Quando se aproximou, encontrou a porta aberta e, na sala da frente, o corpo de um cavalheiro bem vestido. Os cartões que estavam em seu bolso tinham o nome de Enoch J. Drebber, Cleveland, Ohio, EUA. Não houve assalto e nosso homem não conseguiu encontrar algo que indicasse como ele morreu. Não havia marcas de sangue, nem feridas nele. Não sabemos como ele entrou na casa vazia. Na verdade, todo assunto é um quebra-cabeça sem fim. Se puder vir até a casa seria ótimo, se não, eu lhe conto os detalhes e gostaria muito de saber sua opinião. Atenciosamente, Tobias Gregson.Meu caro Sherlock Holmes, algo horrível aconteceu às três da manhã no Jardim Lauriston. Nosso homem que estava na vigia viu uma luz às duas da manhã saindo de uma casa vazia. Quando se aproximou, encontrou a porta aberta e, na sala da frente, o corpo de um cavalheiro bem vestido. Os cartões que estavam em seu bolso tinham o nome de Enoch J. Drebber, Cleveland, Ohio, EUA. Não houve assalto e nosso homem não conseguiu encontrar algo que indicasse como ele morreu. Não havia marcas de sangue, nem feridas nele. Não sabemos como ele entrou na casa vazia. Na verdade, todo assunto é um quebra-cabeça sem fim. Se puder vir até a casa seria ótimo, se não, eu lhe conto os detalhes e gostaria muito de saber sua opinião. Atenciosamente, Tobias Gregson.' - Considerando o objetivo da carta de Tobias Gregson, a sequência de enunciados negativos presente nesse texto tem a função de",
    answer_1: "refutar possíveis causas da morte do cavalheiro, auxiliando na investigação.",
    answer_2: "restringir a investigação, deixando-a sob a responsabilidade do autor da carta.",
    answer_3: "identificar o local da cena do crime, localizando-o no Jardim Lauriston.",
    answer_4: "introduzir o destinatário da carta, caracterizando sua personalidade.",
    answer_5: "apresentar o vigia, incluindo-o entre os suspeitos do assassinato.",
    course: course
    ).save!
  Quiz.new(
    question: "'A  rede é, virtual em que as comunidades auxiliam seus membros a aprender o que querem saber. Os dados não representam senão a matéria-prima de um processo intelectual e social vivo, altamente elaborado. Enfim, toda inteligência coletiva do mundo jamais dispensará a inteligência pessoal, o esforço individual e o tempo necessário para aprender, pesquisar, avaliar e integrar-se a diversas comunidades, sejam elas virtuais ou não. A rede jamais pensará em seu lugar, fique tranquilo.' - No contexto das novas tecnologias de informação e comunicação, a circulação de saberes depende da",
    answer_1: "contribuição dos usuários.",
    answer_2: "otimização do tempo.",
    answer_3: "confiabilidade dos sites.",
    answer_4: "quantidade de informação.",
    answer_5: "colaboração de intelectuais.",
    course: course
    ).save!
  Quiz.new(
    question: "'Ela nasceu lesma, vivia no meio das lesmas, mas não estava satisfeita com sua condição. Não passamos de criaturas desprezadas, queixava-se. Só somos conhecidas por nossa lentidão. O rastro que deixaremos na História será tão desprezível quanto a gosma que marca nossa passagem pelos pavimentos. A esta frustração correspondia um sonho: a lesma queria ser como aquele parente distante, o escargot. O simples nome já a deixava fascinada: um termo francês, elegante, sofisticado, um termo que as pessoas pronunciavam com respeito e até com admiração. Mas, lembravam as outras lesmas, os escargots são comidos, enquanto nós pelo menos temos chance de sobreviver. Este argumento não convencia a insatisfeita lesma, ao contrário: preferiria exatamente terminar sua vida desta maneira, numa mesa de toalha adamascada, entre talheres de prata e cálices de cristal. Assim como o mar é o único túmulo digno de um almirante batavo, respondia, a travessa de porcelana é a única lápide digna dos meus sonhos.' - Incorporando o devaneio da personagem, o narrador compõe uma alegoria que representa o anseio de",
    answer_1: "materializar expectativas de natureza utópica.",
    answer_2: "rejeitar metas de superação de desafios.",
    answer_3: "restaurar o estado de felicidade pregressa.",
    answer_4: "rivalizar com indivíduos de condição privilegiada.",
    answer_5: "valorizar as experiências hedonistas do presente.",
    course: course
    ).save!
  Quiz.new(
    question: "'Antes de Roma ser fundada, as colinas de Alba eram ocupadas por  tribos latinas,  que dividiam o ano de acordo com seus deuses. Os romanos adaptaram essa estrutura. No princípio dessa civilização o ano tinha dez meses e começava por Martius (atual março). Os outros dois teriam sido acrescentados por Numa Pompílio, o segundo rei de Roma. Até Júlio César reformar o calendário local, os meses eram lunares, mas as festas em homenagem aos deuses permaneciam designadas pelas estações. O descompasso de dez dias por ano fazia com que, em todos os triênios, um décimo terceiro mês, o Intercalaris, tivesse que ser enxertado. Com a ajuda de matemáticos do Egito emprestados por Cleópatra, Júlio César acabou com a bagunça ao estabelecer o seguinte calendário solar: Januarius, Februarius, Martius, Aprilis, Maius, Junius, Quinctilis, Sextilis, September, October, November e December. Quase igual ao nosso, com as diferenças de que Quinctilis e Sextilis deram origem aos meses de julho e agosto.' - Considerando as informações no texto e  aspectos históricos da formação da língua,   a atual escrita dos meses do ano em português",
    answer_1: "reflete a origem latina de nossa língua.",
    answer_2: "decorre de uma língua falada no Egito antigo.",
    answer_3: "tem como base um calendário criado por Cleópatra.",
    answer_4: "segue a reformulação da norma da língua proposta por Júlio César.",
    answer_5: "resulta da padronização do calendário antes da fundação de Roma.",
    course: course
    ).save!
  Quiz.new(
    question: "'Na semana passada, os alunos do colégio do meu filho se mobilizaram, através do Twitter,  para não comprarem na cantina da escola naquele dia, pois acharam o preço do pão de queijo abusivo. São adolescentes. Quase senhores das novas tecnologias, transitam nas redes sociais, varrem o mundo através dos teclados dos celulares, iPads e se organizam para fazer um movimento pacífico de não comprar lanches por um dia. Foi parar na TV e em muitas páginas da internet.' - O texto aborda a temática das tecnologias da informação e comunicação, especificamente o uso de redes sociais. Muito se debate acerca dos benefícios e malefícios do uso desses recursos e, nesse sentido, o texto",
    answer_1: "trata as redes sociais como modo de agregar e empoderar grupos de pessoas, que se unem em prol de causas próprias ou de mudanças sociais.",
    answer_2: "aborda a discriminação que as redes sociais sofrem de outros meios de comunicação.",
    answer_3: "mostra que as reivindicações feitas nas redes sociais não têm impacto fora da internet.",
    answer_4: "expõe a possibilidade de as redes sociais favorecerem comportamentos e manifestações violentos dos adolescentes que nelas se relacionam.",
    answer_5: "evidencia que as redes sociais são usadas inadequadamente pelos adolescentes, que, imaturos, não utilizam a ferramenta como forma de mudança social.",
    course: course
    ).save!
  Quiz.new(
    question: "'O projeto DataViva consiste na oferta de dados oficiais sobre exportações, atividades econômicas, localidades e ocupações profissionais de todo o Brasil. Num primeiro momento, o DataViva construiu uma ferramenta que permitia a análise da economia mineira embasada por essa perspectiva metodológica complexa e diversa. No entanto, diante das possibilidades oferecidas pelas bases de dados trabalhadas, a plataforma evoluiu para um sistema mais completo. De maneira interativa e didática, o usuário é guiado por meio das diversas formas de navegação dos aplicativos. Além de informações sobre os produtos exportados, bem como acerca do volume das exportações em cada um dos estados e municípios do País, em poucos cliques, o interessado pode conhecer melhor o perfil da população, o tipo de atividade desenvolvida, as ocupações formais e a média salarial por categoria.' - Entre  as novas  possibilidades  promovidas  pelo  desenvolvimento  de novas  tecnologias, o texto destaca a",
    answer_1: "obtenção de informações estratégicas.",
    answer_2: "auditoria das ações de governo.",
    answer_3: "publicidade das entidades públicas.",
    answer_4: "disponibilidade de ambientes coletivos.",
    answer_5: "comunicação entre órgãos administrativos.",
    course: course
    ).save!
  Quiz.new(
    question: "'A educação para a saúde deverá ser alcançada mediante interação de ações que possam envolver o próprio homem mediante suas atitudes frente às exigências ambientais representadas pelos hábitos alimentares, estado de estresse, opções de lazer,  atividade física, agressões climáticas etc. Dessa forma, parece evidente que o estado     de ser saudável não é algo estático. Pelo contrário, torna-se necessário adquiri-lo e construí-lo de forma individualizada constantemente ao longo de toda a vida, apontando para o fato de que saúde é educável e, portanto, deve ser tratada não apenas com base em referenciais de natureza biológica e higienista, mas sobretudo em um contexto didático-pedagógico.' - A educação para a saúde pressupõe a adoção de comportamentos com base na interação de fatores relacionados à",
    answer_1: "constituição de hábitos saudáveis.",
    answer_2: "adesão a programas de lazer.",
    answer_3: "opção por dietas balanceadas.",
    answer_4: "evasão de ambientes estressores.",
    answer_5: "realização de atividades físicas regulares.",
    course: course
    ).save!
end

puts 'Finish'
