- species Table
    species_id
    species_name

- animals Table
    animal_id
    species_id <!-- species(species_id)-->
    name
    breed
    color
    personality
    care_instructions

- owners Table <!-- Since im just desiging the db for a pet agency and not a pet adoption app, I will not include things like login info  -->
    owner_id
    name
    phone_number
    bio
    preferred species <!-- species(species_id) -->

- matches Table
    match_id
    owner_id
    species_id
    animal_id

<!-- SQL code -->

CREATE TABLE species (
species_id SERIAL PRimARY KEY,
species_name VARCHAR(60)
);

CREATE TABLE animals(
animal_id SERIAL PRIMARY KEY,
species_id INT NOT NULL REFERENCES species(species_id),
name VARCHAR(40),
breed VARCHAR(50),
color VARCHAR(15),
personality VARCHAR(250),
care_instructions VARCHAR(500)
);

CREATE TABLE owners(
owner_id SERIAL PRIMARY KEY,
name VARHCHAR(50),
phone_number VARCHAR(10),
bio VARCHAR(250),
pref_species INT NOT NULL REFERENCES species(species_id)
);

CREATE TABLE matches (
match_id SERIAL PRIMARY KEY,
owner_id INT NOT NULL REFERENCES owners(owner_id),
species_id INT NOT NULL REFERENCES species(species_id),
animal_id INT NOT NULL REFERENCES animals(animal_id)
);