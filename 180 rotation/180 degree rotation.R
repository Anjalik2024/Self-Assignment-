
#rotating a imagecol.mat=as.array(img[,,1,])

library(imager)
img=load.image("boat.jpeg")
col.mat=as.array(img[,,1,])
dims=dim(col.mat)
rotate=array(0,dim=dims)
for(i in 1:dims[1]){
  for(j in 1:dims[2]){
  rotate[i,j,]=col.mat[dims[1]-i+1,dims[2]-j+1,]
  }
}
par(mfrow=c(1,2))command used to plot two images side by side
plot(as.cimg(rotate))
plot(img)
