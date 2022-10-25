a=-2.5;
b=6.5;

for i = 1:7
	[a,x,y,b]=draw_golden_mean(-3,7, 10, 40, a,b);
  drawnow();
  pause(2);
end
