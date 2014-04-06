class ProductsController < ApplicationController

	def index
	 
	end

	def show
		@categories=Category.all

		@product=Product.where('id =?', params[:id])

@product.each do |prod|
@category_id=prod.category_id
@subcategory_id=prod.subcategory_id
@subcategories=Subcategory.all.where('category_id =?', @category_id)
end
	#@category_id=@product.category_id
  	#@categories=Category.all
  	#@subcategory_id=@product.subcategory_id
  	#@subcategories=Subcategory.all.where('category_id =?', @category_id)

    end



    def new
    @product=Product.new
	render layout: "some"
	
    end

    def select
    @category_id=params['category_id_']
    render layout: "empty"
    #render 'index' 
    #"options_from_collection_for_select(Subcategory.where(category_id: params['galery'].to_s), :id, :name)"
    #render :inline =><%= link_to 'category.name', controller: "categories",action: "show", id: '1' %>
    end


    def create
u = Product.new
u.picture = params[:picture]
u.category_id=params[:category]
u.subcategory_id=params[:subcategory]
u.name=params[:name]
u.price=params[:price]
u.description=params[:description]
u.articul=params[:articul]
u.favourite=params[:favourite]
u.save!
redirect_to '/admin/products/' + u.id.to_s
#render :json  => u.picture.url
#t.string   "name"
 #   t.float    "price"
  #  t.integer  "category_id"
  #  t.integer  "subcategory_id"
  #  t.datetime "created_at"
  #  t.datetime "updated_at"
  #  t.string   "picture"
  #  t.text     "description"
  #  t.string   "articul"
  #  t.integer  "favourite"


    end

end
