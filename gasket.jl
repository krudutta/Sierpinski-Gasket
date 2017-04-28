using PyPlot

function calculate_midpoint(a,b)
  x,y = ((a[1]+b[1])/2), ((a[2]+b[2])/2)
  return (x,y)
end

function sierpinski(maxiter,pts)
  while maxiter > 0
    a = pts[4]
    b = pts[rand(1:3)]
    pts[4] = calculate_midpoint(a,b)
    ax[:scatter](pts[4][1],pts[4][2])
    maxiter = maxiter -1
  end
end

fig,ax = subplots()
p = [(1.0,0.0),(2.5,5.0),(5.0,0.0),(0.0,0.0)]
sierpinski(1500,p)
