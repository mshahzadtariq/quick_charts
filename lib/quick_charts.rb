require 'quick_charts/configuration'
require 'quick_charts/api'
module QuickCharts

  class << self
    attr_accessor :configuration
  end

  def self.configure
    self.configuration ||= Configuration.new
    yield(configuration)
  end

end
