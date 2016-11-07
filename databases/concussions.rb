require 'sqlite3'
require 'faker'

db = SQLite3::Database.new("concussions.db")
db.results_as_hash = true

create_table_cmd = <<-SQL
  CREATE TABLE IF NOT EXISTS concussions(
    id INTEGER PRIMARY KEY,
    player_name VARCHAR(255),
    year INT,
    concussion_grade INT
  )
SQL

db.execute(create_table_cmd)

def add_concussion(db, player_name, year, concussion_grade)
  	db.execute("INSERT INTO concussions (player_name, year, concussion_grade) VALUES (?, ?, ?)", [player_name, year, concussion_grade])
end

def edit_grade(db, new_grade, player_name)
	db.execute("UPDATE concussions SET concussion_grade = (?) WHERE name = (?)", [new_grade, player_name])
end

def all_concussions(db)
	db.execute("SELECT * FROM concussions")
end

def recent_concussions(db)
	db.execute("SELECT * FROM concussions WHERE year=2016")
end

def concussion_history(db, player_name)
	db.execute("SELECT * FROM concussions WHERE name=(?)", [player_name])
end