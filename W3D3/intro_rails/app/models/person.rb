class Person < ActiveRecord::Base
  belongs_to(
    :house,
    class_name: 'House',
    foreign_key: 'id',
    primary_key: 'house_id'
  )
end
