Merb.logger.info("Loaded TEST Environment...")

Merb::Config.use do |c|
  c[:testing] = true
  c[:exception_details] = true
  c[:log_auto_flush ] = true
end

DataMapper.setup(:default, "sqlite3::memory:")
