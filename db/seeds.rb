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

# Quiz.new(
#   question: "O modelo de desenvolvimento adotado desde a Revolução Industrial trouxe impactos significativos na qualidade de vida dos seres humanos. Desde então, o crescimento econômico tem ocorrido de forma desordenada, sem planejamento e à custa de níveis crescentes de poluição e degradação ambiental. A consciência crítica sobre o modo de vida e a interferência no meio ambiente devem ser repensados por meio da reflexão sobre as ações do homem. Considerando o tema educação ambiental, sociedade e ambiente, uma forma de desenvolver o pensamento crítico em relação ao meio ambiente é:",
#   answer_1: "analisando criticamente os direitos e deveres de cada cidadão, mobilizando a participação social e a representatividade do coletivo na busca da melhor qualidade de vida.",
#   answer_2: "se comprometendo com a educação ambiental, a fim de fortalecer os conceitos de cidadania sem comprometer o modo de vida daqueles que buscam o mundo capitalista.",
#   answer_3: "impondo a consciência crítica sobre o papel do homem na natureza.",
#   answer_4: "definindo ações em busca da sustentabilidade ambiental, que afeta negativamente o crescimento econômico da sociedade atual que tem suas bases em um sistema capitalista.",
#   answer_5: "N/A",
#   course: course
# ).save!

# Quiz.new(
#   question: "'A ___________________ é uma dimensão da educação, é atividade intencional da prática social, que deve imprimir ao desenvolvimento ___________________ um caráter social em sua relação com a natureza e com os outros seres humanos, visando potencializar essa atividade humana com a finalidade de torná-la plena de prática social e de ética ambiental.' Assinale a alternativa que completa corretamente as lacunas do texto:",
#   answer_1: "educação ambiental / individual",
#   answer_2: "sociologia / sustentável",
#   answer_3: "sustentabilidade / coletivo",
#   answer_4: "educação social / sustentável",
#   answer_5: "educação moral / tecnológico",
#   course: course
# ).save!

# Quiz.new(
#   question: "Assinale a alternativa que indica corretamente o nome que se dá à educação que é uma proposta de filosofia de vida que resgata valores éticos, estéticos, democráticos e humanistas. Parte de um princípio de respeito pela diversidade natural e cultural, que inclui a especificidade de classe, etnia e gênero:",
#   answer_1: "Educação Ambiental",
#   answer_2: "Educação Social",
#   answer_3: "Educação Étnico Racial",
#   answer_4: "Educação Fundamental",
#   answer_5: "Educação de Jovens e Adultos",
#   course: course
# ).save!

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

# Quiz.new(
#   question: "Isabel Cristina de Moura Carvalho, no livro Educação Ambiental: a formação do sujeito ecológico (2008), sugere que para renovar a nossa visão de mundo, às vezes, é importante trocar as lentes, implicando em desnaturalizar os modos óbvios que tínhamos de ver as coisas. Isso é necessário, por exemplo, nas questões relativas ao meio ambiente. Propondo lançar novos olhares sobre a percepção de ambiente disseminada no conjunto da sociedade, a autora propõe uma visão socioambiental que consiste, em linhas gerais, numa visão:",
#   answer_1: "orientada por uma racionalidade complexa e interdisciplinar, pensando o ambiente como um campo de interações entre a cultura, a sociedade e a base física e biológica dos processos vitais.",
#   answer_2: "orientada por uma racionalidade complexa e interdisciplinar, pensando o ambiente como sinônimo de natureza intocada, mas que pode ser afetado pelas constantes ações antrópicas e por fenômenos naturais.",
#   answer_3: "que tende a considerar a natureza como o mundo de ordem biológica, pacificada, equilibrada, estável em suas interações ecossistêmicas, o qual segue vivendo como autônomo e independente da interação com o mundo cultural humano.",
#   answer_4: "que tende a considerar a natureza como o mundo de ordem biológica, o qual segue vivendo como autônomo e independente da interação com o mundo cultural humano, exceto no caso de populações ribeirinhas e indígenas.",
#   answer_5: "orientada por uma racionalidade complexa e interdisciplinar, pensando o ambiente como um campo de interações entre a cultura e a sociedade, desconsiderando- se a base física e biológica dos processos vitais.",
#   course: course
# ).save!

