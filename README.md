#Store products.


## 1 - Database diagram schema


## 2 - Generating a Ruby on Rails Application
````
	- gem install rails
	- rails new Rails-Store 
	- cd Rails-Store

## 3 - Create the Store table model and migrations:
Adding Users Authentication with Devise Module
[Device install command](http://guides.railsgirls.com/devise/)
````
	- rails g migration client name:string tel:string address:string email:string:uniq
	- rails g model newsletters body:text date_newsletter:datetime nb_email:string
	- rails g model orders order_date:datetime user_id:integer 
	- rails g model order_product order_id:integer product_id:integer quantity:integer
	- rails g model products name:string margin_product:decimal 'price:decimal{5,2}'
	- rails g model recipes product_id:integer ingredient_id:integer
	- rails g model ingredients name:string
	- rails g model ingredients_history ingredient_id:integer 'price_ingredient:decimal{5,2}' year:integer
````
## 4 - The table Associations:
````
In Rails, an association is a connection between two Active Record models. Associations are implemented using macro-style calls, so that you can declaratively add features to your models. For example, by declaring that one model belongs_to another, you instruct Rails to maintain Primary Key–Foreign Key information between instances of the two models, and you also get a number of utility methods added to your model. Rails supports six types of associations:

belongs_to
has_one
has_many
has_many :through
has_one :through
has_and_belongs_to_many
````
## 5 - Running Migrations
````
	rake db:migrate
````
