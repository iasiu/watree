from wsgiref.simple_server import make_server
import falcon


class HumidityHandler:
    def on_get(self, req, resp):
        resp.status = falcon.HTTP_200
        resp.content_type = falcon.MEDIA_TEXT


app = falcon.App()

humidity = HumidityHandler()

app.add_route('/humidity', humidity)

if __name__ == '__main__':
    with make_server('127.0.0.1', 8080, app) as httpd:
        print('Starting watree backend server on 8080')

        httpd.serve_forever()
