class Attachment < ApplicationRecord
    belongs_to :investors
    has_attached_file :file
    validates_attachment :file, presence: true, content_type: { content_type: "application/pdf"}
end
