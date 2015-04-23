class ImportProductsController < ApplicationController
  def create
    Product.import params[:file]
    redirect_to root_url, notice: "Products imported."
  end
end