<!-- 

-GIVEN a functional Express.js API

-WHEN I add my database name, PostgreSQL username, and PostgreSQL password to an environment variable file
-THEN I am able to connect to a database using Sequelize

-WHEN I enter schema and seed commands
-THEN a development database is created and is seeded with test data


-WHEN I enter the command to invoke the application
-THEN my server is started and the Sequelize models are synced to the PostgreSQL database


-WHEN I open API GET routes in Insomnia Core for categories, products, or tags
-THEN the data for each of these routes is displayed in a formatted JSON


-WHEN I test API POST, PUT, and DELETE routes in Insomnia Core
-THEN I am able to successfully create, update, and delete data in my database -->

<!-- Getting Started
You’ll need to use the pgLinks to an external site. and SequelizeLinks to an external site. packages to connect your Express.js API to a PostgreSQL database and the dotenv packageLinks to an external site. to use environment variables to store sensitive data, like your PostgreSQL username, password, and database name.

Use the schema.sql file in the db folder to create your database using PostgreSQL shell commands. Use environment variables to store sensitive data, like your PostgreSQL username, password, and database name.

Database Models
Your database should contain the following four models, including the requirements listed for each model:

Category

id

Integer
Doesn't allow null values
Set as primary key
Uses auto increment
category_name

String
Doesn't allow null values
Product

id

Integer
Doesn't allow null values
Set as primary key
Uses auto increment
product_name

String
Doesn't allow null values
price

Decimal
Doesn't allow null values
Validates that the value is a decimal
stock

Integer
Doesn't allow null values
Set a default value of 10
Validates that the value is numeric
category_id

Integer
References the category model's id
Tag

id

Integer
Doesn't allow null values
Set as primary key
Uses auto increment
tag_name

String
ProductTag

id

Integer
Doesn't allow null values
Set as primary key
Uses auto increment
product_id

Integer
References the product model's id
tag_id

Integer
References the tag model's id
Associations
You'll need to execute association methods on your Sequelize models to create the following relationships between them:

Product belongs to Category, as a category can have multiple products but a product can only belong to one category.

Category has many Product models.

Product belongs to many Tag models. Using the ProductTag through model, allow products to have multiple tags and tags to have many products.

Tag belongs to many Product models. -->

<!-- Make sure you set up foreign key relationships that match the column we created in the respective models.

 -->

 <!--Fill Out the API Routes to Perform RESTful CRUD Operations
Fill out the unfinished routes in product-routes.js, tag-routes.js, and category-routes.js to perform create, read, update, and delete operations using your Sequelize models.  -->


<!-- Be sure to look at your module project's code for syntax help and use your model's column definitions to figure out what req.body will be for POST and PUT routes! -->


<!-- Seed the Database
After creating the models and routes, run npm run seed to seed data to your database so that you can test your routes.

Sync Sequelize to the Database on Server Start
Create the code needed in server.js to sync the Sequelize models to the PostgreSQL database on server start. -->


