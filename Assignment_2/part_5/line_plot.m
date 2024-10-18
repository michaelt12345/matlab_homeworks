function r = line_plot(x, y)   %line plot
    line(x, y)
    title('Stocks closing price over time')
    xlabel('Days')
    ylabel('Closing price')
    r = 1;
end