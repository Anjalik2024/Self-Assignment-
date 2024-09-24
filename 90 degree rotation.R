library(imager)
img=load.image("boat.jpeg")
col.mat=as.array(img[,,1,])
dims=dim(col.mat)
rotation=array(0,dim=c(dims[2],dims[1],dims[3]))
for(i in 1:dims[1]){
  for(j in 1:dims[2]){
    rotation[j,i,]=col.mat[dims[1]-i+1,j,]
  }
}
par(mfrow=c(1,2))
plot(as.cimg(rotation))
plot(img)