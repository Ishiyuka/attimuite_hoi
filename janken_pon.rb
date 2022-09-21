class Hero
  def fingger
    puts "あっちむいて、ほい！"
    puts "0: 上, 1: 下, 2: 右, 3: 左"

  input_fingger = gets.chomp
  # gets.chomp 改行を取り除いた文字列を表示させる

  while true
    # 条件がtrueの間、繰り返される
      if (["0","1","2","3"].include?(input_fingger))
        # .include? その文字が含まれているかどうか
        return input_fingger.to_i
        # to_i　文字列を整数にする
      else
        # 0,1,2,3以外を入力した場合の処理
        puts "これは真剣勝負だ。斜めを見るんじゃない！"
        puts "0: 上, 1: 下, 2: 右, 3: 左"
        input_fingger = gets.chomp
      end
   end
  end
end

class Lastboss
  def face
    return rand(0..4)
    # rand ０以上４未満の整数をランダムに返す
  end
end

class Attimuite_hoi
  def hoi(hero_fingger, lastboss_face)
    attimuite_hoi = ["上","下","右","左"]
    # 変数「atiimuite_hoi」に["上","下","右","左"]を代入
    puts "ラスボスは#{attimuite_hoi[lastboss_face]}を向いた！！"
    if hero_fingger != lastboss_face
      puts "ミス！スッと躱された・・・"
      true #「true」を返してあっち向いてホイを繰り返し実行させます。
    else # ヒーローの指とラスボスの顔が一致しない時
      puts "ラスボスを倒した！あなたがヒーローです。"
     false
      #「false」を返して戦いを終了させます。
    end
  end
end

class BattleStart
  def self.attimuite
    # selfを使用することで、BattleStartをインスタンス化することなく、クラス名を使ってattimuite_hoiメソッドを呼び出します
    hero = Hero.new 
    # 変数「hero」にHeroをインスタンス化したものを代入します。
    lastboss = Lastboss.new
    attimuite_hoi = Attimuite_hoi.new
    next_battle = true
    # 「next_battle」が「false」だと戦いを終了し、「true」だと戦いを継続します。
    while next_battle == true
    # # 変数「next_battle」にあっち向いてホイを実行して返ってきた戻り値に代入します。
    next_battle = attimuite_hoi.hoi(hero.fingger,lastboss.face)
    end
  end
end
BattleStart.attimuite
# クラス名を使ってattimuite_hiメソッドを呼び出し、最後の戦いが始まります。