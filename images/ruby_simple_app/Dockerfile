FROM ubuntu:rolling

ENV USER_NAME="Ruby Simple App User"

RUN apt-get update && apt-get install -y ruby
RUN gem install faker

COPY app.rb /usr/src/faker/

WORKDIR /usr/src/faker

CMD ["ruby", "app.rb"]
