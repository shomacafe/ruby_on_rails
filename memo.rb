require "csv"
 
    puts "1(新規でメモを作成) 2(既存のメモ編集する)"
 
    memo_type = gets.to_s .chomp
 
if memo_type == "1"
    puts "拡張子を除いたファイルを入力してください。"
    file_name = gets.chomp
    puts "メモしたい内容を記入してください"
    puts "完了したらCtrl + Dをおします"
    memo = $stdin.read

    CSV.open("#{file_name}.csv","w") do |csv|
    csv << ["#{memo}"]
    end

elsif memo_type == "2"
    puts "編集したいファイル名を拡張子を除いて入力してください。"
    file_name = gets.chomp
    puts "メモしたい内容を記入してください"
    puts "完了したらCtrl + Dをおします"
    memo = $stdin.read

    CSV.open("#{file_name}.csv","a") do |csv|
    csv << ["#{memo}"]
    end
end