# frozen_string_literal: true
require_relative 'sortable'

class Tester
  extend Sortable

  attr_accessor :config, :data

  def initialize(data = nil, config = {})
    @data = data.nil? ? (1..10).to_a.shuffle : data
  end

  def config=(args)
    self.config.merge!(args)
  end

  def sample_size=(n)
    self.data ||= []
    self.data[n] = nil
    n
  end

  def pp(arr)
    puts "STEP=[#{arr.join(", ")}]"
  end

  def to_s
    "| #{@data.join(" | ")} |"
  end

  # calls the sort method with new data; retains original shuffled data
  (self.methods - Object.methods).each do |method_name|
    define_method(method_name) {
      self.class.send(method_name, self.data.class.new(self.data))
    }
  end
end
