list = {}

input = ""

while(input ~= "exit") do
	print("Your list:")
	for i,v in pairs(list) do
		print(i,v)
	end

	print("Command:")
	input= io.read()
	if input == "add" then
		print("What do you want to add?")
		item= io.read()
		table.insert(list,item)
	end
	if input == "remove" then
		print("What do you want to remove?")
		item= io.read()
		table.remove(list,item)
	end
end