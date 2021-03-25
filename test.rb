# index = ["select the action from below", "1:conpose new blog","2:see the blog","3:exit app"]
#    index.each do |content|
#      puts content
#    end
#    number = gets.to_i
index = ["以下より行う操作を選んでください", "1:ブログを作成する", "2:作成されたブログを見る", "3:ブログアプリを終了する"] # 1
index.each do |content| # 2
  puts content
end
number = gets.to_i
