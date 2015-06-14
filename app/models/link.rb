class Link < ActiveRecord::Base
  belongs_to :user
  has_many :votes

  def self.select_links
    all.map { |link| [link.title, link.id] }
  end
end
