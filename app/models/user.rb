class User < ApplicationRecord
    has_many :main_objs, dependent: :destroy
end
