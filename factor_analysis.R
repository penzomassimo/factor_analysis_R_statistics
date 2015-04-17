# Principal Component Analysis and Factor Analysis in R

mydata <- read.csv("pca_gsp.csv")
attach(mydata)

# Define variables
X <- cbind(Ag, Mining, Constr, Manuf, Manuf_nd, Transp, Comm, Energy, TradeW, TradeR, RE, Services, Govt)
X

# Descriptive statistics
summary(X)
cor(X)

# Principal component analysis
pcal <- princomp(X, scores = TRUE, cor = TRUE)
summary(pcal)

# Loadings of principal components
loadings(pcal)

# Scree plot of eigenvalues
plot(pcal)

screeplot(pcal, type = "line", main = "Scree Plot")
abline(h = 1)

# Biplot of score variables
biplot(pcal)

# Scores of the components
pcal$scores[1:10,]

# FACTOR ANALYSIS
fa1 <- factanal(X, factor = 3)
fa1

fa2 <- factanal(X, factor = 3, rotation = "varimax")
fa2

fa3 <- factanal(X, factor = 3, rotation = "varimax", scores = "regression")
fa3














