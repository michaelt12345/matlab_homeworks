%Autor:Michael Tracey
%Email:tracey93@rowan.edu
%Created On:10/11/24
%Updated On:10/18/24
%All Righst reserved

data = readtable('stock_data.txt');     %file
fildID = fopen('stock_data.txt', 'r');
data.stock = fscanf(fileID, '%f');
fclose(fileID);

average_stock = mean(data.stock);    %different values(avg, high, low)
highest_stock = max(data.stock);
lowest_stock = min(data.stock);
price_increases = sum(diff(data.stock) > 0);

fprintf('The average is %f\n', average_stock);
fprintf('The maximum is %f\n', highest_stock);   %print values 
fprintf('The minimum is %f\n', lowest_stock);
fprintf('Numbers of days price increase is %f\n', price_increases);

number_of_days = 1:length(data.stock);   %stock days

figure;
plot(number_of_days, data);    %graph
xlabel('Day');
ylabel('Stock Prices');
title('Stock Prices Change Over Time');
legend('Prices Each Day', 'Average Prices' , 'Highest Prices' , 'Lowest Prices' , 'Location', 'best');

saveas(gcf, 'stock_analysis.png');

fileID = fopen('stock_summary.txt', 'w');    %print file data
fprintf(fileID , 'Stock Prices Analysis Summary\n');
fprintf(fileID , 'Average Closing price: %.2f\n' , average_stock);
fprintf(fileID , 'Highest Closing price: %.2f\n' , highest_stock);
fprintf(fileID , 'Lowest Closing price: %.2f\n' , lowest_stock);
fprintf(fileID , 'Number of Days the Stock prices Increased %d\n' , price_increases);
fclose(fileID);