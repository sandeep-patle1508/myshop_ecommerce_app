# Myshop E-Commerce Application

This is a simple e-commerce application which only store basic database design users, orders, products, and variants.

### Tech

Myshop E-Commerce uses:

* [Ruby on Rails] - Version 5.2.2 Web application framework
* [SQlite] - relational database

### Installation
Install the dependencies.

```sh
$ git clone git@github.com:sandeep-patle1508/myshop_ecommerce_app.git
$ cd myshop_ecommerce_app
$ bundle install
$ rails db:create
$ rails db:migrate
```

### Tables

Dillinger is currently extended with the following plugins. Instructions on how to use them in your own application are linked below.

##### products
This table will store product details.
* id - integer - PK
* name - string - product name
* description - text - product description
* is_available - boolean - availablity of product

##### skus
This table will store product price and sku details. product is associated with sku table by one-to-many relationship, as one product can have more than one skus.

* id : integer | PK |
* sku:string | stock keeping unit |
* price:decimal | product price |
* product_id:integer | FK |

##### product_variants
product variants will store the product variation data with different type like color, size etc. This table will have one to many relationship with product_variant_type.

* id : integer | PK |
* name:string | name of the variant for a type like small, red etc |
* product_variant_type_id:integer | FK |

##### product_variant_types
product variant types will store type of variation like color, size erc.

* id : integer | PK |
* name:string | name of the variant type like color, size etc |

##### skus_product_variants
SKU will have many-to-many association with product variants. As one product can have different price as per size and color.

* id : integer | PK |
* sku_id:integer | FK |
* product_variant_id:integer | FK |

##### users
This table to store user details -

* id : integer | PK |
* first_name:string | user first name|
* last_name:string | user first name|
* email:string | email ID |
* mobile_numer:integer | mobile number  |

##### orders
This table will store order data and will have one-to-many association with user table. As one user can have more than one orders.

* id : integer | PK |
* date:datetime | order datetime|
* total:decimal | order total amount |
* user_id:integer | FK |

##### order_items
This table will store order items and will have one-to-one association with product table, as one order item will have only one product. But as sale price can chnage by time, storing it with it.

* id : integer | PK |
* sku_id:integer | FK|
* sale_price:decimal | sale price |
