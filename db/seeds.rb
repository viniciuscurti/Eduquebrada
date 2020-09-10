# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


Lesson.destroy_all
Course.destroy_all
User.destroy_all
Quiz.destroy_all


puts "Start"

['Meio Ambiente', 'Economia', 'Empreendedorismo', 'Matemática']



1.times do
  sleep(1)
  file = URI.open('https://pbs.twimg.com/profile_images/756105761193857024/dC_s9UYh_400x400.jpg')
  user = User.new(
    name: "Universidade Corporativa do Transporte",
    email: "contato@uct-fetranspor.com.br",
    password: Faker::Internet.password(min_length: 8),
    cpf: Faker::IDNumber.brazilian_id,
    phone: Faker::PhoneNumber.cell_phone,
    occupation: "Instituição de ensino",
    teacher: true
  )
  user.photo.attach(io: file, filename: 'nes.png', content_type: 'image/png')
  user.save!

  1.times do
    file = URI.open('')
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
      question: '',
      answer_1: '',
      answer_2: '',
      answer_3: '',
      answer_4: '',
      answer_5: '',
      course: course
    ).save!
  end
end

1.times do
  file = URI.open('')
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
    name: Faker::Educator.subject,
    chapter: 'Módulo Único',
    url: "",
    description: '',
    course: course
  ).save!

  Quiz.new(
    question: '',
    answer_1: '',
    answer_2: '',
    answer_3: '',
    answer_4: '',
    answer_5: '',
    course: course
    ).save!
end

puts 'Finish'
