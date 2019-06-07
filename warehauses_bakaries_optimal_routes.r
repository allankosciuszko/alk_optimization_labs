install.packages('binhf');
library(binhf);

costs = c(50,40,50,20,40,80,70,30,60,40,70,80,40,60,50,50);

warhause_1 = c(rep(1,4), rep(0,8));
warhause_2 = shift(mag_1, 4);
warhause_3 = shift(mag_1, 2 *4);


bakery_1 = rep(c(0,0,0,1), 4)
bakery_2 = shift(bakery_1, 1)
bakery_3 = shift(bakery_1, 2)
bakery_4 = shift(bakery_1, 3)




