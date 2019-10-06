class Following < ApplicationRecord
  belongs_to :follower, class_name: "User"
  belongs_to :target, class_name: "User"
end
