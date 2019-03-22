def reformat_languages(languages)
  new_hash = {}
  languages.each do |type, data|
    data.each do |language, type|
      new_hash[language] = {:type => type, style [:oo]}
    end
  end
  return new_hash
end

reformat_languages(languages)
