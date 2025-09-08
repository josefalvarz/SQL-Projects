-- Sentiment counts per day for technology subreddit
SELECT 
    to_timestamp(created_utc)::date AS date,
    sentiment,
    COUNT(*) AS count
FROM posts
WHERE subreddit ILIKE '%technology%'
GROUP BY date, sentiment
ORDER BY date;

-- Top 6 subreddits by total comments
SELECT 
    subreddit, 
    SUM(num_comments) AS total_comments
FROM posts
GROUP BY subreddit
ORDER BY total_comments DESC
LIMIT 6;

-- Subreddit with highest average score
SELECT 
    subreddit, 
    AVG(score) AS avg_score
FROM posts
GROUP BY subreddit
ORDER BY avg_score DESC
LIMIT 6;

-- Sentiment counts per subreddit
SELECT 
    subreddit, 
    sentiment, 
    COUNT(*) AS count
FROM posts
GROUP BY subreddit, sentiment;

-- Sentiment counts per day (all subreddits)
SELECT 
    to_timestamp(created_utc)::date AS date,
    sentiment,
    COUNT(*) AS count
FROM posts
GROUP BY date, sentiment
ORDER BY date;

-- Positive counts per subreddit
SELECT 
    subreddit,
    COUNT(*) AS positive_count
FROM posts
WHERE sentiment = 'positive'
GROUP BY subreddit
ORDER BY positive_count DESC;

-- Neutral counts per subreddit
SELECT 
    subreddit,
    COUNT(*) AS neutral_count
FROM posts
WHERE sentiment = 'neutral'
GROUP BY subreddit
ORDER BY neutral_count DESC;

-- Negative counts per subreddit
SELECT 
    subreddit,
    COUNT(*) AS negative_count
FROM posts
WHERE sentiment = 'negative'
GROUP BY subreddit
ORDER BY negative_count DESC;