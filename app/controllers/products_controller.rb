class ProductsController < ApplicationController
  before_action :find_params, only: [:show,:edit,:update,:destroy]
  def index
    @products = Product.all
    @order_item = current_order.order_items.new
  end

  def show
  end

  def new
    respond_to do |format|
      format.html { redirect_to products_path }
      format.js
    end
    @product = Product.new
  end

  def create
    @product = Product.new(product_params)

    pokemon_image_tag = Pokemonapi.new(@product.image_tag)
    @product.image_tag = pokemon_image_tag.set_pokemon
    if @product.save
      respond_to do |format|
        format.html { redirect_to products_path }
        format.js
      end
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
    @products = Product.all
    respond_to do |format|
      format.html { redirect_to products_path }
      format.js
    end
  end

  private

  def find_params
    @product = Product.find(params[:id])
  end

  def product_params
    params.require(:product).permit(:name, :price, :image_tag)
  end

end
