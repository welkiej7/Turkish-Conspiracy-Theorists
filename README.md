# Conspiracy Theories in Turkey: a Social Network Analysis of Post-COVID 19.
The main purpose of this research is to visualize the impact of the conspiracy theory spreaders in Turkey’s Twitter Network for the last 30 days while finding common grounds between their arguments and conspiracy theories in general. Following this aim, we believe that similar to other conspiracy theory networks our network will be isolated. Furthermore, we also believe that, Turkish conspiracy theorists are using the same arguments and similar thinking patterns which can be found across the globe.

## Research Design
For testing if the common spreaders' arguments share the common ground with conspiracy theories across the globe, we have decided to filter some tweets from most common conspiracy theory spreaders. According to Teyit.org, which is a well-known fact checking organization in Turkey, Twitter users "@maranki”,”@aDilipak”,”@5gvirusnewss”,”@ErkanTrukten" are tweeting conspiracy theories, misinformation and malinformation frequently. Thus we have decided to reach their timeline and conduct a textmining on their tweets. Additionally we have decided to textmine all of the fact checked claims and the words used in them from dogrulukpayi.com, which is another well-known fact checking organization linked to IFCN(International Fact Checking Network). After filtering with stopwords, we have decided to combine the users' tweets with words in articles. After that, we  have aimed to tweets that includes these words tweeted in last 30 days.

After searching all tweets that includes these words, we have decided to visualize the relationship between users via the Social Network Analysis. We have decided to use retweet relationship as edges. Nonetheless, for getting in front of self retweeting we have decided to eliminate the nodes that have a diameter less than 5. After this, we have decided to use Louvain Algorithm to classify and group the network.

## Semi-Corpus Objects

First Semi-Corpus object contains data from dogrulukpayi.com. We have derived all of the articles under section #sağlık(health in Turkish) from https://www.dogrulukpayi.com/kategoriler/saglik at 03.06.2022. Dubrovin Viktor Alexandrovich used data scraping with Python for Selenium based websites. The file [dogrulukpayi.py](<https://github.com/welkiej7/SocialNetworkAnalysis/blob/main/dogrulukpayi.py>) contains this process. After this we have carefully evaluated the common words used in the articles with R Language. 

