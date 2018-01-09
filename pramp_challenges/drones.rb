# Drone Flight Planner
# You’re an engineer at a disruptive drone delivery startup and your CTO asks you to come up with an efficient algorithm that calculates the minimum amount of energy required for the company’s drone to complete its flight. You know that the drone burns 1 kWh (kilowatt-hour is an energy unit) for every mile it ascends, and it gains 1 kWh for every mile it descends. Flying sideways neither burns nor adds any energy.

# Given an array route of 3D points, implement a function calcDroneMinEnergy that computes and returns the minimal amount of energy the drone would need to complete its route. Assume that the drone starts its flight at the first point in route. That is, no energy was expended to place the drone at the starting point.

# For simplicity, every 3D point will be represented as an integer array whose length is 3. Also, the values at indexes 0, 1, and 2 represent the x, y and z coordinates in a 3D point, respectively.

# Explain your solution and analyze its time and space complexities.



def calc_drone_min_energy(route)
  count = 0
  needed = 0
  z = route[0][2]
  i = 1
  while i < route.length
    count += (z - route[i][2])
    z = route[i][2]
    if count < 0 && count < needed
      needed = count
    end
    i += 1
  end
  return needed * -1
end

__END__

return min_energy
1 mile = -1 kwh
descending = + 1kwh
ascend = - 1kwh
z = height
x = forward and backward
y = sideways

           x    y   z
route = [ [0,   2, 10],
          [3,   5,  0], => 10
          [9,  20,  6], => 4
          [10, 12, 15], => -5
          [10, 10,  8] ] => 2
output = 5

for z, every gained int = -1
  every lost int = +1

count_of_kwh = 0
z = arr[0][2]
i = 1
while i < arr.length
  count += (z - arr[i][2])
  z = arr[i][2]
  i += 1
end
return count

to make it more elegant, simply find the largest num past first z and find diff
