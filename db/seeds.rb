# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

Remedio.create([
  { nome: 'Artren' },
  { nome: 'Biofenac' },
  { nome: 'Cataflan' },
  { nome: 'Fenaren' },
  { nome: 'Inflamax' },
  { nome: 'Voltaren' },
  { nome: 'Voltrix' },
  { nome: 'Artritec' },
  { nome: 'Bioflac' },
  { nome: 'Codaten' }
])

Unidade.create([
  { bairro: "CENTRO", endereco: "AV LEOPOLDO CARLOS DE OLIVEIRA No1174", farmacia: "SEIZI MORI", telefone: "16 38351239" },
  { bairro: "CARANDIRU", endereco: "AVENIDA CRUZEIRO DO SUL No 3157", farmacia: "DROGARIA NOVA DM LTDA", telefone: "11 69723899" },
  { bairro: "CAMPO BELO", endereco: "AVENIDA VEREADOR JOSE DINIZ, 3540", farmacia: "RAIA DROGASIL S/A", telefone: "11 55430548" },
])
