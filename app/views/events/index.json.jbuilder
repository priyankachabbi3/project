json.array!(@events) do |event|
  json.extract! event, :title, :start
  json.url event_url(event, format: :html)
end