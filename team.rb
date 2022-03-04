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
  Giants = Team.new("Giants",67,45,8)
  Tigers = Team.new("Tigers",60,53,7)
  Dragons = Team.new("Dragons",60,55,5)
  BayStars = Team.new("BayStars",56,58,6)
  Carp = Team.new("Carp",52,56,12)
  Swallows = Team.new("Swallows",41,69,10)

  #インスタンスメソッドの呼び出し
  Giants.show_team_result
  Tigers.show_team_result
  Dragons.show_team_result
  BayStars.show_team_result
  Carp.show_team_result
  Swallows.show_team_result