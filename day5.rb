# You are given an integer array height of length n. There are n vertical lines drawn such that the two endpoints of the ith line are (i, 0) and (i, height[i]).

# Find two lines that together with the x-axis form a container, such that the container contains the most water.

# Return the maximum amount of water a container can store.

# Notice that you may not slant the container.

 
def max_area(height)
    start_point = 0
    end_point = height.length - 1
    max_area = 0
    area = 0
    while(start_point <= end_point)
        if height[start_point] < height[end_point]
            area = calculate_area(start_point, end_point, height)
            start_point += 1
        elsif height[start_point] > height[end_point]
            area = calculate_area(start_point, end_point, height)
            end_point -= 1
        else
            area = calculate_area(start_point, end_point, height)
            start_point += 1
        end
        max_area = [max_area, area].max
    end
    max_area
end

def calculate_area(start_point, end_point, height)
    h = [height[start_point], height[end_point]].min
    width = end_point - start_point
    h * width
end