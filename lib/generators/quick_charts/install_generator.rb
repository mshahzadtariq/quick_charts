module QuickCharts
  module Generators
    class InstallGenerator < Rails::Generators::Base
      source_root File.expand_path("../../templates", __FILE__)
      desc "Creates QuickCharts initializer for your application"

      def copy_initializer
        template "quick_charts_initializer.rb", "config/initializers/quick_charts.rb"

        puts "Install complete! Truly Outrageous!"
      end
    end
  end
end