red_wine=c(1,4,2,3,3);
white_wine=c(1,2,4,1,3);
champagne=c(1,1,4,1,3);
sherry=c(1,2,2,1,3);
port=c(1,0,3,1,6);
whisky=c(1,1,0,1,6);
gin=c(0,1,0,1,6);
brandy=c(0,1,0,1,6);

constraints = c(750,750,540,480,480,480,300,300)
prices=c(35,70,70,70,270)

simplex(a=prices,
  A1 = rbind(red_wine,
               white_wine,
               champagne,
               sherry,
               port,
               whisky,
               gin,
               brandy),
  
b1=constraints,
maxi = TRUE)