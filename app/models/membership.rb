class Membership < ApplicationRecord
    belongs_to :client 
    belongs_to :gym

    validates :charge, :gym, :client, presence: true
    validates :client, uniqueness: {scope: :gym}
end
