CREATE TABLE users (
    user_id SERIAL PRIMARY KEY NOT NULL,
    username VARCHAR(255) NOT NULL,
    password VARCHAR(255) NOT NULL,
    email VARCHAR(255) NOT NULL
);

CREATE TABLE recipes (
    recipe_id SERIAL PRIMARY KEY NOT NULL,
    visible BOOLEAN NOT NULL,
    user_id INTEGER NOT NULL REFERENCES users(user_id),
    grocery_list_id INTEGER NOT NULL REFERENCES grocery_list(grocery_list_id)
);

CREATE TABLE ingredients (
    ingredients_id SERIAL PRIMARY KEY NOT NULL,
    food_amounts VARCHAR(255),
    recipe_id INTEGER NOT NULL REFERENCES recipes(recipe_id),
    instructions_id INTEGER NOT NULL REFERENCES instructions(instructions_id)
);

CREATE TABLE instructions (
    instructions_id SERIAL PRIMARY KEY NOT NULL,
    actions VARCHAR(255),
    recipe_id INTEGER NOT NULL REFERENCES recipes(recipe_id),
    ingredients_id INTEGER NOT NULL REFERENCES ingredients(ingredients_id)
);

CREATE TABLE grocery_list (
    grocery_list_id SERIAL PRIMARY KEY NOT NULL,
    food_items VARCHAR(255),
    user_id INTEGER NOT NULL REFERENCES users(user_id),
    recipe_id INTEGER NOT NULL REFERENCES recipes(recipe_id)
);

CREATE TABLE occasion (
    occasion_id SERIAL PRIMARY KEY NOT NULL,
    occasion_type VARCHAR(255),
    user_id INTEGER NOT NULL REFERENCES users(user_id),
    recipe_id INTEGER NOT NULL REFERENCES recipes(recipe_id)
);

CREATE TABLE post (
    post_id SERIAL PRIMARY KEY NOT NULL,
    text text,
    user_id INTEGER NOT NULL REFERENCES users(user_id),
    recipe_id INTEGER NOT NULL REFERENCES recipes(recipe_id),
    occasion_id INTEGER NOT NULL REFERENCES occasion(occasion_id)
);