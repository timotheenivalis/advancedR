

make_distvec <- function(long, lat){
  r <- 6378.137 #km, at equator
  dist_vec <- expand.grid(p1 = 1:length(long), p2 = 1:length(long))
  dist_vec <- dist_vec[dist_vec$p2 > dist_vec$p1,]
  dist_vec$angle <- NA
  dist_vec$dist<-NA
  for(i in 1:nrow(dist_vec)){
    delta_long <- abs(long[dist_vec$p1[i]] - long[dist_vec$p2[i]])*pi/180
    delta_lat <- abs(lat[dist_vec$p1[i]] - lat[dist_vec$p2[i]])*pi/180
    angle <- 2*asin(sqrt(sin((delta_lat/2))^2 +                      cos(lat[dist_vec$p1[i]]*pi/180)*cos(lat[dist_vec$p2[i]]*pi/180)*(sin(delta_long/2))^2))
    dist_vec$angle[i] <- angle
    dist_vec$dist[i] <- r*angle
  }
  return(dist_vec)
}

long <- matrix(1:9, nrow = 3)
lat <- 1:9
make_distvec(long=long, lat=lat)

make_distvec(c(1),c()) 

make_distvec_safer <- function(long, lat)
{
  if(length(long) != length(lat)){
    stop('not same length')
  }
  stopifnot(long >= -180 , long <=180)
  assertthat::assert_that(all(lat >=-90 & lat <=90))
  make_distvec(long, lat)
}

make_distvec_safer(long = c(45, 18), lat=c(9, 800))


(c(9, 800) >= -180) && (c(9,800) <=180)

(c(9, 800) >= -180) & (c(9,800) <=180)

methods(anova)
methods(class = "glm")
