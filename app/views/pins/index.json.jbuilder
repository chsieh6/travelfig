json.array!(@pins) do |pin|
  json.extract! pin, :descriptions
  json.url pin_url(pin, format: :json)
end