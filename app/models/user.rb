class User < ApplicationRecord
    has_one :artist
    has_one :sponsor
end
