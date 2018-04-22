extends Node2D

export var width = 3
export var heigth = 3
export var separation = 1.7

var cell = preload("res://cell.tscn") 
var grid = []

var step = 0


func _ready():
	generate_grid()
	


func generate_grid():
	for x in width:
		grid.append([])
		for y in heigth:
			var new_cell = cell.instance()
			add_child(new_cell)
			grid[x].append(new_cell)
			new_cell.position= (Vector2(new_cell.sprite.get_texture().get_size().x/1.9 * x , new_cell.sprite.get_texture().get_size().y/1.9 * y) )

func  toggle_all(on):
	for x in width:
		for y in heigth:
			grid[x][y].toggle(on)

func toggle_row(row,on):
	for x in width:
		grid[x][row].toggle(on)

func toggle_column(column,on):
		for y in heigth:
			grid[column][y].toggle(on)

func toggle_cell(x,y,on):
	grid[x][y].toggle(on)

func _on_Timer_timeout():
		toggle_column(step-1,false)
		
		toggle_column(step,true)
		step += 1
		step = step % (width)