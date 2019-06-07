#install.packages('binhf');
library(binhf)

library(boot)


route_costs = c(50, 40, 50, 20,
                40, 80, 70, 30,
                60, 40, 70, 80)


requirements_bakeries = c(40, 60, 50, 50)

constraints_warehouses = c(700, 500, 800)

warehouse_1 = c(rep(1, 4), rep(0, 8))
warehouse_2 = shift(warehouse_1, 4)
warehouse_3 = shift(warehouse_1, 2 * 4)

bakery_1 = rep(c(0, 0, 0, 1), 3)
bakery_2 = shift(bakery_1, 1)
bakery_3 = shift(bakery_1, 2)
bakery_4 = shift(bakery_1, 3)



simplex(
  a = route_costs,
  A2 =  rbind(warehouse_1, warehouse_2, warehouse_3),
  b2 = constraints_warehouses,
  A1  = rbind(bakery_1, bakery_2, bakery_3, bakery_4),
  b1 = requirements_bakeries,
  maxi = F
)





