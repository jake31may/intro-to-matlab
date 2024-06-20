function Volume = calculate_volume(radius,length)
% Function that calculates the volume of a cylinder given the radius and
% length

area = calculate_area(radius);
Volume = area.*length;
end