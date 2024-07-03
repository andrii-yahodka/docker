require 'sinatra'
require 'slim'
require 'pg'

DB = PG.connect(
  dbname: ENV['POSTGRES_DB'],
  user: ENV['POSTGRES_USER'],
  password: ENV['POSTGRES_PASSWORD'],
  host: 'db' # This is the name of the service in docker-compose.yml
)

get '/' do
  @names = fetch_names
  slim :index
end

def fetch_names
  DB.exec("SELECT name FROM names").map { |row| row['name'] }
end
