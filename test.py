import tornado.ioloop
import tornado.web
import tornado.escape
import tornado.httpserver
import os.path
import mysql.connector
try:
	import simplejson as json
except:
	import json
	
class MainHandler(tornado.web.RequestHandler):
	def get(self):
		self.render("fileapi.html")
		
class ttipHandler(tornado.web.RequestHandler):
	def get(self, hash, name):
		cursor = self.application.cursor
		cursor.execute("SELECT name, spotter FROM malware WHERE md5 = '" + hash + "' LIMIT 0, 4")
		entries = cursor.fetchall()
        
        	if not entries:
            		self.render("index.html", entries='')
            	else:
	        	self.render("index.html", entries=entries, name=name, md5=hash)

class MD5Handler(tornado.web.RequestHandler):
	def get(self, hash):
		cursor = self.application.cursor
		cursor.execute("SELECT id FROM malware WHERE md5 = '" + hash + "' LIMIT 0, 1")
		entries = cursor.fetchall()
		
		if entries:
            		self.write({'check': 'WARNING'})
		else:
			self.write({'check': 'OK'})
			
class Application(tornado.web.Application):
	def __init__(self):
		handlers = [
			(r"/", MainHandler),
			(r"/md5/([0-9a-z]+)", MD5Handler),
			(r"/ttip/([0-9a-z]+)/(.+)", ttipHandler),
		]
		settings = dict(
			template_path=os.path.join(os.path.dirname(__file__), "templates"),
			static_path=os.path.join(os.path.dirname(__file__), "static"),
			download_path=os.path.join(os.path.dirname(__file__), "download"),
			debug=True,
		)
		tornado.web.Application.__init__(self, handlers, **settings)

		# Have one global connection across handlers
		self.db = mysql.connector.connect(user='root', database='check')
		self.cursor = self.db.cursor()

def main():
	http_server = tornado.httpserver.HTTPServer(Application())
	http_server.listen("5000")
	tornado.ioloop.IOLoop.instance().start()

if __name__ == "__main__":
	main()
