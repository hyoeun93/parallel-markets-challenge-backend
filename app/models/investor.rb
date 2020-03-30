class Investor < ApplicationRecord
    has_many :attachments
    belongs_to :user
    attr_accessor :attachment_data 

    def save_attachments(params)
        params[:attachment_data].each do |doc|
            self.attachments.create(:file => doc)
        end 
    end
end
