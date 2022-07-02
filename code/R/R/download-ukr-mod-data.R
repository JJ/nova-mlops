library("arrow")
tf <- tempfile()
download.file(
  "https://github.com/JJ/raku-ukr-mod-data/raw/v22-07-02/resources/ukr-mod-data.parquet",
  tf ,
  mode = 'wb' 
)
df <- read_parquet(tf)

