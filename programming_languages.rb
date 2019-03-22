def reformat_languages(languages)
  new_hash = {}
  languages.each do |style, data1|
    data1.each do |language, data2|
      data2.each do |type_category, type|
        new_hash[language] = {:type => type, :style => [style]}
      end
    end
  end
  if new_hash[:javascript][:style].length == 1
    javascript_style_change = new_hash[:javascript][:style].to_s
    languages[:oo] do |style, data1|
      javascript_style_change.push(style)
    return javascript_style_change
  end
end

reformat_languages(languages)
