%% Create Nested loops for cylinder size

radii = 0.1:0.1:1;
lengths = 0.05:0.04:0.2;

volumes = zeros(length(radii),length(lengths));
ri = 0; % sets radius index to zero

for r = radii
    ri = ri + 1; % increase radius index
    li = 0;      % sets length index to zero
    for l = lengths
        li = li +1; % increase radius index
        
        volumes(ri,li) = calculate_volume(r,l);
    end
end