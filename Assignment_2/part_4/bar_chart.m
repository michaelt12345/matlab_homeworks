function r = bar_chart(x, y) %create bar chart
    bar(x, y)
    title('Planet distance from size')
    xlabel('Planets')
    ylabel('Distance from sun (AU)')
    r = 1;
end