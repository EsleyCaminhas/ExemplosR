


plot_point = function(x){
  points(x[1], x[2])
}

caos = function(x){
  a1 = unlist(x)
  a2 = unlist(sample(points_set, 1))
  a3 = (a1 + a2)/2
  return(a3)
}

points_set = list(c(2,4),c(0,0),c(4,0))

iti = list(sample(points_set, 1))

plot(1,
     type = "n",
     xlab = "",
     ylab = "",
     xlim=c(0, 4),
     ylim=c(0, 4))

for (j in 2:10000){
  iti[[j]] = caos(iti[j-1])
  plot_point(unlist(iti[j]))
}

