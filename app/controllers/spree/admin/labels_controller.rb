class Spree::Admin::LabelsController < Spree::Admin::BaseController
	def index
        puts YAML::dump(params)
        @orders=Spree::Order.where(:number => params[:order_number])
        @items_per_label=5
        render layout: "layout1"
  	end
end
