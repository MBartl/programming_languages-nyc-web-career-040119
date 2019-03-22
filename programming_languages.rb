def reformat_languages(languages)
  new_hash = {}
  languages.each do |style, data1|
    data1.each do |language, data2|
      data2.each do |type_category, type|
        type_holder = 
        new_hash[language] = {:type => type, :style => [style]}
      end
    end
  end
  return new_hash
end

reformat_languages(languages)
