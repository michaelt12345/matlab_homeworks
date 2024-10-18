function r = scatter_plot(x, y)   %scatter chart
    scatter(x, y, y * 10)
    title('Planet distance vs size')
    xlabel('Distance from sun (AU)')
    ylabel('Planet sizes')
    r = 1;
end 