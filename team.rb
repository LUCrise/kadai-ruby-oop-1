class Team
  
  #　インスタンス変数
  attr_accessor :name,:win,:lose,:draw
  
  #　イニシャライズメソッド（インスタンス生成と同時に処理される。数値の初期化。）
  def initialize(team_name,team_win,team_lose,team_draw)
    
    self.name = team_name
    self.win = team_win
    self.lose = team_lose
    self.draw = team_draw
    
  end
  
  #　勝率計算メソッド
  def calc_win_rate
    
    self.win.to_f / (self.win.to_f + self.lose.to_f)
    
  end
  
  #　ターミナルに結果を表示するメソッド
  def show_team_result
    
    puts "#{self.name}の2020年の成績は#{self.win}勝#{self.lose}敗#{self.draw}分、勝率は#{calc_win_rate}です。"
    
  end
  
end
  
  #インスタンスの生成
  giants = Team.new("Giants",67,45,8)
  tigers = Team.new("Tigers",60,53,7)
  dragons = Team.new("Dragons",60,55,5)
  bayStars = Team.new("BayStars",56,58,6)
  carp = Team.new("Carp",52,56,12)
  swallows = Team.new("Swallows",41,69,10)

  #インスタンスメソッドの呼び出し
  giants.show_team_result
  tigers.show_team_result
  dragons.show_team_result
  bayStars.show_team_result
  carp.show_team_result
  swallows.show_team_result