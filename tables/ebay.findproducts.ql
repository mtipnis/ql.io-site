-- Search with keyword to obtain product ids
create table ebay.FindProducts
  on select get from "http://open.api.ebay.com/shopping?callname=FindProducts&appid={^apikey}&responseencoding=JSON&version=725&QueryKeywords={^QueryKeywords}&MaxEntries={max}&ProductSort=Popularity&AvailableItemsOnly=true&siteid={siteid}"
     using defaults max = "5", apikey = "{config.ebay.apikey}", sideid = 0
  resultset 'Product';