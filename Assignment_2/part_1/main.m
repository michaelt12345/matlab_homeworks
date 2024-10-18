%Autor:Michael Tracey
%Email:tracey93@rowan.edu
%Created On:10/2/24
%Updated On:10/18/24
%All Righst reserved


population = [5000, 5200, 5350, 5600, 5800];      %populations

growth_rate = (population(2:end) - population(1:end-1)) ./ population(1:end-1) *100;   %growth rate calculations

fprintf('The table below shoes the population and growth rate') %Display

pop_data = [population; [0 growth_rate]]     %Table

for i = 1:length(population)
    fprintf('%d\t%d\t%f\n', i, pop_data(1, i), pop_data(2, i));    %table
end




