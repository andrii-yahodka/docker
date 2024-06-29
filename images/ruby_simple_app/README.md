# Ruby Simple Application

This is a simple application using Ruby. 
   
## Commands
  ```bash
  docker build . -t ruby_simple_app

  docker run ruby_simple_app

  docker run -e USER_NAME="Andrii Yahodka" ruby_simple_app

  docker run --env-file .env ruby_simple_app

  docker run ruby_simple_app sub_app.rb

  docker run -it --entrypoint /bin/bash ruby_simple_app
  ```
