# Use the official Ruby image from the Docker Hub
FROM ruby:3.1.2-alpine

# Install dependencies
RUN apk update && apk add --no-cache build-base postgresql-dev

# Set the working directory
WORKDIR /app

# Copy the Gemfile and Gemfile.lock
COPY Gemfile Gemfile.lock ./

# Install the gems specified in the Gemfile
RUN bundle install

# Copy the rest of the application code
COPY . .

# Expose port 4567 to the outside world
EXPOSE 4567

# entrypoint to run the Sinatra app
ENTRYPOINT ["ruby", "app.rb"]

# Command to run the Sinatra app
CMD ["-o", "0.0.0.0"]
