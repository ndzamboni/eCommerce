# eCommerce Back End

This project is the back end for an eCommerce application. It includes a functional Express.js API, a PostgreSQL database, and Sequelize ORM to manage database interactions. The back end enables the creation, reading, updating, and deletion of categories, products, and tags.

## Table of Contents

- [Installation](#installation)
- [Usage](#usage)
- [Database Models](#database-models)
- [API Endpoints](#api-endpoints)
  - [Categories](#categories)
  - [Products](#products)
  - [Tags](#tags)
- [Seeding the Database](#seeding-the-database)
- [License](#license)

## Installation

1. Clone the repository:

    ```bash
    git clone git@work.github.com:coding-boot-camp/module-13-challenge-orm.git
    ```

2. Navigate to the project directory:

    ```bash
    cd module-13-challenge-orm/develop
    ```

3. Install the dependencies:

    ```bash
    npm install
    ```

4. Set up your environment variables:

    Create a `.env` file in the `develop` directory with the following content:

    ```env
    DB_NAME='ecommerce_db'
    DB_USER='your_postgres_username'
    DB_PASSWORD='your_postgres_password'
    ```

5. Create the database:

    Use the schema.sql file to create the necessary database structure. Run the following command in your PostgreSQL shell:

    ```sql
    \i path_to_your_project/develop/db/schema.sql
    ```

## Usage

1. Seed the database with initial data:

    ```bash
    npm run seed
    ```

2. Start the server:

    ```bash
    npm start
    ```

    The server will be running on `http://localhost:3001`.

## Database Models

The database contains the following four models:

1. **Category**
    - `id`: Integer, primary key, auto-incremented
    - `category_name`: String, not nullable

2. **Product**
    - `id`: Integer, primary key, auto-incremented
    - `product_name`: String, not nullable
    - `price`: Decimal, not nullable, validates that the value is a decimal
    - `stock`: Integer, not nullable, default value 10, validates that the value is numeric
    - `category_id`: Integer, references the `id` in the `Category` model

3. **Tag**
    - `id`: Integer, primary key, auto-incremented
    - `tag_name`: String

4. **ProductTag**
    - `id`: Integer, primary key, auto-incremented
    - `product_id`: Integer, references the `id` in the `Product` model
    - `tag_id`: Integer, references the `id` in the `Tag` model

## API Endpoints

### Categories

- **GET /api/categories**: Get all categories with their associated products.
- **GET /api/categories/:id**: Get a single category by its ID with its associated products.
- **POST /api/categories**: Create a new category.
- **PUT /api/categories/:id**: Update a category by its ID.
- **DELETE /api/categories/:id**: Delete a category by its ID.

### Products

- **GET /api/products**: Get all products with their associated category and tags.
- **GET /api/products/:id**: Get a single product by its ID with its associated category and tags.
- **POST /api/products**: Create a new product. The request body should look like this:

    ```json
    {
      "product_name": "Basketball",
      "price": 200.00,
      "stock": 3,
      "tagIds": [1, 2, 3, 4]
    }
    ```

- **PUT /api/products/:id**: Update a product by its ID.
- **DELETE /api/products/:id**: Delete a product by its ID.

### Tags

- **GET /api/tags**: Get all tags with their associated products.
- **GET /api/tags/:id**: Get a single tag by its ID with its associated products.
- **POST /api/tags**: Create a new tag.
- **PUT /api/tags/:id**: Update a tag by its ID.
- **DELETE /api/tags/:id**: Delete a tag by its ID.

## Seeding the Database

To seed the database with initial data, run the following command:

```bash
npm run seed
