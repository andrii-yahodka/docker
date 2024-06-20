# Python Simple Web Application

This is a simple web application using [Python Flask](http://flask.pocoo.org/). 
   
## Steps
  ```bash
  docker build . -t python_simple_web_app
  docker run -p 80:8080 python_simple_web_app
  ```