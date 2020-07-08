Book.create(:title => 'フィリピン', :schoolname => 'フィリピン学校1')
Book.create(:title => 'フィリピン', :schoolname => 'フィリピン学校2')
Book.create(:title => 'フィリピン', :schoolname => 'フィリピン学校3')

5.times do |no|
  Book.create(:schoolname => 'タイトル #{no}')