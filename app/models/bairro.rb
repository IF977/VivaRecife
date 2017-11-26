class Bairro < ApplicationRecord
  def self.search(search)
    where("nome ILIKE ?", "%#{search}%")
  end
end
