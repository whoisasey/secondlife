class Charity < ApplicationRecord
  belongs_to :admin, optional: true
end 
