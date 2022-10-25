## Copyright (C) 2022 Dov Kruger
## Author: Dov Kruger <dkruger@infinitooli>
## Created: 2022-10-24

function [a,x,y,b] = draw_golden_mean(xmin,xmax, ymin, ymax, a, b)
  phi = (sqrt(5)+1)/2
  s = (b-a) / phi
  x = b - s;
  y = a + s;
  clf;
  t=xmin:xmax;
  textoffset = 1;
  fs = 24;
	fill([a,b, b, a], [ymin, ymin, f(b), f(a)], [0 0.9 0.1])
  hold on
  plot(t, f(t), 'b-');
  plot(t, f(t), 'rs', 'MarkerSize', 16, 'MarkerFaceColor', 'r');
  plot([a, a], [ymin, ymax], 'k:');
  plot([b, b], [ymin, ymax], 'k:');
  plot([x, x], [ymin, ymax], 'k:');
  plot([y, y], [ymin, ymax], 'k:');
  labely = ymin - textoffset
  text(a, labely, 'a', 'FontSize', fs);
  text(b, labely, 'b', 'FontSize', fs); 
  text(x, labely, 'x', 'FontSize', fs);
  text(y, labely, 'y', 'FontSize', fs);
  
  if f(x) > f(y)
    b = y
    s = (b-a) / phi
    y = x
    x = b - s
  else
    a = x
    s = (b-a) / phi
    x = y
    y = a + s
  end
  axis([xmin, xmax, 0, ymax]);
endfunction
