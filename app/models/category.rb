class Category < ApplicationRecord
  has_many :salon_categories

  has_many :salons, through: :salon_categories

  
  CATEGORIES = [
    {
      id: 1,
      name: "ALL THINGS HAIR",
      description: "Tudo relacionado ao cabelo"
    },
    {
      id: 2,
      name: "LASHES",
      description: "Tudo relacionado a lashes"
    },
    {
      id: 3,
      name: "MAKE UP ARTIST",
      description: "Encontra sua make favorita"
    },
    {
      id: 4,
      name: "Outros",
      description: "Outras categorias"
    }
  ]

end
