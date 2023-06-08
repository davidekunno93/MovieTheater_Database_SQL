INSERT INTO movie(
    title,
    genre
) VALUES(
    'Justin and the Jaguars',
    'Thriller'
), (
    'My First College Party 2',
    'Comedy'
), (
    'Steaks on a Plane',
    'Comedy'
), (
    'Pursuit of Happiness',
    'Drama'
), (
    'No Man Left Alive',
    'Horror'
), (
    'The Enforcers',
    'Action'
), (
    'Pink Skies',
    'Romance'
)

UPDATE movie
SET title = 'My First College Party 2: The Big One'
WHERE movie_id = 2

INSERT INTO customer(
    first_name,
    last_name,
    email
) VALUES(
    'Robin',
    'Williams',
    'rb@actors.com'
), (
    'Amanda',
    'Byrnes',
    'am@actors.com'
), (
    'Romelu',
    'Lukaku',
    'rm@footballers.com'
), (
    'Drizzy',
    'Drake',
    'dd@rappers.com'
), (
    'StoneCold',
    'Steve-Austin',
    ''
), (
    'Ashton',
    'Kutcher',
    'ak@punkd.com'
)

INSERT INTO concessions(
    concession_name,
    customer_id
) VALUES(
    'popcorn',
    '2'
), (
    'popcorn',
    '4'
), (
    'popcorn',
    '5'
), (
    'candy',
    '1'
), (
    'candy',
    '2'
), (
    '',
    '2'
)

UPDATE concessions
SET concession_name = 'popcorn'
WHERE concession_id = 6

INSERT INTO ticket(
    movie_id,
    customer_id
) VALUES(
    '2',
    '1'
), (
    '1',
    '2'
), (
    '6',
    '3'
), (
    '7',
    '4'
), (
    '3',
    '5'
), (
    '4',
    '6'
), (
    '5',
    '6'
), (
    '3',
    '2'
)

UPDATE ticket
SET price = 12.99