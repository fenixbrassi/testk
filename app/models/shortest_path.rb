class ShortestPath < ApplicationRecord
  belongs_to :user
  has_many :visits

  before_create :create_unique_shortpath


  private
      def create_unique_shortpath
        logger.info "[create_unique_shortpath]"
        self.shortestpath = (0...6).map { [*'0'..'9', *'a'..'z', *'A'..'Z'].to_a[rand(26)] }.join
      end

end
