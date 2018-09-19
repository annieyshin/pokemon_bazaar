class ProductsController < ApplicationController
  before_action :find_params, only: [:show,:edit,:update,:destroy]
  def index
    @products = Product.all
    @order_item = current_order.order_items.new
    @pokemon_name = Pokemonapi.get_pokemon_name()
    @pokemon_num = Pokemonapi.get_pokemon_number()
    @pokemon_img = Pokemonapi.get_pokemon_image()

  end

  def show
  end

  def new
    @product = Product.new
  end

  def create
    @product = Product.new(product_params)
    if @product.save
      redirect_to products_path
    else
      render :new
    end
  end

  def edit
  end

  def update

    if @product.update(product_params)
      redirect_to product_path
    else
      render :edit
    end
  end

  def destroy
    @product.destroy
    redirect_to products_path
  end

  private

  def find_params
    @product = Product.find(params[:id])
  end

  def product_params
    params.require(:product).permit(:name, :price)
  end

end
