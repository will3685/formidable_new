class Category < ApplicationRecord
  has_many :salon_categories
  has_many :salons, through: :salon_categories

  
  CATEGORIES = [
    {
      name: "ALL THINGS HAIR",
      description: "Tudo relacionado ao cabelo"
    },
    {
      name: "LASHES",
      description: "Tudo relacionado a lashes"
    },
    {
      name: "MAKE UP ARTIST",
      description: "Encontra sua make favorita"
    },
    {
      name: "Outros",
      description: "Outras categorias"
    }
  ]

end
