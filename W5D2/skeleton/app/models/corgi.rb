class Corgi < ApplicationRecord
  has_many :toys,
    foreign_key: :toyable_id,
    class_name: :Toy
end
