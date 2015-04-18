json.array!(@contributors) do |contributor|
  json.extract! contributor, :id, :name
  json.url contributor_url(contributor, format: :json)
end
