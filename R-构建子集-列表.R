# Subsetting List

x <- list(id=1:4,height=180,gender="male")

x[1]  # 取得列表里的某一个元素（名字+内容）
x["id"]  # 取得列表里的某一个元素（名字+内容）

x[[1]]  #取得列表里的某一个元素的内容
x[["id"]]  #取得列表里的某一个元素的内容
x$id  #取得列表里的某一个元素的内容

y <- "id"
x[[y]]  # 同x[["id"]]
x[y]  # 同x["id"]

x$y  # 输出结果为空 不等同于x$id


# Subsetting nested elements of a list（嵌套列表）

x2 <- list(a = list(1,2,3,4), b = c("Monday","Friday"))

x2[[1]]  #取得列表里的某一个元素的内容

x2[[1]][[3]]  #取得列表里的某一个元素的内容

x2[[1]][2]  #取得列表里的某一个元素（名字+内容）

x2[[c(1,3)]]  #取得列表里第一个元素中的第三个元素
x2[[c(2,2)]]  #取得列表里第二个元素中的第二个元素

# Partial matching 不完全匹配

y2 <- list(asdfghj = 1:10)

y2$asdfghj
y2$a

y2[["a"]]  #输出的结果为NULL
y2[["a", exact = FALSE]]  #关掉了精确匹配

l <- list(asdfghj = 1:10, b = 1:2, aaa = 1:3)
l$a  #输出的结果为空值
l[["a",exact = FALSE]]  #输出的结果为空值
l$as  #取得了列表中第一个元素
