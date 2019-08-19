module QuickCharts
  class Pdf
    attr_accessor :type, :labels, :data

    def initialize type, labels, data
      @type = type
      @labels = labels
      @data = data
    end

    def fetch
      QuickCharts::Api.call(@type, @labels, @data)
    end
  end
end