# README

## DB(メモ)

MySQL のコマンドと`rails db:hoge`をするのが混ざってしまって悲しい。

手順

1. `bundle exec rails db:create`

2. `bundle exec rails db:migrate`

3. `bundle exec rails db:seed`

4. `mysql -u user -p orenagi_devel < sql/sample.sql`

5. `script/get_link_for_comics.rb`

6. `mysql -u user -p orenagi_devel < sql/add_link.sql`

多分、こんな感じでローカルで DB つくれる。
