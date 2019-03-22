def reformat_languages(languages)
  new_hash = {}
  languages.each do |style, data1|
    data1.each do |language, data2|
      data2.each do |type_category, type|
        new_hash[language] = {:type => type, :style => [style]}
      end
    end
  end
  if new_hash[:javascript][:style] == [:functional]
    new_hash[:javascript][:style].unshift[":oo, "]
    return new_hash[:javascript][:style]
  end
end

reformat_languages(languages)
