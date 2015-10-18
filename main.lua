print("Welcome to the game !")

--Declare an input for player here
input = ""

--table --1------2---------3----indexes
inv = {"coin", "sword", "armour"}

table.insert(inv, "magic shoes")


--until user decides to leave cave, continue the loop
while input ~= "leave" do
	print("What do you want to do?")
	input = io.read()

	if input == "inv" then
		for i,v in pairs(inv) do
			print(i,v)
		end
	elseif input == "inspect" then
		print("Enter cave...")
	elseif input == "leave" then
		print("Leave cave..")
	else
		print("Write a valid command!")
	end
end

input = ""
--till user decides to follow path
while input ~= "follow path" do
	print("What do you want to do?")
	input = io.read()

	if input == "inspect" then
		print("You are at the base of a hill. There is a path")
	elseif input == "follow path" then
		print("You are now following the path..")
		print("A troll appears wielding an axe!")
		print("What do you want to do? (run,attack)")
		input2 = io.read()
		if input2 == "attack" then
			print("You smack it with your sword and it falls down.")
		elseif input2 == "run" then
			print("You cowardly turn your back so it smacks you and steals your coin.")
			table.remove(inv,1)
		else
			print("You stand there as it stabs you. You die, game over!")
			os.exit()
		end
	else
		print("Write a valid command!")
	end
end

input = ""
have_key = false
--till user decides to follow path
while not(input == "open gate" and have_key == true) do
	print("What do you want to do?")
	input = io.read()

	if input == "inspect" then
		if have_key == false then
			print("There is a gate. It is hidden in the grass.")
		else
			print("Open the gate.")
		end
	elseif input == "grab key" then
		have_key = true
		print("You grabbed the key.")
	elseif input == "open gate" then
		if have_key == true then
			print("You've escaped.")
		else
			print("The gate is locked.")
		end
	else
		print("Write a valid command!")
	end
end

print("You win!")