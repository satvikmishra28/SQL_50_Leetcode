-- Table: Tweets

-- +----------------+---------+
-- | Column Name    | Type    |
-- +----------------+---------+
-- | tweet_id       | int     |
-- | content        | varchar |
-- +----------------+---------+
-- tweet_id is the primary key (column with unique values) for this table.
-- content consists of alphanumeric characters, '!', or ' ' and no other special characters.
-- This table contains all the tweets in a social media app.
 

-- Write a solution to find the IDs of the invalid tweets. The tweet is invalid if the number of characters used in the content of the tweet is strictly greater than 15.

-- Return the result table in any order.

-- The result format is in the following example.   
CREATE TABLE Tweets (
    tweet_id int,
    content varchar(255),
    PRIMARY KEY (tweet_id)
);

INSERT INTO Tweets (tweet_id, content) VALUES
(1, 'Hello World!'),
(2, 'This is a very long tweet!'),
(3, 'Short tweet'),
(4, 'Another invalid tweet here!');



SELECT tweet_id
FROM Tweets
WHERE LENGTH(content) > 15;

