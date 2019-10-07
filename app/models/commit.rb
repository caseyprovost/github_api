class Commit < ApplicationRecord
  belongs_to :committer
  belongs_to :author
  belongs_to :repository

  validates :message, presence: true

  before_create :generate_sha

  private

  def generate_sha
    self.sha ||= Digest::SHA256.hexdigest
  end
end
