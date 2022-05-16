run: 
python server.py


sample temperature post: 

curl localhost:8000/temperature?30

curl localhost:8000/air_humidity?60

curl localhost:8000/soil_humidity?60

curl localhost:8000/watering?1

curl localhost:8000/watering?0