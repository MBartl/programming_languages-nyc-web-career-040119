def reformat_languages(languages)
  new_hash = {}
  languages.each do |style, data1|
    data1.each do |language, data2|
      data2.each do |type_cat, type|
      new_hash[language] = {type, [:oo]}
    end
  end
  return new_hash
end

reformat_languages(languages)
