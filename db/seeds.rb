# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end

puts 'start create foods ...'

foods = [ 
  "ramen", "sushi", "curryrice", "hamburg", "udon",
  "yakisoba", "gyoza", "tendon", "omurice", "karaage",
  "katsudon", "mabodofu", "oyakodon", "napolitan", "bibimbap",
  "tonkatsu", "chickennanban", "gratin", "pizza", "shogayaki",
  "kaisendon", "steak", "friedrice", "yakiniku", "tacorice",
  "hiyashichuka", "sandwich", "soba", "motsunabe", "doria"
]

comments = [ 
  "こってりスープに絡むもちもち麺！\r\n今日はがっつりラーメンで決まり！", 
  "新鮮なネタが口の中でとろける。\r\nちょっと贅沢な気分の時にぴったり！",
  "スパイスの香りに食欲爆発！\r\nごはんが止まらない王道の一皿。",
  "ジュワッとあふれる肉汁！\r\n濃厚デミグラスソースでご飯が進む！",
  "あったかい出汁にやさしいコシ。\r\n体も心もほっこり温まる一杯。",
  "香ばしいソースの香りに食欲全開！\r\n鉄板の定番メニュー。",
  "外はパリッ、中はジューシー！\r\nビールと一緒にいかが？",
  "サクサクの天ぷらが甘辛ダレとベストマッチ！\r\n満足度100％！",
  "ふわとろ卵とケチャップライスの絶妙ハーモニー。\r\n誰もが好きなあの味。",
  "サクサクジューシーな鶏肉をひと口。\r\nついつい手が止まらない！",
  "卵とじでとろけるとんかつ。\r\nガツンと食べたい日に！",
  "ピリ辛と旨味がクセになる！\r\nご飯にかけてかきこみたい！",
  "やさしい出汁とふわふわ卵が\r\n鶏肉と絶妙に絡む一杯。",
  "ケチャップの甘さとベーコンの香ばしさが\r\nたまらない懐かしの味。",
  "野菜たっぷり、\r\nコチュジャンのピリ辛で元気チャージ！",
  "分厚いカツにサクサク衣！\r\nソースをたっぷりかけて召し上がれ。",
  "甘酢とタルタルの相性抜群！\r\nご飯がすすむボリューム系。",
  "あつあつトロ〜リ、\r\nホワイトソースとチーズが決め手！",
  "チーズとろけるアツアツを頬張って、\r\n気分はイタリアン！",
  "甘辛ダレに漬け込んだ豚肉が\r\nご飯を呼ぶ王道定食！",
  "海の幸たっぷり、\r\n贅沢なひとときを味わえる一杯。",
  "分厚い肉をジュッと焼いて。\r\n今日はちょっとリッチにいこう！",
  "パラパラごはんと香ばしい香り！\r\n中華の鉄板メニュー。",
  "ジュージュー焼ける音が食欲をそそる！\r\n白ごはんが止まらない！",
  "スパイシーなミンチと\r\nチーズ＆レタスの絶妙バランス！",
  "暑い日にぴったり！\r\nさっぱり具材とごまだれがベストマッチ。",
  "ふわふわパンに具だくさん！\r\n忙しい朝にもぴったりの一品。",
  "つるりとしたのど越しと\r\nキリッとしたつゆで、さっぱりお昼に。",
  "コトコト煮込んだ旨味がしみしみ。\r\n白ご飯にもお酒にも合う！",
  "香ばしく焼けたチーズの下から、\r\nとろとろソースとご飯が登場！"
]

names = [ 
  "ラーメン", "寿司", "カレーライス", "ハンバーグ", "うどん",
  "焼きそば", "餃子", "天丼", "オムライス", "唐揚げ",
  "カツ丼", "麻婆豆腐", "親子丼", "ナポリタン", "ビビンバ",
  "とんかつ", "チキン南蛮", "グラタン", "ピザ", "生姜焼き",
  "海鮮丼", "ステーキ", "チャーハン", "焼肉", "タコライス",
  "冷やし中華", "サンドイッチ", "そば", "もつ鍋", "ドリア"
]

foods.length.times do |i|
  Food.create!(
    name: names[i],
    comment: comments[i],
    food_image: foods[i],
    created_at: Time.current,
    updated_at: Time.current
  )
end

puts 'finish create foods ...'
