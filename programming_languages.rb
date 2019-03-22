def reformat_languages(languages)
  new_hash = {}
  languages.each do |type, language|
    new_hash[language] = language
  end
  return new_hash
end

reformat_languages(languages)
