def nyc_pigeon_organizer(data)
  pigeon_hash = {} 
  
  data.each do |main_stat, stat_name|
    stat_name.each do |attribute, array|
      array.each do |name|
        pigeon_hash[name] = {:color => [], :gender => [], :lives => []}
      end 
    end 
  end 

  data[:color].each do |color_name, pig_array|
    pig_array.each do |name|
      pigeon_hash[name][:color] << color_name.to_s
    end 
  end 
  
  data[:gender].each do |sex, pig_array|
    pig_array.each do |name|
      pigeon_hash[name][:gender] << sex.to_s
    end 
  end 
  
  data[:lives].each do |loc, pig_array|
    pig_array.each do |name|
      pigeon_hash[name][:lives] << loc.to_s 
    end 
  end 
  
  pigeon_hash

end