# Quiz.new(
#   question: "No que concerne à Educação Ambiental e à Política Nacional de Educação Ambiental, analise:

#             I. A primeira deve ter como base o pensamento crítico e inovador, em qualquer tempo ou lugar, em seus modos formal, não formal e informal, promovendo a transformação e a construção da sociedade.

#             II. A primeira pode ser entendida como os processos por meio dos quais o indivíduo e a coletividade constroem valores sociais, conhecimentos, habilidades, atitudes e competências voltadas para a conservação do meio ambiente.

#             III. A primeira é um componente essencial e permanente da educação nacional, devendo estar presente de forma articulada e, segundo a Constituição Federal, restrita a todos os níveis e modalidades do processo educativo de caráter formal.

#             IV. A segunda tem sua esfera de ação restrita aos órgãos e entidades integrantes do Sistema Nacional de Meio Ambiente e instituições educacionais públicas e privadas dos sistemas de ensino.

#             V. A segunda é coordenada por um órgão gestor que define as diretrizes para sua implementação e articula, coordena e supervisiona os planos, programas e projetos na área de educação ambiental em âmbito nacional.

#             É correto o que consta APENAS em",
#   answer_1: "I, II e V.",
#   answer_2: "I, II e IV.",
#   answer_3: "I, IV e V.",
#   answer_4: "II, III, IV e V.",
#   answer_5: "III, IV e V.",
#   course: course
# ).save!

# Quiz.new(
#   question: "Uma das práticas a ser adotada visando a efetiva conservação da natureza e o desenvolvimento sustentável é, sem dúvidas, a educação ambiental. Considerando os diferentes aspectos desse processo, assinale a alternativa incorreta.",
#   answer_1: "A participação coletiva corresponde a um dos objetivos fundamentais da educação ambiental na lei brasileira, sendo incentivada em detrimento da participação individual.",
#   answer_2: "A Lei Federal nº 9.795/99, que dispõe sobre a Política Nacional de Educação Ambiental, estipula que ela não seja uma prática instituída como disciplina específica no currículo de ensino.",
#   answer_3: "A interdisciplinaridade representa um princípio da educação ambiental não só no Brasil, como também no cenário internacional.",
#   answer_4: "A abordagem participativa integra as populações locais na conservação de um ambiente, sendo os insucessos encarados como parte do processo de aprendizagem.",
#   answer_5: "N/A",
#   course: course
# ).save!



# ENEM LINGUAGENS

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


file = URI.open("https://lh3.googleusercontent.com/sVzoSqVLzP-YtCB-c8ztY7jt4SG6YQw_xXy0JD6ZqmXcrKrEWN3hDlMaTL8eB6mzlEEG0-ky5OjV4VinKF4AQw=s0")
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

# CURSO ROBERTÃO

file = URI.open('https://media-exp1.licdn.com/dms/image/C4E03AQHBdE4pHFiVQw/profile-displayphoto-shrink_400_400/0?e=1605139200&v=beta&t=G5BTwzfeQAR6Ia7Flme8yatQi3n0L9IJRzgh7iw-Sl0')
user = User.new(
  name: "Roberto Barros",
  email: "roberto@rails.com.br",
  password: Faker::Internet.password(min_length: 8),
  cpf: Faker::IDNumber.brazilian_id,
  phone: Faker::Number.number(digits: 10),
  occupation: "Full Stack Web Developer",
  teacher: true
)
user.photo.attach(io: file, filename: 'nes.png', content_type: 'image/png')
user.save!

