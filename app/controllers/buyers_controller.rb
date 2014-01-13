class BuyersController < ApplicationController
  before_action :check_session

  def new
    @product = Product.find(params[:product_id])
  end

  def create
    @product = Product.find(params[:product_id])
    @member = Member.find(params[:member_id])
    @buyer = @product.buyers.create(member:@member, status:params[:status])
    redirect_to new_product_buyer_path(@product)
  end

  def update
    @buyer = @current_member.buyers.find(params[:id])
    if(params[:qty])
      @buyer.update(qty:params[:qty], status:1)
    elsif (params[:remittance])
      @buyer.update(remittance:params[:remittance])
    end

    redirect_to product_path(Product.find(@buyer))
  end

  private
  def buyer_params
    params.require(:buyer).permit(:qty, :remittance, :status) #set which field can permit modify 
  end
end
