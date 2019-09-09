class Food
    # ここにクラスの定義を書き加えてください
    @@menus = [ ]
    
    def initialize(name,calory)
      @name = name
      @calory = calory
    end
    
    def self.input
      puts "料理名を入力してください"
      name = gets.chomp
      puts "カロリーを入力してください:"
      calory = gets.to_i
      food = Food.new(name,calory)
      @@menus << food
    end
    
    def self.show_all_calory
      total_calory = 0
      puts "-----------------------------"
      
      @@menus.each do |menu|
        puts "#{menu.name}  :#{menu.calory}"
        total_calory += menu.calory
      end
      
      puts "-----------------------------"
      puts "カロリー合計  :#{total_calory}"
    end
    
    def name
      return @name
    end

    def calory
      return @calory
    end
end

while true do
   puts "[0]:カロリーを入力する"
   puts "[1]:カロリーの合計を見る"
   input = gets.to_i

   if input == 0
     Food.input           # カロリーの入力
   elsif input == 1
     Food.show_all_calory # カロリーの合計を表示
     exit
   end
end
