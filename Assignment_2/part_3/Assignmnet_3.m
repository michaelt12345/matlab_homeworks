%Autor:Michael Tracey
%Email:tracey93@rowan.edu
%Created On:10/11/24
%Updated On:10/18/24
%All Righst reserved

data = read_cell('weater_data.txt')  %call other script

dates = data(2:end, 1);
tempurature = cell2mat(data(2:end, 2))   %data
humidity = cell2mat(data(2:end, 3))
precipitation = cell2mat(data(2:end, 4))

average_tempurature = mean(tempurature);
average_humidity = mean(humidity);
total_precipitation = sum(precipitation);    %averages
data = [average_tempurature average_humidity total_precipitation]

summary_data = ['Average Tempurature: ' , average_tempurature; 'Average Humidity: ' , average_humidity; 'Total Precipitation: ', total_precipitation]

file_name = 'weater_summary.txt'
save_to_file(file_name, data)      %save in new script