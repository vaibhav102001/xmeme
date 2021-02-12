chmod +x install.sh

sudo ./install.sh


# 1. Run the user’s server execution steps which will bring up the server

# 2. We’ll be running your server_run.sh as a background process (using &) so that we can run the next set of commands

chmod +x server_run.sh

./server_run.sh &


# 3. Add a sleep timer to sleep.sh depending upon how long you want to sleep so that the server is ready.

chmod +x sleep.sh

./sleep.sh


# Execute the GET /memes endpoint using curl to ensure your DB is in a clean slate

# Should return an empty array.

curl --location --request GET 'http://localhost:8081/memes'


# Execute the POST /memes endpoint using curl

curl --location --request POST 'http://<Server_URL>/memes' \

--header 'Content-Type: application/json' \

--data-raw '{

"name": "xyz",

"url": "https://images.pexels.com/photos/1078983/pexels-photo-1078983.jpeg",

"caption": "This is a meme"

}'


# Execute the GET /memes endpoint using curl

curl --location --request GET 'http://localhost:8081/memes'