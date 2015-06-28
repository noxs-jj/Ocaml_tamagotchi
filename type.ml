type data = {
	mutable health : int;
	mutable energy : int;
	mutable hygiene : int ;
	mutable happyness : int
}

type tAction = Eat | Thunder | Bath | Kill | Restart | Sleep | Dance | Cheat

let (get_record:data) = {health = 100; energy = 100; hygiene = 100; happyness = 100}
