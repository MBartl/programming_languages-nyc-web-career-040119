def reformat_languages(languages)
  new_hash = {}
  languages.each do |style, data1|
    data1.each do |language, data2|
      data2.each do |type_category, type|
        new_hash[language] = {:type => type, :style => []}
      end
    end
  end
  new_hash.each do |language_new, data3|
    languages.each do |style, data1|
      data1.each do |language, data2|
        if new_hash[language_new].to_s == languages[style][language].to_s
          return check
          new_hash[language][:style] << languages[style].to_s
        end
      end
    end
  end
  return new_hash
end

reformat_languages(languages)
