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
card.photo.attach(io: file, filename: 'nes.png', content_type: 'image/png')
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

# 1.times do
#   file = URI.open("")
#   course = Course.new(
#     name: "Educação Ambiental",
#     category: 'Meio Ambiente',
#     description: 'Qual é a maior floresta urbana do mundo? Floresta da Tijuca? Não, essa é a segunda maior. Então qual é a maior? Essa resposta e outras ainda mais surpreendentes, você verá em Educação Ambiental, a nova série da UCT. Com imagens deslumbrantes da natureza do Rio de Janeiro, a série de 9 episódios dará dicas de como você pode melhorar sua qualidade de vida e ainda economizar com pequenas mudanças de atitude.',
#     url: "https://www.youtube.com/embed/HEdNerolZSw",
#     user: user
#   )
#   card.photo.attach(io: file, filename: 'nes.png', content_type: 'image/png')
#   course.save!

#   Lesson.new(
#     name: Faker::Educator.subject,
#     chapter: 'Módulo Único',
#     url: "",
#     description: "",
#     course: course
#   ).save!

#   Quiz.new(
#     question: "",
#     answer_1: "",
#     answer_2: "",
#     answer_3: "",
#     answer_4: "",
#     answer_5: "",
#     course: course
#     ).save!
# end

puts 'Finish'