On our second Semi-Corpus object we have derived the data from Twitter users, "@maranki”,”@aDilipak”,”@5gvirusnewss”,”@ErkanTrukten". After that we have focused on word-count with R Language. the results of the both semi-corpus objects can be found in [creatingcorpus.md](<https://github.com/welkiej7/SocialNetworkAnalysis/blob/main/creatingcorpus.md>) with explanations.

## Tweets

After careful filtering, we have searched the tweets in the last 30 days, our results can be found within [Tweets.csv](<https://github.com/welkiej7/SocialNetworkAnalysis/blob/main/Tweets.csv>). We have used the Twitter API V2 for this tweet searching. Our tokens can be found within [tokens.R](<https://github.com/welkiej7/SocialNetworkAnalysis/blob/main/tokens.R>).After this we have filtered the columns "mentionsscreenname" and "screenname" for creating a network.

## Visualizing the Network

We have used the code in [networkvis.R](<https://github.com/welkiej7/SocialNetworkAnalysis/blob/main/networkvis.R>) to create the network and its visualization. 

## Results
### Common Words
When we analyze the frequently used words by the Twitter conspiracy the- orists whom we examined in our study, we can deduct certain general ideas and personality traits that are commonly demonstrated by conspiracy theorists. In the literature, there are several personal traits and psychological tendencies which are associated with the conspiracy theorists, such as anomie, paranoia, low social trust, distrust of authority, alienation, etc. Our findings can be con- nected to these traits and tendencies in order to demonstrate the effectiveness of conspiracy theorists in our case. First of all, in our findings of word frequencies, we can clearly notice the effect of anomie and distrust of authorities. Our con- spiracy theorists commonly mention to “Ankara”, “devlet (state/government)”, and “Turkiye (Turkey)” to refer to the government, and not surprisingly in those tweets, they are portraying the government either as a part of a global conspiracy or a victim of such a conspiracy; eventually calling for questioning the social rules and purporting disbodiencte to the authorities in matters related to the conspiracies, such as in the issues of Covid-19 measures and vaccination. This often purports disenchantment with political authorities (Byford, 2011) and creating an ambiance of self-help.
Along with the words which refer to the national authorities, another most common group of words refer to the international organizations/authorities or related concepts, which are captured with those words such as “DSO ̈ (WHO)”, “du ̈nya (world)”, “ku ̈resel (global)”, etc. These tweets usually refer to a “big picture” behind all these events and proposes global conspiracies to explain local/national problems and failures. In the mindset of conspiracy theorist, usually, all the individual impactful events “should” have a common global cause (Byford, 2011). So, they tend to address the international bodies as the main responsibles for problems which exist in the national level. For instance, normally, we might propose that the WHO couldn’t provide the necessary co- operation and organization among nation states to fight the Covid-19 pandemic which eventually aggravated the problem in the national levels. It is well known that the WHO is such a weak institution which has no legally binding capa- bility on states and has little room for operation to fight pandemics. However, the conspiracy theorists feel a need to find a “global” culprit, a global cause for everything. So, this quite weak institution becomes a focus of attention for the conspiracy theorists. This fact is very clear in our findings. The word “DSO ̈ (WHO), du ̈nya (world), sa ̆glık (health)” is some of the most frequently used words by the conspiracy theorists in our study. Also, the frequency of the words such as “bu ̈yu ̈kresim (bigpicture)”, “buyukuyanis (bigawakening)”, “bu ̈yu ̈k (big)”, “neden (cause)” can be viewed in this respect to support this argument. These are very frequent words used in the tweets of the conspiracy theorists of our study, and they demonstrate their mindset of looking for a very simple “global common cause” behind several particular phenomena (Byford, 2011; Brotherton et. al, 2013).

Another interesting common words that are shared by those conspiracy the- orists are, unsurprisingly, “Bill”, “Gates”, and “ABD (the USA)”. It can be inferred that the conspiracy theorists usually point to the richest and powerful individuals and countries as culprits for the crises that occur both in national and international levels. Because the core of their audience is probably rather marginal groups of the society who have grievances toward the political and economic elites. So, this constitutes another aspect of the famous conspiracy theorists, that is being marginal or part of a minority group (Byford, 2011; Goertzel, 1994). Combined with being marginal and defying the public authori- ties, these groups often demonstrate “anomie” and “alienation”. Another point which demonstrates the marginality of these conspiracy theorists can be dis- cerned in one’s frequent mention of a particular politician who is known for his far-right and anti-immigrant views, that is “U ̈mit”, “O ̈zda ̆g”, or “umitozdag”. This is a clear example of extremist political views, marginality, and also au- thoritarian personality, which are some of several characteristics of conspiracy theories (Byford, 2011; Brotherton et. al, 2013).

It is also important to mention the paranoia state of the conspiracy theorists’ messages (Byford, 2011). In their tweets, they are trying to draw an image of immergency and global conspiracy which desires to undermine the stability of nations and change the outlook of the world, such as the population, in a
fundamental way. This is very much connected to the previous word groups we have mentioned above. The conspiracy theorists refer to the international political bodies, powerful and rich individuals and countries as the one who are behind these conspiracies. So, it is not a coincidence to find those words as the most frequent ones in their tweets. Low level of social trust, or low level of agreeableness is also connected to the psychology of the conspiracy theorists (Brotherton et. al, 2013; Goertzel, 1994). It is very common that they promote distrust for the public authorities as we have discussed above, and also for international organisations. Apparently, those who are more doubtful toward other people, especially toward the common knowledge or the majority opinions, tend to accept and spread those conspiracy theories which are purpotedly known only by a few. Except this few, those people tend never to believe people, or any authority which provide mainstream or common knowledge even to a good degree of detail. Some researchers view this as “proclivity for new ideas”, as new knowledge known by a few that goes against the mainstream seems more attractive to the people. So, it shouldn’t be a coincidence that all those four users use the word “kar ̧sı (against)” very common and often. This word is also used to purport clear antagonisms and a manichean worldview that is common to conspiracy theories (Goertzel, 1994).

In conclusion, we can claim that the words that are frequently used by the conspiracy theorists in our study, can demonstrate us how conspiracy theories are conceptualized, and what kind of psychology and worldview they underlie. In these examples of some groups of frequent word usages, we could deduct sev- eral traits and tendencies which are related to conspiracy theories and theorists, found in the literature. The most obvious and common ones analyzed in our study are those such as low level of social trust and trust toward authorities, anomie, social marginality, paranoia, etc.

### Network Results and Graphs
Our first network is visualized below is the all connections with a higher diameter than 5. As we can see conspiracy theory network (biggest network) is isolated from authorities (other networks). 
<img width="720" alt="Ekran Resmi 2022-06-22 15 53 19" src="https://user-images.githubusercontent.com/94485797/175033710-9349f54d-bcc9-49ee-a8d8-df131313c242.png">

Conspiracy Theory Network itself can be seen as below,
![network2](https://user-images.githubusercontent.com/94485797/175034196-7889d5fd-f781-4189-a109-c6b6287c033a.png)


We have found out that the diameter of the network is 23 and node and edge size is 5790. Average Path Length is 5.814797, Number of cliques is 4, The Global Efficency score is 0.202, graph density is 0.0009817062.

We have visualizaed nodes with respect to their centralities. First, we have visualized nodes that have more than 200 connections. Following graph shows the nodes with more than 200 connections with light green.
![most central](https://user-images.githubusercontent.com/94485797/175046620-b0690fe2-6fac-4915-ad7f-74a0a3daa705.png)

with a similar approach, we have denoted the nodes with more than 150 connections with red,
![more than 150](https://user-images.githubusercontent.com/94485797/175046744-af370b90-c328-44b4-9f05-2e30fcee9c41.png)

Finally we have decided the color the nodes with connections more than 50 with blue

![more than 50](https://user-images.githubusercontent.com/94485797/175046964-c104a59f-fa12-45b7-a8e5-48618d98f7ff.png)


Furthermore we have visualized the conspiracy theory spreaders with different colors. In below graph we have denoted the user "aDilipak" with a different color,

![adilipak](https://user-images.githubusercontent.com/94485797/175048058-90a8c59d-dd6b-4f4d-b739-8b1d5b743672.png)

Similarly, we have denoted the user "ErkanTrukten" with a different color,


![eTrukten](https://user-images.githubusercontent.com/94485797/175048482-78037a32-6c1c-436f-932a-a97c58d3ce3e.png)

and "5gvirusnewss" as below,

![5gvirussnewss](https://user-images.githubusercontent.com/94485797/175049137-4d5f3253-9b71-44f5-9f44-05867d663937.png)

Nonetheless, we have found out that there exist different conspiracy theory spreaders other than them that have more impact over the network, in following graph we have found out the most central nodes and labelled them with a limitation over centrality more than 100,

![mostttttt](https://user-images.githubusercontent.com/94485797/175051214-5ec601f3-d8dd-45b8-87a9-37fc7679c037.png)



P.S.: We didn't showed everytime but rather pointed out a formula in the code. Arguments can be altered for reaching our results. It is commented in the code.

## Responsibilities of Members

Enes Özcan: Finding related literature and spreaders. Comparison of the similarities between global conspiracy theories and the common words used in our network. He contributed with his ideas to creation of the network.

Dubrovin Viktor Alexandrovich: Data scraping from dogrulukpayi.com, he had scraped data from Twitter too, but that was before Twitter API access. He opened another directory which we used constantly. He contributed with his ideas to creation of the network, codes related to Python.

Onur Tuncay Bal: Network creation, text mining of the tweets, word analysis, visualization of the network, codes related to R. 

