class OrderLunch
  def initialize
    @tax  = 0.1
    @menu = [
      {name: '生姜焼き定食' , price: 600 },
      {name: '焼き魚定食' , price: 600},
      {name: 'チキン南蛮定食' , price: 700},
      {name: '麻婆豆腐定食' , price: 800},
      {name: '醤油ラーメン' , price: 800}
    ]
  end

  def take_orders
    display_menu
    price = select_menu[:price]
    calc_price(price)
  end

  def display_menu
    puts 'ご注文の下を下記の番号から選択してください'
    @menu.each_with_index do |setmeal, i|
      puts "[#{i}] 商品名：#{setmeal[:name]} 価格：#{setmeal[:price]}円"
    end
  end

  def select_menu
    selected = @menu[gets.to_i]
    puts "#{selected[:name]}が選択されました"
    selected
  end

  def calc_price(price)
    price = price + price * @tax
    price = price.floor
    puts "価格は#{price}円です"
  end

end
orderlunch = OrderLunch.new
orderlunch.take_orders