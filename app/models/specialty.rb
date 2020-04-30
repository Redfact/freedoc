class Specialty < ApplicationRecord
	has_many :joinspecialtydoctors
	has_many :doctors , :through => :joinspecialtydoctors
end
