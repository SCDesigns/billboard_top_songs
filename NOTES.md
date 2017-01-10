We want to build a command line interface that will alow the user to learn about the current Billboard Top / Hot 100 Songs.
- Naturally, we expect the user will prompt this program with an aptly named executable. Thus we should create such a file in the bin directory.

- Because the file is not in fact a ruby file, although we want it to be interpreted as such we can make use of a bang operator

- We want to be able to have this executable prompt our command line thus we can create our command line in a separate class.

- In accordance with this we will create a CLI class in our lib/top_songs directory. In this class we can begin to create the basic layout for what our command line will need to do. For instance: We will need to have the call method allow the command line to be called, a start method to handle the begining of the command line, as well as different methods for printing a collection of songs, as well as one particular song.

- Naturally it stands to reason that a song, being the primary component of our program, requires a class of it's own. Songs of course have properties that we will define based upon what we are able to scrape from the website. For example: name, artist, and rating among others.

