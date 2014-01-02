class ProductsController < ApplicationController
  before_action :check_session

  def new
    @product = Product.new
  end

  def create
    @product = Product.new(product_params)
    if(@product.save)
      redirect_to :action => :index
    else
      redirect_to root_path
    end
  end

  def index
    @products = Product.all
  end

  def show
    @product = Product.find(params[:id])
  end

  private
  def product_params
    params.require(:product).permit(:name, :price, :description, :status, :start_at, :end_at, :pic) #set which field can permit modify 
  end
end
