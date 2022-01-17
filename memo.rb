require "csv"

puts "1(新規でメモ作成) 2(既存のメモを編集)　その他(アプリ終了)"

memo_type = gets.chomp

if memo_type == "1"
  puts "拡張子を除いたファイル名を入力してください。"
  file_name = gets.chomp
  puts "メモしたい内容を入力してください。"
  puts "完了したらCtrl+Dを押します。"
  memo = STDIN.readlines
  CSV.open("#{file_name}.csv","w") do |csv|
    csv << ["#{memo}"]
end
elsif memo_type == "2"
  puts "編集するファイル名を入力してください。(拡張子を除く)"
  edit_file_name = gets.chomp
  puts "追記したい内容を入力してください。"
  puts "完了したらCtrl+Dを押します。"
  memo_additonal = STDIN.readlines
  CSV.open("#{edit_file_name}.csv","a") do |csv|
    csv << ["#{memo_additonal}"]
  end
else
  puts "メモアプリを終了します。"
end