function main()
angle = deg2rad(90)
based_link_2D = [0;1]
based_link_map_2D = [0;2]
based_link_origin = [1;2]

C = rotation_2d_func(based_link_2D,angle)

x1 = based_link_2D(1)
y1 = based_link_2D(2)
x2 = C(1)
y2 = C(2)

figure

plot(x1, y1, 'ob')
hold on
plot(x2, y2, 'or')

title('좌표 변환')
axis([-10,10,-10,10])
xlabel('Xmap')
ylabel('Ymap')

grid

legend('based\_link\_2D', 'based\_link\_map\_2D', 'Location', 'best')

end

function Y = rotation_2d_func(coordinate,angle)

Rotaion_matrix_2D = [ cos(angle) -sin(angle) ; sin(angle) cos(angle)]

Y = Rotaion_matrix_2D*coordinate

end
