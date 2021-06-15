# Retorna a variavel de instância @categories definida no controller
json.array! @categories do |category|
  json.id category.id
  json.title category.title.capitalize
  json.image_url polymorphic_url(category.image) if category.image.attached?
end