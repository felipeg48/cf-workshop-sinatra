configure :production, :development do
  db = URI.parse(ENV['DATABASE_URL'] || 'mysql://root@localhost:3306/mydb' )

  ActiveRecord::Base.establish_connection)
    :adapter => db.scheme,
    :host => db.host,
    :username => db.user,
    :password => db.password,
    :database => db.path[1..-1],
    :encoding => 'utf8'
  )

end
