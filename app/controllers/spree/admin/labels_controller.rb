class Spree::Admin::LabelsController < Spree::Admin::BaseController
	def index
        puts "got here"
        @orders=Spree::Order.all
        render layout: "layout1"
  	end
end
