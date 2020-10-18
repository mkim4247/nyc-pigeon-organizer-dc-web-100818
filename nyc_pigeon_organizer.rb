def nyc_pigeon_organizer(pigeon_data)
  pigeon_list = {}
  #iterate down to each name and add them to new hash
  pigeon_data.each do |attribute, description_hash|
    #:color, :purple => {"Theo", ...}
    description_hash.each do |description, names_arr|
      #:purple => ['Theo', ...]
      names_arr.each do |name|
        if pigeon_list[name].nil?
        # if name key doesn't already exist in pigeon_list, create it
          pigeon_list[name] = {}
          # pigeon_list = { "Theo" => {}, "Peter" => {},... }
        end
        if names_arr.include?(name)
        # if name exists in the name array, add an empty array
          pigeon_list[name][attribute] = []
          pigeon_list[name][attribute] << description.to_s
        end
      end
    end
  end
  pigeon_list
end