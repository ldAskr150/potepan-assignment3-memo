require "csv"
 
puts "1(新規でメモを作成) 2(既存のメモを編集する)"
 
memo_type = gets.to_i
 
if memo_type == 1
  
  puts "拡張子を除いたファイルを入力してください"
  file_name = gets.chomp
  
  puts "メモしたい内容を入力してください"
  puts "完了したらCtrl+Dを押します"
  memo = STDIN.read
  
  CSV.open("#{file_name}.csv", "w") do |csv|
    csv << ["#{memo}"]
  
  end
  
elsif memo_type == 2
  
  puts "既存のメモを編集します"
  puts "拡張子を除いた既存ファイルを入力してください"
  file_name = gets.chomp
  
  puts "編集したい内容を入力してください"
  puts "完了したらCtrl+Dを押します"
  memo = STDIN.read
  
  CSV.open("#{file_name}.csv", "a") do |csv|
    csv << ["#{memo}"]
  
  end
  
else
  puts "1か2の数字を入力してください"
end