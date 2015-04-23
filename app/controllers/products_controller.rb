class ProductsController < ApplicationController
  def index
    @products = Product.all
  end

  def import
    Product.import params[:file]
    redirect_to root_url, notice: "Products imported."
  end

  private
  def product_params
    params.require(:product).permit(:name)
  end
end