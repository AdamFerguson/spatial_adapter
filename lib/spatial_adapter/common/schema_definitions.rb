require 'active_record/connection_adapters/abstract_adapter'

ActiveRecord::ConnectionAdapters::IndexDefinition.class_eval do
  attr_accessor :spatial

  alias_method :initialize_without_spatial, :initialize
  def initialize(table, name, unique, columns, lengths=nil, orders=nil, spatial = false)
    initialize_without_spatial(table, name, unique, columns, lengths, orders)
    @spatial = spatial
  end
end
