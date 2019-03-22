def reformat_languages(languages)
  new_hash = {}
  languages.each do |style, data1|
    data1.each do |language, data2|
      data2.each do |type_category, type|
        new_hash[language] = {:type => type, :style => []}
      end
    end
  end
  new_hash.each do |language, data3|
    if new_hash[language].to_s == 'ruby' || 'ruby'
      return new_hash[language]
    end
  end
end

reformat_languages(languages)
