class Investor < ApplicationRecord
    has_many :attachments
    belongs_to :user
end
