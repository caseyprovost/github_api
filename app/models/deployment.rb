class Deployment < ApplicationRecord
  belongs_to :repository
  belongs_to :creator, class_name: "User"
end
