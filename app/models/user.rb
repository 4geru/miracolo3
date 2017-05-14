class User < ApplicationRecord
    has_many :main_objs, dependent: :destroy
    has_many :sub_objs, dependent: :destroy
    has_secure_password
end