file = URI.open('https://media-exp1.licdn.com/dms/image/C4E03AQHBdE4pHFiVQw/profile-displayphoto-shrink_400_400/0?e=1605139200&v=beta&t=G5BTwzfeQAR6Ia7Flme8yatQi3n0L9IJRzgh7iw-Sl0')
course = Course.new(
  name: "Ruby on Rails - Curso Básico",
  category: 'Tecnologia',
  description: 'O curso visa ensinar aos alunos como construir aplicações usando o framework Ruby on Rails, mostrando detalhadamente os desafios iniciais enfrentados por quem está iniciando nesse mundo de desenvolvimento Web com Rails. Para tanto, mostraremos os conceitos básicos que precisamos para iniciar nossa jornada rumo ao entendimento do Ruby on Rails.',
  url: "https://www.youtube.com/embed/2SEKJdKzwNU",
  user: user
)
course.photo.attach(io: file, filename: 'nes.png', content_type: 'image/png')
course.save!

Lesson.new(
  name: 'Edit in Place com Ruby on Rails',
  chapter: 'Módulo Único',
  url: "https://www.youtube.com/embed/skX0QJwPmXs",
  description: 'Como editar informações de um model sem precisar sair da página utilizando o Modal do Bootstrap para exibir as informações.',
  course: course
).save!

Lesson.new(
  name: "Deploy de App Ruby on Rais com ActionCable no Heroku",
  chapter: 'Módulo Único',
  url: "https://www.youtube.com/embed/9fYFjPlM5cI",
  description: 'Aprenda como colocar em produção no Heroku sua aplicação Ruby on Rails com ActionCable.',
  course: course
).save!

Lesson.new(
  name: "Configure domínio com SSL gratuito para aplicação no Heroku com Cloudflare",
  chapter: 'Módulo Único',
  url: "https://www.youtube.com/embed/XJW1KB4QQCc",
  description: 'Configure um domínio para a sua aplicação hospedada no Heroku com SSL/HTTPS gratuito utilizando o Cloudflare',
  course: course
).save!

Lesson.new(
  name: "ActionCable em uma aplicação Ruby on Rails",
  chapter: 'Módulo Único',
  url: "https://www.youtube.com/embed/WuCLHgcEnDA",
  description: 'Como implementar o ActionCable em uma aplicação Ruby on Rails para ter atualização em tempo real de dados sem que o usuário precise recarregar a página.',
  course: course
).save!

Lesson.new(
  name: "Ruby on Rails com Devise - Adicionando novos campos",
  chapter: 'Módulo Único',
  url: "https://www.youtube.com/embed/Vj5BAmtBvVQ",
  description: 'Como adicionar novos campos ao seu model de User durante o login em uma aplicação Ruby on Rails utilizando o Devise.',
  course: course
).save!

Quiz.new(
  question: "Qual dos seguintes métodos pode ser usado em Ruby para obter um número aleatório?",
  answer_1: "rand",
  answer_2: "Math.GetRandomNumber",
  answer_3: "rnd",
  answer_4: "$random",
  answer_5: "n/a",
  course: course
  ).save!
Quiz.new(
  question: "A variável “dieta” é igual ao valor “comer menos” e você deseja imprimir em maiúsculas. Qual das opções a seguir você deve usar?",
  answer_1: "puts dieta.upcase",
  answer_2: "puts upcase(dieta)",
  answer_3: "putsup dieta",
  answer_4: "puts [a-z|A-Z] dieta",
  answer_5: "n/a",
  course: course
  ).save!
Quiz.new(
  question: "Você precisa enviar um valor de volta ao código que o chamou (retornar um valor ao chamador). Qual método pode / deve ser usado para isso?",
  answer_1: "return",
  answer_2: "post",
  answer_3: "relay",
  answer_4: "send",
  answer_5: "comeback",
  course: course
  ).save!


puts 'Finish'
