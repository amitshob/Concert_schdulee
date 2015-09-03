class Venue < ActiveRecord::Base
  has_and_belongs_to_many(:bands)
<<<<<<< HEAD
=======
  validates(:name, {:presence => true})
>>>>>>> c3a7b01c02574eb9badd1707a3e611f610b5dd17
  before_save(:capitalize_name)
  private

  define_method(:capitalize_name) do
    self.name=(name().capitalize())
  end
end
