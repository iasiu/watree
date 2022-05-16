from wsgiref.simple_server import make_server

import falcon

# Falcon follows the REST architectural style, meaning (among
# other things) that you think in terms of resources and state
# transitions, which map to HTTP verbs.


class SoilHumidity:
    def on_get(self, req, resp):
        print(req.query_string)
        """Handles GET requests"""
        resp.status = falcon.HTTP_200  # This is the default status
        resp.content_type = falcon.MEDIA_TEXT  # Default is JSON, so override
        resp.text = (
            f'wilgoc ziemi przyjeta kolego: {req.query_string}\n'
        )


class AirHumidity:
    def on_get(self, req, resp):
        print(req.query_string)
        """Handles GET requests"""
        resp.status = falcon.HTTP_200
        resp.content_type = falcon.MEDIA_TEXT
        resp.text = (
            f'wilgoc powietrza przyjeta kolego: {req.query_string}\n'
        )


class Temperature:
    def on_get(self, req, resp):
        print(req.query_string)
        """Handles GET requests"""
        resp.status = falcon.HTTP_200
        resp.content_type = falcon.MEDIA_TEXT
        resp.text = (
            f'temperatura przyjeta kolego: {req.query_string}\n'
        )


app = falcon.App()


app.add_route('/soil_humidity', SoilHumidity())

app.add_route('/air_humidity', AirHumidity())

app.add_route('/temperature', Temperature())

if __name__ == '__main__':
    with make_server('', 8000, app) as httpd:
        print('Serving on port 8000...')

        # Serve until process is killed
        httpd.serve_forever()
