# CloverDynamycs
The setups steps expect following tools installed on the system.

- MySQL
- Ruby [2.6.6](https://www.ruby-lang.org/en/news/2020/03/31/ruby-2-6-6-released/)
- Rails [6.1.4](https://github.com/rails/rails)
## Install

### Clone the repository
```shell
git clone https://github.com/DmytroHoretskyi/CloverDynamics.git
cd CloverDynamics
```
### Install dependencies

Using [Bundler](https://github.com/bundler/bundler):

```shell
bundle install
```
### Initialize the database

```shell
rails db:create db:migrate db:seed
```
## Serve

```shell
rails s
```
### Now you can see it on
http://localhost:3000/



# About site
You can try all the methods directly on the main page.
There is buttons like:
- New product => redirect to POST /products/new
- Cheapest product => redirect to GET /products/cheapest(Returns the cheapest by price product from the storage.)
- Expensivest product => redirect to GET /products/expensivest (Returns the most expensive by price product from the storage)
- Median product => redirect to GET /products/median (
If we have an odd number of products, it returns the product in the middle of the sorted array
,if we have an even number of products, then we have two products in the middle, and since the median can be only one product, the greater one is chosen.
  from the middle [1,2,3,4] => median [3])
- Products count => redirect to GET /products/count (Returns the count of products in the storage)
- Destroy all => DELETE /products (Deletes all products from the storage)
- Show => GET /products/{id}
- Edit => PUT /products/{id}/edit
- Destroy => DELETE /products/{id}
<br>
<br>There also is pagination:
<br>1) Up to 10 products can be displayed on a page at a time
<br>2) If there are more than 10 products in the database, a second product page will be created, and navigation buttons 
will appear between New product and Destroy all for easy navigation through the pages(You can see current page in 
URL address) => ?page={id}
<br>3) If you want to sort the products by name or price, then just click on the name or price field above 
the table(one click = asc, two clicks = desc). You can also see current sorting in URL address => ?direction=desc&sort=Price
<br>
<br>
 There is deployment on HEROKU 
<br>https://rest-on-rails.herokuapp.com/products
