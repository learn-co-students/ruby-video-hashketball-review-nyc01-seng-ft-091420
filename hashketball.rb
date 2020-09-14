# Write your code below game_hash

def game_hash
  {
    home: {
      team_name: "Brooklyn Nets",
      colors: ["Black", "White"],
      players: [
        {
          player_name: "Alan Anderson",
          number: 0,
          shoe: 16,
          points: 22,
          rebounds: 12,
          assists: 12,
          steals: 3,
          blocks: 1,
          slam_dunks: 1
        },
        {
          player_name: "Reggie Evans",
          number: 30,
          shoe: 14,
          points: 12,
          rebounds: 12,
          assists: 12,
          steals: 12,
          blocks: 12,
          slam_dunks: 7
        },
        {
          player_name: "Brook Lopez",
          number: 11,
          shoe: 17,
          points: 17,
          rebounds: 19,
          assists: 10,
          steals: 3,
          blocks: 1,
          slam_dunks: 15
        },
        {
          player_name: "Mason Plumlee",
          number: 1,
          shoe: 19,
          points: 26,
          rebounds: 11,
          assists: 6,
          steals: 3,
          blocks: 8,
          slam_dunks: 5
        },
        {
          player_name: "Jason Terry",
          number: 31,
          shoe: 15,
          points: 19,
          rebounds: 2,
          assists: 2,
          steals: 4,
          blocks: 11,
          slam_dunks: 1
        }
      ]
    },
    away: {
      team_name: "Charlotte Hornets",
      colors: ["Turquoise", "Purple"],
      players: [
        {
          player_name: "Jeff Adrien",
          number: 4,
          shoe: 18,
          points: 10,
          rebounds: 1,
          assists: 1,
          steals: 2,
          blocks: 7,
          slam_dunks: 2
        },
        {
          player_name: "Bismack Biyombo",
          number: 0,
          shoe: 16,
          points: 12,
          rebounds: 4,
          assists: 7,
          steals: 22,
          blocks: 15,
          slam_dunks: 10
        },
        {
          player_name: "DeSagna Diop",
          number: 2,
          shoe: 14,
          points: 24,
          rebounds: 12,
          assists: 12,
          steals: 4,
          blocks: 5,
          slam_dunks: 5
        },
        {
          player_name: "Ben Gordon",
          number: 8,
          shoe: 15,
          points: 33,
          rebounds: 3,
          assists: 2,
          steals: 1,
          blocks: 1,
          slam_dunks: 0
        },
        {
          player_name: "Kemba Walker",
          number: 33,
          shoe: 15,
          points: 6,
          rebounds: 12,
          assists: 12,
          steals: 7,
          blocks: 5,
          slam_dunks: 12
        }
      ]
    }
  }
end

def players_only
  players = game_hash.keys.map do |team|
    game_hash[team][:players]
  end
  players.flatten
end


def num_points_scored(player_name)
  player_in_question = players_only.find do |player|
    player[:player_name] == player_name
  end
  player_in_question[:points]
end

def shoe_size(player_name)
  player_in_question = players_only.find do |player|
    player[:player_name] == player_name
  end
  player_in_question[:shoe]
end

def team_names
  game_hash.map do |team, team_identity|
    team_identity[:team_name]
  end
end

def team_colors(team_name)
  game_hash.map do |matchup, info|
    while info[:team_name] == team_name
      return info[:colors]
    end
  end
end

def player_numbers(team_name)
  jersey_numbers = []
  game_hash.each do |matchup, info|
    if info[:team_name] == team_name
      info[:players].each do |jersey|
        jersey[:number]
        jersey_numbers.push(jersey[:number])
      end
    end
  end
  jersey_numbers
end

def player_stats(player_in_question)
    game_hash.each do |matchup, info|
      info[:players].each do |player_stats|
        if player_stats[:player_name] == player_in_question
          return player_stats
        end
      end
    end
  end

def big_shoe_rebounds
  rebounds = 0
  big_shoe = 0
  game_hash.each do |matchup, info|
    info[:players].each do |name|
      if name[:shoe] > big_shoe
        big_shoe = name[:shoe]
        rebounds = name[:rebounds]
      end
    end
  end
  rebounds
end


def most_points_scored


end

def winning_team

end

def player_with_longest_name
  players_only.max_by { |name| name.length }
  name.length
end