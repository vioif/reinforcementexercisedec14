
[
{train: "72C", frequency_in_minutes: 15, direction: "north"},
{train: "72D", frequency_in_minutes: 15, direction: "south"},
{train: "610", frequency_in_minutes: 5, direction: "north"},
{train: "611", frequency_in_minutes: 5, direction: "south"},
{train: "80A", frequency_in_minutes: 30, direction: "east"},
{train: "80B", frequency_in_minutes: 30, direction: "west"},
{train: "110", frequency_in_minutes: 15, direction: "north"},
{train: "111", frequency_in_minutes: 15, direction: "south"}
]

# 1. Save the direction of train 111 into a variable --------------------------

directtrain111 = trains.last [:direction]

# 2. Save the frequency of train 80 into a variable ---------------------------

frequentrain80B = trains [5] [:frequency_in_minutes]

# 3. Save the direction of train 610 into a variable.

directtrain610 = trains.last [:direction]

# 4. Create an empty array. Iterate through each train and add the name of the train into the array if it travels north--

north = []

trains.each do |train|
    if train[:direction] == "north"
      north << train[:train]
    end
  end

# 5. Do the same thing for trains that travel east. ---------------------------

east = []

trains.each do |train|
    if train[:direction] == "east"
      east << train[:train]
    end
  end

# 6. You probably just ended up rewriting some of the same code. Move this repeated code into a method that accepts a direction and a list of trains as arguments, and returns a list of just the trains that go in that direction. Call this method once for north and once for east in order to DRY up your code.

east = []

trains.each do |train|
    if train[:direction] == "east"
      east << train[:train]
    end
  end

# 7. Pick one train and add another key/value pair for the first_departure_time. For simplicity, assume the first train always leave on the hour. You can represent this hour as an integer: 6 for 6:00am, 12 for noon, 13 for 1:00pm, etc.

trains[0][:first_departure_time] = 6
