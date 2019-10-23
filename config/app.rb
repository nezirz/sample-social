set :environment, Sprockets::Environment.new

environment.append_path "assets/stylesheets"
environment.append_path "assets/javascripts"

environment.js_compressor  = Uglifier.new(harmony: true) # because it was complaining about ES6 after adding popper
environment.css_compressor = :scss

get "/assets/*" do
  env["PATH_INFO"].sub!("/assets", "")
  settings.environment.call(env)
end
