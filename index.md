---
title       : Reproducible pitch
subtitle    : 
author      : Ming-tsan Peng
job         : 
framework   : io2012        # {io2012, html5slides, shower, dzslides, ...}
highlighter : highlight.js  # {highlight.js, prettify, highlight}
hitheme     : tomorrow      # 
widgets     : []            # {mathjax, quiz, bootstrap}
mode        :  selfcontained  # {, standalone , draft}
knit        : slidify::knit2slides
github:
   user: mtp22peng
   repo: home_slides
---

## Outlines

1. Summary of the data set "galton"
2. Interactive histogram of child height 
 

--- .class #id 

## galton data and summary



```r
data(galton)
```

```
## Warning in data(galton): data set 'galton' not found
```

```r
summary(galton)
```

```
## Error in summary(galton): 找不到物件 'galton'
```

--- .class #id 

## Histogram of the child height



```r
hist(galton$child, xlab='child height', col='lightblue',main='Histogram')
```

```
## Error in hist(galton$child, xlab = "child height", col = "lightblue", : 找不到物件 'galton'
```


--- .class #id 

## select a mean equal to 70 and put this line on top of the Histogram. Mean square error is calculated.



```r
      hist(galton$child, xlab='child height', col='lightblue',main='Histogram')
```

```
## Error in hist(galton$child, xlab = "child height", col = "lightblue", : 找不到物件 'galton'
```

```r
      mu <- 70
      lines(c(mu, mu), c(0, 200),col="red",lwd=5)
```

```
## Error in plot.xy(xy.coords(x, y), type = type, ...): plot.new has not been called yet
```

```r
      mse <- mean((galton$child - mu)^2)
```

```
## Error in mean((galton$child - mu)^2): 找不到物件 'galton'
```

```r
      text(63, 150, paste("mu = ", mu))
```

```
## Error in text.default(63, 150, paste("mu = ", mu)): plot.new has not been called yet
```

```r
      text(63, 140, paste("MSE = ", round(mse, 2)))
```

```
## Error in paste("MSE = ", round(mse, 2)): 找不到物件 'mse'
```
