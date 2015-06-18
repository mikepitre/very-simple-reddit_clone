class Link < ActiveRecord::Base
  belongs_to :user
  has_many :votes, dependent: :destroy

  def self.select_links
    all.map { |link| [link.title, link.id] }
  end
end
