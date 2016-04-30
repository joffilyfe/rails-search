class Question < ActiveRecord::Base
  include Elasticsearch::Model
  include Elasticsearch::Model::Callbacks

  settings index: { number_of_shards: 5, number_of_replicas: 0 } do
    mappings dynamic: 'false' do
      indexes :id, type: 'integer'
      indexes :title, type: 'string'
    end
  end

  def as_indexed_json(options = {})
    as_json(only: ['id', 'title'])
  end

  validates :title, :answer, :presence => true

end
