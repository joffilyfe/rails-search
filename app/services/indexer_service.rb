class IndexerService

  include ActiveModel::Model

  attr_accessor :title, :client, :address_ip
  validates_presence_of :title, :client

  def self.process(attrs)
    new(attrs).tap(&:process)
  end

  def process
    return unless valid?
    save_search
  end

  def search
    @search ||= Search.new(
      title: title,
      client: client,
      address_ip: address_ip
    )
  end

  def save_search
    search.save!
  end

end
