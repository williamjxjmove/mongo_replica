MongoMapper.connection = Mongo::Connection.new('10.185.20.184', 27017)
MongoMapper.database = "test"
 
if defined?(PhusionPassenger)
  PhusionPassenger.on_event(:starting_worker_process) do |forked|
  MongoMapper.connection.connect if forked
   end
end
