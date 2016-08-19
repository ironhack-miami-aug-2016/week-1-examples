require("yaml/store")

store = YAML::Store.new("blah.yml")

# Save data to the YAML store
store.transaction do
  store[:name] = "Nizar"
  store[:foods] = [ "pizza", "cookies" ]
end



# Read data from the YAML store
store.transaction do
  p store[:name]
  p store[:foods]

  # @current_room = store[:current_room]
  # @rooms = store[:rooms]
end
