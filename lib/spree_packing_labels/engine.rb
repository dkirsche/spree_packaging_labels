module SpreePackingLabels
  class Engine < Rails::Engine
    require 'spree/core'
    isolate_namespace Spree
    engine_name 'spree_packing_labels'

    # use rspec for tests
    config.generators do |g|
      g.test_framework :rspec
    end

    def self.activate
      Dir.glob(File.join(File.dirname(__FILE__), '../../app/**/*_decorator*.rb')) do |c|
        Rails.configuration.cache_classes ? require(c) : load(c)
      end
    end

    config.to_prepare &method(:activate).to_proc

    initializer "spree_packing_labels.assets.precompile" do |app|
    app.config.assets.precompile += %w( spree_packing_labels/foundation.css )
    app.config.assets.precompile += %w( spree_packing_labels/app.css )
end
  end
end
