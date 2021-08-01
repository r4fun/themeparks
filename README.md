
<!-- README.md is generated from README.Rmd. Please edit that file -->

# themeparks

<!-- badges: start -->

[![R-CMD-check](https://github.com/r4fun/themeparks/workflows/R-CMD-check/badge.svg)](https://github.com/r4fun/themeparks/actions)
<!-- badges: end -->

The goal of themeparks is to provide an R interface to some of the
functionality found at
[`cubehouse/themeparks`](https://github.com/cubehouse/themeparks).
Currently, only 18 of the 62 parks are supported here.

## Installation

You can install the development version of themeparks with:

``` r
# install.packages("devtools")
devtools::install_github("tylurp/themeparks")
```

## Example

Get park information and wait times:

``` r
library(themeparks)

parks()
#> → https://api.themeparks.wiki/preview/parks
#>  [1] "WaltDisneyWorldMagicKingdom"         "WaltDisneyWorldEpcot"               
#>  [3] "WaltDisneyWorldHollywoodStudios"     "WaltDisneyWorldAnimalKingdom"       
#>  [5] "DisneylandResortCaliforniaAdventure" "DisneylandResortMagicKingdom"       
#>  [7] "Efteling"                            "DisneylandParisWaltDisneyStudios"   
#>  [9] "DisneylandParisMagicKingdom"         "HongKongDisneylandPark"             
#> [11] "ShanghaiDisneylandPark"              "TokyoDisneyland"                    
#> [13] "TokyoDisneySea"                      "UniversalStudios"                   
#> [15] "UniversalIslandsOfAdventure"         "EuropaPark"                         
#> [17] "UniversalStudiosFlorida"             "UniversalVolcanoBay"

park_info("WaltDisneyWorldMagicKingdom")
#> → https://api.themeparks.wiki/preview/parks/WaltDisneyWorldMagicKingdom
#> $id
#> [1] "75ea578a-adc8-4116-a54d-dccb60765ef9"
#> 
#> $name
#> [1] "Magic Kingdom Park"
#> 
#> $timezone
#> [1] "America/New_York"

park_wait_times("WaltDisneyWorldMagicKingdom")
#> → https://api.themeparks.wiki/preview/parks/WaltDisneyWorldMagicKingdom/waittime
#> # A tibble: 235 x 8
#>    id          wait_time status  active last_update   name      fast_pass meta  
#>    <chr>           <int> <chr>   <lgl>  <chr>         <chr>     <lgl>     <name>
#>  1 WaltDisney…        NA Operat… TRUE   2021-07-30T0… Be Our G… FALSE     <chr …
#>  2 WaltDisney…        NA Operat… TRUE   2021-07-30T0… Be Our G… FALSE     <dbl …
#>  3 WaltDisney…        NA Operat… TRUE   2021-07-30T0… Be Our G… FALSE     <dbl …
#>  4 WaltDisney…        NA Operat… TRUE   2021-07-30T0… Be Our G… FALSE     <chr …
#>  5 WaltDisney…        NA Operat… TRUE   2021-07-30T0… Be Our G… FALSE     <lgl …
#>  6 WaltDisney…        25 Operat… TRUE   2021-08-01T1… Prince C… FALSE     <chr …
#>  7 WaltDisney…        25 Operat… TRUE   2021-08-01T1… Prince C… FALSE     <dbl …
#>  8 WaltDisney…        25 Operat… TRUE   2021-08-01T1… Prince C… FALSE     <dbl …
#>  9 WaltDisney…        25 Operat… TRUE   2021-08-01T1… Prince C… FALSE     <chr …
#> 10 WaltDisney…        25 Operat… TRUE   2021-08-01T1… Prince C… FALSE     <lgl …
#> # … with 225 more rows

park_calendar("WaltDisneyWorldMagicKingdom")
#> → https://api.themeparks.wiki/preview/parks/WaltDisneyWorldMagicKingdom/calendar
#> # A tibble: 77 x 5
#>    date      type     closingTime            openingTime           special      
#>    <chr>     <chr>    <chr>                  <chr>                 <list>       
#>  1 2021-08-… Operati… 2021-08-01T22:00:00-0… 2021-08-01T09:00:00-… <named list …
#>  2 2021-08-… Operati… 2021-08-02T22:00:00-0… 2021-08-02T08:00:00-… <named list …
#>  3 2021-08-… Operati… 2021-08-03T22:00:00-0… 2021-08-03T08:00:00-… <named list …
#>  4 2021-08-… Operati… 2021-08-04T22:00:00-0… 2021-08-04T08:00:00-… <named list …
#>  5 2021-08-… Operati… 2021-08-05T22:00:00-0… 2021-08-05T08:00:00-… <named list …
#>  6 2021-08-… Operati… 2021-08-06T22:00:00-0… 2021-08-06T08:00:00-… <named list …
#>  7 2021-08-… Operati… 2021-08-07T22:00:00-0… 2021-08-07T08:00:00-… <named list …
#>  8 2021-08-… Operati… 2021-08-08T22:00:00-0… 2021-08-08T09:00:00-… <named list …
#>  9 2021-08-… Operati… 2021-08-09T22:00:00-0… 2021-08-09T09:00:00-… <named list …
#> 10 2021-08-… Operati… 2021-08-10T21:00:00-0… 2021-08-10T09:00:00-… <named list …
#> # … with 67 more rows
```

## Related work

-   [`LucyMcGowan/parkhoppr`](https://github.com/LucyMcGowan/parkhoppr)

## Acknowledgments

-   [`cubehouse/themeparks`](https://github.com/cubehouse/themeparks)
