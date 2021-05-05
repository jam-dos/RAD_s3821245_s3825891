class SavedlistsController < ApplicationController
  
  def show
    @listItem = Savedlist.find(1).products
  end
  
  def create
    
    productid = params[:product_id]
    savedlistid = 1
    savedlist = Savedlist.find(savedlistid)
    product = Product.find(productid)
    savedlist.products << product
    @listItem = savedlist.products
    redirect_to products_path
    # @listItem = CreateProductsSavedlists.new({:product_id => params[:product_id], :savedlist_id=>1})
  end
  
    private
    def product_params
      params.require(:product).permit(:name, :price)
    end
end