class Period < ApplicationRecord
  has_many :students, dependent: :destroy
end
