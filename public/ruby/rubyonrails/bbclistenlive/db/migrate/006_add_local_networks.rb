class AddLocalNetworks < ActiveRecord::Migration
  BBC_LOCAL_NETWORKS = {
  "berkshire"   => {
    :name => "BBC Radio Berkshire",
    :base_name => "berkshire"},
  "bristol"   => {
    :name => "BBC Radio Bristol",
    :base_name => "bristol"},  
  "cambridgeshire"   => {
    :name => "BBC Radio Cambridgeshire",
    :base_name => "cambridgeshire"},  
  "cleveland"   => {
    :name => "BBC Radio Cleveland",
    :base_name => "cleveland"},
  "cornwall"   => {
    :name => "BBC Radio Cornwall",
    :base_name => "cornwall"},
  "covwarks" => {
    :name => "BBC Radio Coventry and Warwickshire",
    :base_name => "covwarks" },
  "cumbria" => {
    :name => "BBC Radio Cumbria",
    :base_name => "cumbria" },
  "cymru" => {
    :name => "BBC Radio Cymru",
    :base_name => "cymru" },
  "derby" => {
    :name => "BBC Radio Derby",
    :base_name => "derby" },
  "devon" => {
    :name => "BBC Radio Devon",
    :base_name => "devon" },
  "essex" => {
    :name => "BBC Radio Essex",
    :base_name => "essex" },
  "foyle" => {
    :name => "BBC Radio Foyle",
    :base_name => "foyle" },
  "gloucester" => {
    :name => "BBC Radio Gloucestershire",
    :base_name => "gloucester" },
  "gmr" => {
    :name => "BBC GMR",
    :base_name => "gmr" },
  "guernsey" => {
    :name => "BBC Radio Guernsey",
    :base_name => "guernsey" },
  "hereworc" => {
    :name => "BBC Radio Hereford and Worcester",
    :base_name => "hereworc" },
  "humberside" => {
    :name => "BBC Radio Humberside",
    :base_name => "humberside" },
  "jersey" => {
    :name => "BBC Radio Jersey",
    :base_name => "jersey" },
  "kent" => {
    :name => "BBC Radio Kent",
    :base_name => "kent" },
  "lancashire" => {
    :name => "BBC Radio Lancashire",
    :base_name => "lancashire" },
  "leeds" => {
    :name => "BBC Radio Leeds",
    :base_name => "leeds" },
  "leicester" => {
    :name => "BBC Radio Leicester",
    :base_name => "leicester" },
  "lincolnshire" => {
    :name => "BBC Radio Lincolnshire",
    :base_name => "lincolnshire" },
  "london" => {
    :name => "BBC BBC London 94.9",
    :base_name => "london" },
  "manchester" => {
    :name => "BBC Radio Manchester",
    :base_name => "manchester" },
  "merseyside" => {
    :name => "BBC Radio Merseyside",
    :base_name => "merseyside" },
  "nangaidheal" => {
    :name => "BBC Radio nan Gaidheal ",
    :base_name => "nangaidheal" },
  "newcastle" => {
    :name => "BBC Radio Newcastle",
    :base_name => "newcastle" },
  "norfolk" => {
    :name => "BBC Radio Norfolk",
    :base_name => "norfolk" },
  "northampt" => {
    :name => "BBC Radio Northampton",
    :base_name => "northampt" },
  "nottingham" => {
    :name => "BBC Radio Nottingham",
    :base_name => "nottingham" },
  "oxford" => {
    :name => "BBC Radio Oxford",
    :base_name => "oxford" },
  "scotland" => {
    :name => "BBC Radio Scotland",
    :base_name => "scotland" },
  "sheffield" => {
    :name => "BBC Radio Sheffield",
    :base_name => "sheffield" },
  "shropshire" => {
    :name => "BBC Radio Shropshire",
    :base_name => "shropshire" },
  "solent" => {
    :name => "BBC Radio Solent",
    :base_name => "solent" },
  "somerset" => {
    :name => "BBC Radio Somerset",
    :base_name => "somerset" },
  "southern" => {
    :name => "BBC Southern Counties Radio",
    :base_name => "southern" },
  "stoke" => {
    :name => "BBC Radio Stoke",
    :base_name => "stoke" },
  "suffolk" => {
    :name => "BBC Radio Suffolk",
    :base_name => "suffolk" },
  "swindon" => {
    :name => "BBC Radio Swindon",
    :base_name => "swindon" },
  "three" => {
    :name => "BBC Three Counties Radio",
    :base_name => "three" },
  "ulster" => {
    :name => "BBC Radio Ulster",
    :base_name => "ulster" },
  "wales" => {
    :name => "BBC Radio Wales",
    :base_name => "wales" },
  "wiltshire" => {
    :name => "BBC Radio Wiltshire",
    :base_name => "wiltshire" },
  "wm" => {
    :name => "BBC Radio WM",
    :base_name => "wm" },
  "york" => {
    :name => "BBC Radio York ",
    :base_name => "york" }
  }
  
  def self.up    
    BBC_LOCAL_NETWORKS.each do |id, hash|
      n = Network.find_or_initialize_by_channelid(id)
      n.base_name = hash[:base_name] 
      n.name = hash[:name]
      n.tagline = hash[:tagline]
      n.is_national = 0
      n.save!
    end
  end

  def self.down
  end
end
