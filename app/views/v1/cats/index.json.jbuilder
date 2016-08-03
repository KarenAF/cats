json.array! @cats.each do |cat|
  json.partial! 'cat.json.jbuilder', cat: cat
end