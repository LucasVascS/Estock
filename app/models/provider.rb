class Provider < ApplicationRecord
  enum personregistration: { pessoa_fisica: "phisical_person", pessoa_juridica: "juridic_person" }
  has_many :product
end
