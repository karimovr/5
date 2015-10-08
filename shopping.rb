basket_hash = {}
basket_total = 0
loop do
	
puts "Введите название товара или СТОП"
product_title = gets.strip
break if product_title == "СТОП"
puts "Введите количество товаров"
product_count = gets.chomp.to_i
puts "Введите стоимость товара"
product_price = gets.chomp.to_f
basket_hash[product_title] = {price:product_price,
count:product_count}
end

basket_hash.each do |product, params| 
	local_price = params[:price] * params[:count]
	puts "#{product}: #{local_price} руб."
	basket_total += local_price
end
puts " Итоговая сумма = #{basket_total} рублей"
