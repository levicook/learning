Merb::Router.prepare do |r|
  r.match('/').to(:controller => 'hello_very_flat_app', :action =>'index')
end

class HelloVeryFlatApp < Merb::Controller
  def index
    "hi"
  end
end

Merb::Config.use { |c|
  c[:framework]           = {},
  c[:session_store]       = 'none',
  c[:exception_details]   = true
}