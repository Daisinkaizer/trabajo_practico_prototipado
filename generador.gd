extends Node2D

var Objetivo = preload("res://escenas/enemigo.tscn")


func _ready():
	$Timer.start(5)
	var objetivoInstancia = Objetivo.instance()
	add_child(objetivoInstancia)
	pass

func _on_Timer_timeout():
	var objetivoInstancia = Objetivo.instance()
	add_child(objetivoInstancia)
	pass