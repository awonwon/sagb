class ProductsController < ApplicationController
  before_action :check_session

  def new
    @product = Product.new
  end

  def create
    if(@product = @current_member.product.create(product_params))
      redirect_to :action => :index
    else
      redirect_to root_path
    end
  end

  def index
    
  end

  def show
    @product = Product.find(params[:id])
  end

  private
  def product_params
    params.require(:product).permit(:name, :price, :description, :status, :start_at, :end_at, :pic, :status) #set which field can permit modify 
  end
end
