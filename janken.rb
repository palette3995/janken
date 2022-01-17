

puts "じゃんけん..."

def janken()
    puts "0(グー) 1(チョキ) 2(パー) 3(アプリ終了)"

    jankens = ["グー","チョキ","パー"]
    $player_choice = gets.to_i
   
    $enemy_choice = rand(3)
    
    case $player_choice 
    when 0,1,2
        puts "ホイ！"
        puts "__________________"
        puts "あなた：#{jankens[$player_choice]}を出しました。"
        puts "相手：#{jankens[$enemy_choice]}を出しました。"
        puts "__________________"
    else
        puts "__________________"
    end
end



def attimuitehoi()
    puts "あっち向いて〜"
    puts "0(上) 1(下) 2(左) 3(右)"
    
    
    directions = ["上","下","左","右"]
    $player_direction = gets.to_i
    $enemy_direction = rand(4)
    
    case $player_direction
    when 0,1,2,3
        puts "ホイ！"
        puts "__________________"
        puts "あなた：#{directions[$player_direction]}を選びました。"
        puts "相手：#{directions[$enemy_direction]}を選びました。"
        puts "__________________"
    else
        puts "__________________"
        puts "0〜3の数字を選んでください！"
        attimuitehoi()
    end
end


def game()
 janken()
 if $player_choice == $enemy_choice
    puts "あいこで..."
    game()
 elsif ($player_choice == 0 && $enemy_choice == 1) || ($player_choice == 1 && $enemy_choice == 2) || ($player_choice == 2 && $enemy_choice == 0)
    attimuitehoi()
    if $player_direction == $enemy_direction
       puts "あなたの勝ち！！"
    else
        puts "じゃんけん..."
        game()
    end
 elsif ($player_choice == 1 && $enemy_choice == 0) || ($player_choice == 2 && $enemy_choice == 1) || ($player_choice == 0 && $enemy_choice == 2)
    attimuitehoi()
    if $player_direction == $enemy_direction
       puts "あなたの負けです..."
    else
       puts "じゃんけん..."
       game()
    end
 else
    puts "ジャンケンアプリを終了します。"
 end

end

game()