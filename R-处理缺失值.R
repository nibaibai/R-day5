# Missing value

x <- c(1,2,NA,4,NA,6)
is.na(x)

x[!is.na(x)]  # “！”的意思是 取反

y <- c("a",NA,"C","d",NA,"f")

z <- complete.cases(x,y)  #查看这两个函数对应位置都不是缺失值的元素

x[z]
y[z]

library(datasets)  #加载数据集包

head(airquality)  #查看airquality数据集中前六行数据，每一行是一次记录，每一列是一组变量

g <- complete.cases(airquality)  #查看这对应位置都不是缺失值的元素
airquality[g,][1:10,]  #取得十行都不含缺失值的元素