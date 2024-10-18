%Autor:Michael Tracey
%Email:tracey93@rowan.edu
%Created On:10/11/24
%Updated On:10/18/24
%All Righst reserved

planet_distance = [0.39, 0.72, 1.00, 1.52, 5.20, 9.58, 19.22, 30.306];   %data values
planet_size = [0.38, 0.95, 1.00, 0.53, 11.21, 9.45, 4.01, 3.08];
planet_names = ["Mercury" "Vensun" "Earth" "Mars" "Jupitar" "Saturn" "Uranus" "Neptune"];


x = planet_distance
y = planet_size
scatter_plot(x, y)  %scatter chart

x = planet_names
y = planet_distance
bar_chart(x, y)     %bar chart

saveas(gcf, 'solar_system_visualization.png')