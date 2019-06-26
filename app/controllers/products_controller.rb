class ProductsController < ApplicationController
  def index
    @products = Product.all
    render json: @products
  end

  def show
    @product = Product.find(params[:id])
    render json: @product
  end

  def new
    @product = Product.new
  end

  def create
    product = Product.create!(product_params)

    # redirect_to products_path

    # json_response(@product, :created)
    render json: product, status: 200

  end

   def edit
    @product = Product.find(params[:id])
  end

  def update
    @product = Product.find(params[:id])
    @product.update(product_params)

    redirect_to product_path(@product)
  end

  private

  def product_params
    params.require(:product).permit(:title, :description, :url, :category)
  end
end
