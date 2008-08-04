Merb.logger.info("Loaded DEVELOPMENT Environment...")

Merb::Config.use do  |c|
  c[:exception_details] = true
  c[:reload_classes] = true
  c[:reload_time] = 0.5
  c[:log_auto_flush ] = true
end

db_root = Merb.root / "db"
mkdir_p(db_root) unless File.exists?(db_root)

DataMapper.setup(:default, {
  :adapter => :sqlite3,
  :database => db_root / "development.sqlite3"
})
