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

# Write code here

def num_points_scored(player)
  game = game_hash
  points = 0
  game.each do |team,team_data|
    player_index = 0
    while player_index < team_data[:players].length
      if player == team_data[:players][player_index][:player_name]
        points = team_data[:players][player_index][:points]
      end
      player_index += 1
    end
  end
  return points
end


def shoe_size(player)
  game = game_hash
  shoe_size = 0
  game.each do |team,team_data|
    player_index = 0
    while player_index < team_data[:players].length
      if player == team_data[:players][player_index][:player_name]
        shoe_size = team_data[:players][player_index][:shoe]
      end
      player_index += 1
    end
  end
  return shoe_size
end


def team_colors(team_name)
  game = game_hash
  colors = []
  game.each do |team,team_details|
    if team_name == team_details[:team_name]
      colors = team_details[:colors]
    end
  end
  return colors
end

def team_names
  game = game_hash
  team_names = []
  game.each do |team,team_details|
    team_names << team_details[:team_name] 
  end
  return team_names
end

def player_numbers(team_name)
  game = game_hash
  player_numbers = []
  game.each do |team,team_details|
    if team_name == team_details[:team_name]
      player_index = 0
      while player_index < team_details[:players].length
        player_numbers << team_details[:players][player_index][:number]      
        player_index += 1
      end
    end
  end
  return player_numbers
end

def player_stats(player)
game = game_hash
stats = {}
game.each do |team,team_data|
  player_index = 0
  while player_index < team_data[:players].length
    if player == team_data[:players][player_index][:player_name]
      stats = team_data[:players][player_index]
    end
    player_index += 1
  end
end
return stats
end

def big_shoe_rebounds
  game = game_hash
  biggest_shoe = 0
  big_shoe_rebounds = 0
  game.each do |team,team_data|
    player_index = 0
    while player_index < team_data[:players].length
      if team_data[:players][player_index][:shoe] > biggest_shoe
        biggest_shoe = team_data[:players][player_index][:shoe]
        big_shoe_rebounds = team_data[:players][player_index][:rebounds] 
      end
      player_index += 1
    end
  end
  return big_shoe_rebounds
end