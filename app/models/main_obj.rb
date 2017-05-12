class MainObj < ApplicationRecord
    belongs_to :user
    has_many :sub_objs, dependent: :destroy
end
