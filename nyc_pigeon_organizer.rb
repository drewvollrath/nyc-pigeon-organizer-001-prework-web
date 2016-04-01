def pigeon_data
pigeon_data = {
  :color => {
    :purple => ["Theo", "Peter Jr.", "Lucky"],
    :grey => ["Theo", "Peter Jr.", "Ms. K"],
    :white => ["Queenie", "Andrew", "Ms. K", "Alex"],
    :brown => ["Queenie", "Alex"]
  },
  :gender => {
    :male => ["Alex", "Theo", "Peter Jr.", "Andrew", "Lucky"],
    :female => ["Queenie", "Ms. K"]
  },
  :lives => {
    "Subway" => ["Theo", "Queenie"],
    "Central Park" => ["Alex", "Ms. K", "Lucky"],
    "Library" => ["Peter Jr."],
    "City Hall" => ["Andrew"]
  }
}
end

def nyc_pigeon_organizer(data)
  # write your code here!
  pigeon = {}
  data.each do |key,hash|
    hash.each do |qual,name|
      name.each do |x|
        pigeon[x] = {} if !pigeon.has_key?(x)
        pigeon[x][key] = [] if pigeon[x][key] == nil
        pigeon[x][key] << qual.to_s
      end
    end
  end
  pigeon
end

