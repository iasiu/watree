from wsgiref.simple_server import make_server

import falcon

import firebase_admin
from firebase_admin import db


class Init:
    def on_init():
        defaults = []
        defaults_temp = []
        for i in range(168):
            defaults.append(0.5)
            defaults_temp.append(20.0)
        ref.set({
            "HomeData": {
                "temperature": 20,
                "airHumidity": 0.5,
                "soilHumidity": 0.5,
                "isWatering": False
            },
            "HistoryData": {
                "temperaturePoints": defaults_temp,
                "airHumidityPoints": defaults,
                "soilHumidityPoints": defaults,
            },
        }
        )


class SoilHumidity:
    def on_get(self, req, resp):
        data = ref.get()
        soilHumidity = float(req.query_string)/100
        ref.set({
            "HomeData": {
                "temperature": data['HomeData']['temperature'],
                "airHumidity": data['HomeData']['airHumidity'],
                "soilHumidity": soilHumidity,
                "isWatering": data['HomeData']['isWatering']
            },
            "HistoryData": {
                "temperaturePoints": data['HistoryData']['temperaturePoints'],
                "airHumidityPoints": data['HistoryData']['airHumidityPoints'],
                "soilHumidityPoints": data['HistoryData']['soilHumidityPoints'][1:] + [soilHumidity],
            },
        }
        )
        """Handles GET requests"""
        resp.status = falcon.HTTP_200  # This is the default status
        resp.content_type = falcon.MEDIA_TEXT  # Default is JSON, so override
        resp.text = (
            f'soil humidity: {req.query_string}%\n'
        )


class AirHumidity:
    def on_get(self, req, resp):
        data = ref.get()
        airHumidity = float(req.query_string)/100
        ref.set({
            "HomeData": {
                "temperature": data['HomeData']['temperature'],
                "airHumidity": airHumidity,
                "soilHumidity": data['HomeData']['soilHumidity'],
                "isWatering": data['HomeData']['isWatering']
            },
            "HistoryData": {
                "temperaturePoints": data['HistoryData']['temperaturePoints'],
                "airHumidityPoints": data['HistoryData']['airHumidityPoints'][1:] + [airHumidity],
                "soilHumidityPoints": data['HistoryData']['soilHumidityPoints'],
            },
        }
        )
        """Handles GET requests"""
        resp.status = falcon.HTTP_200
        resp.content_type = falcon.MEDIA_TEXT
        resp.text = (
            f'air humidity: {req.query_string}%\n'
        )


class Temperature:

    def on_get(self, req, resp):
        data = ref.get()
        temperature = float(req.query_string)

        ref.set({
            "HomeData": {
                "temperature": temperature,
                "airHumidity": data['HomeData']['airHumidity'],
                "soilHumidity": data['HomeData']['soilHumidity'],
                "isWatering": data['HomeData']['isWatering']
            },
            "HistoryData": {
                "temperaturePoints": data['HistoryData']['temperaturePoints'][1:] + [temperature],
                "airHumidityPoints": data['HistoryData']['airHumidityPoints'],
                "soilHumidityPoints": data['HistoryData']['soilHumidityPoints'],
            },
        }
        )
        """Handles GET requests"""
        resp.status = falcon.HTTP_200
        resp.content_type = falcon.MEDIA_TEXT
        resp.text = (
            f'temperature: {req.query_string}\n'
        )


class Watering:
    def on_get(self, req, resp):
        data = ref.get()
        watering = int(req.query_string)
        ref.set({
            "HomeData": {
                "temperature": data['HomeData']['temperature'],
                "airHumidity": data['HomeData']['airHumidity'],
                "soilHumidity": data['HomeData']['soilHumidity'],
                "isWatering": bool(watering)
            },
            "HistoryData": {
                "temperaturePoints": data['HistoryData']['temperaturePoints'],
                "airHumidityPoints": data['HistoryData']['airHumidityPoints'],
                "soilHumidityPoints": data['HistoryData']['soilHumidityPoints'],
            },
        }
        )
        """Handles GET requests"""
        resp.status = falcon.HTTP_200
        resp.content_type = falcon.MEDIA_TEXT
        resp.text = (
            f'watering: {req.query_string} ({bool(watering)})\n'
        )


app = falcon.App()


app.add_route('/soil_humidity', SoilHumidity())

app.add_route('/air_humidity', AirHumidity())

app.add_route('/temperature', Temperature())

app.add_route('/watering', Watering())

# app.add_route('/request_watering', Watering())

if __name__ == '__main__':

    cred_obj = firebase_admin.credentials.Certificate('watree-cred.json')
    default_app = firebase_admin.initialize_app(cred_obj, {
        'databaseURL': 'https://watree-bbbaf-default-rtdb.europe-west1.firebasedatabase.app/'
    })
    ref = db.reference("/")

    Init.on_init()

    with make_server('', 8000, app) as httpd:
        print('Serving on port 8000...')

        # Serve until process is killedcc
        httpd.serve_forever()
