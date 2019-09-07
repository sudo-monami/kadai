#プレイヤー
puts "じゃんけん・・・・"
puts "[0]グー,[1]チョキ,[2]パー"
puts "じゃんけんで出す手を入力"
player_hand = gets.to_i
#if player_hand > 2
# while player_hand < 3
#  puts player_hand
#  puts "0~2の整数を入力してください"
#  player_hand = gets.to_i
# end
#end

if player_hand == 0
  puts "プレイヤーはグーを出しました"
  elsif player_hand == 1
  puts "プレイヤーはチョキを出しました"
  elsif player_hand == 2 
  puts"プレイヤーはパーを出しました"
end

#相手
program_hand = Random.new()
puts "じゃんけん・・・・"
puts "[0]グー,[1]チョキ,[2]パー"
puts "じゃんけんで出す手を入力"

1.times do 
   program_hand = program_hand.rand(3)
   puts program_hand
  if program_hand == 0
    puts "相手はグーを出しました"
    elsif program_hand == 1
    puts "相手はチョキを出しました"
  else
    puts "相手はパーを出しました"
  end
end

#勝敗
if player_hand == program_hand
  puts "あいこです"
  elsif player_hand == 0 && program_hand == 1 || player_hand == 1 && program_hand == 2 || player_hand == 2 && program_hand == 0
  puts "プレイヤーの勝ちです"
else 
  puts "プレイヤーの負けです"
end