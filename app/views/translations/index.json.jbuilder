json.array!(@translations) do |translation|
  json.extract! translation, :id, :core_language, :target_language
  json.url translation_url(translation, format: :json)
end
