class Band < ActiveRecord::Base

  has_and_belongs_to_many(:venues)
<<<<<<< HEAD
=======
  validates(:name, {:presence => true})
>>>>>>> c3a7b01c02574eb9badd1707a3e611f610b5dd17
  before_save(:capitalize_name)
  private

  define_method(:capitalize_name) do
    self.name=(name().capitalize())
  end
  #has_many: :ingredients, through: :ingredients_bands
end
<<<<<<< HEAD
=======

 
>>>>>>> c3a7b01c02574eb9badd1707a3e611f610b5dd17
