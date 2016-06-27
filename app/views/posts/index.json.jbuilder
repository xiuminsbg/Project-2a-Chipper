json.array!(@posts) do |post|
  json.extract! post, :id, :comment
  json.url post_url(post, format: :json)
end
