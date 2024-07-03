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
  puts ENV['POSTGRES_DB']
  slim :index
end

post '/greet' do
  @name = params[:name]
  save_name(@name)
  slim :greet
end

def save_name(name)
  DB.exec_params("INSERT INTO names (name) VALUES ($1)", [name])
end
