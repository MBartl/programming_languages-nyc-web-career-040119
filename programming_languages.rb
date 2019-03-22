def reformat_languages(languages)
  new_hash = {}
  languages.each do |style, data1|
    data1.each do |language, data2|
      data2.each do |type_category, type|
        new_hash[language] = {:type => type, :style => [style]}
      end
    end
  end
  if new_hash[:javascript][:style].length = 1
    javascript_array_change = new_hash[:javascript][:style].to_s
    return javascript_array_change
  end
end

reformat_languages(languages)
