# Conspiracy Theories in Turkey: a Social Network Analysis of Post-COVID 19.
The main purpose of this research is to visualize the impact of the conspiracy theory spreaders in Turkey’s Twitter Network for the last 30 days while finding common grounds between their arguments and conspiracy theories in general. Following this aim, we believe that similar to other conspiracy theory networks our network will be isolated. Furthermore, we also believe that, Turkish conspiracy theorists are using the same arguments and similar thinking patterns which can be found across the globe.

## Research Design
For testing if the common spreaders' arguments share the common ground with conspiracy theories across the globe, we have decided to filter some tweets from most common conspiracy theory spreaders. According to Teyit.org, which is a well-known fact checking organization in Turkey, Twitter users "@maranki”,”@aDilipak”,”@5gvirusnewss”,”@ErkanTrukten" are tweeting conspiracy theories, misinformation and malinformation frequently. Thus we have decided to reach their timeline and conduct a textmining on their tweets. Additionally we have decided to textmine all of the fact checked claims and the words used in them from dogrulukpayi.com, which is another well-known fact checking organization linked to IFCN(International Fact Checking Network). After filtering with stopwords, we have decided to combine the users' tweets with words in articles. After that, we  have aimed to tweets that includes these words tweeted in last 30 days.

After searching all tweets that includes these words, we have decided to visualize the relationship between users via the Social Network Analysis. We have decided to use retweet relationship as edges. Nonetheless, for getting in front of self retweeting we have decided to eliminate the nodes that have a diameter less than 5. After this, we have decided to use Louvain Algorithm to classify and group the network.

## Semi-Corpus Objects

First Semi-Corpus object contains data from dogrulukpayi.com. We have derived all of the articles under section #sağlık(health in Turkish) from https://www.dogrulukpayi.com/kategoriler/saglik at 03.06.2022. Dubrovin Viktor Alexandrovich used data scraping with Python for Selenium based websites. The file [dogrulukpayi.py](<https://github.com/welkiej7/SocialNetworkAnalysis/blob/main/dogrulukpayi.py>) contains this process. After this we have carefully evaluated the common words used in the articles with R Language. 

On our second Semi-Corpus object we have derived the data from Twitter users, "@maranki”,”@aDilipak”,”@5gvirusnewss”,”@ErkanTrukten". After that we have focused on word-count with R Language. the results of the both semi-corpus objects can be found in [creatingcorpus.md](<https://github.com/welkiej7/SocialNetworkAnalysis/blob/main/creatingcorpus.md>) with explanations.

## Tweets

After careful filtering, we have searched the tweets in the last 30 days, our results can be found within [Tweets.csv](<https://github.com/welkiej7/SocialNetworkAnalysis/blob/main/Tweets.csv>).
