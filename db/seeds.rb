puts "===================> Creating Candidates"
[
  "ALCI",
  "ANDREIA",
  "ANDRI BALANSIN",
  "ARI ROMAN",
  "CHIQUINHO PELLIN",
  "CLEITON",
  "CRISTIANE PIZZINATTO",
  "DIANA",
  "ELVIO BRASIL",
  "IMA",
  "JOÃO EDIO",
  "JUSSENO",
  "KEILOR BASSO",
  "LANDA BRUNELLI",
  "LUCIANA",
  "MAICON VIZENTIN",
  "MÂNICA",
  "MARCELO",
  "MAURO",
  "NAILDE",
  "NANDO",
  "PRO LORE",
  "RENATA MACIEL",
  "VILSINHO"
].each do |candidate|
  FactoryBot.create(:candidate, name: candidate, avatar: candidate.parameterize)
end

[ "JONES", "DR. JOÃO" ].each do |candidate|
  FactoryBot.create(:candidate, name: candidate, avatar: candidate.parameterize, special: true)
end
