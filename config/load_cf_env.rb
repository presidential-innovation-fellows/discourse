require 'json'

begin
  vcap = ENV["VCAP_SERVICES"]
  JSON.parse(vcap)["user-provided"].each do |service|
    if service["name"].include?("-env")
      service["credentials"].each do |k,v|
        ENV[k] = v
      end
    end
  end
rescue
  puts "Error loading env vars"
end
