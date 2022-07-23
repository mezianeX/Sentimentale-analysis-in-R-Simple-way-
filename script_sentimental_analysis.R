library(syuzhet)

text_df = read.csv("Text_data.csv",stringsAsFactors = F)

review = as.character(text_df$sentence)

#obtain sentiment scores

get_nrc_sentiment('happy')
get_nrc_sentiment('kill')
get_nrc_sentiment('excitement')
get_nrc_sentiment('happy excitement kill')

#for our data
s = get_nrc_sentiment(review)

#combine text and sentiment columns 

review_sentiment = cbind(text_df$sentence,s)

barplot(colSums(s),col = rainbow(10),tlab = 'count',main = "sentiment scors for movie reviews")

text_df[2]
