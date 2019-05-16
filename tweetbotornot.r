## load package
library(tweetbotornot)
library(rtweet)
library(reticulate)

## select users
users <- c(py_run_file("script.py"))
#vector <- unlist(users)
## get botornot estimates
data <- botornot(users)


## arrange by prob ests
data[order(data$prob_bot), ]
#> # A tibble: 11 x 3
#>    screen_name     user_id            prob_bot
#>    <chr>           <chr>                 <dbl>
#>  1 hadleywickham   69133574            0.00754
#>  2 realDonaldTrump 25073877            0.00995
#>  3 kearneymw       2973406683          0.0607
#>  4 ma_salmon       2865404679          0.150
#>  5 juliasilge      13074042            0.162
#>  6 dataandme       3230388598          0.227
#>  7 hrbrmstr        5685812             0.320
#>  8 netflix_bot     1203840834          0.978
#>  9 tidyversetweets 935569091678691328  0.997
#> 10 mothgenerator   3277928935          0.998
#> 11 American__Voter 829792389925597184  1.000
