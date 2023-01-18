-- Challenge Bonus queries.
-- 1. (2.5 pts)
-- Retrieve all the number of backer_counts in descending order for each `cf_id` for the "live" campaigns. 
SELECT cf_id, COUNT(*) as backer_counts
FROM Backers
GROUP BY cf_id
ORDER BY backer_counts DESC;

-- 2. (2.5 pts)
-- Using the "backers" table confirm the results in the first query.
SELECT * FROM Backers;


-- 3. (5 pts)
-- Create a table that has the first and last name, and email address of each contact.
-- and the amount left to reach the goal for all "live" projects in descending order. 
CREATE TABLE email_contacts_remaining_goal_amount (
    first_name VARCHAR(255),
    last_name VARCHAR(255),
    email VARCHAR(255),
    amount INT,
    campaign_name VARCHAR(255)
);



-- Check the table
SELECT * FROM email_contacts_remaining_goal_amount;


-- 4. (5 pts)
-- Create a table, "email_backers_remaining_goal_amount" that contains the email address of each backer in descending order, 
-- and has the first and last name of each backer, the cf_id, company name, description, 
-- end date of the campaign, and the remaining amount of the campaign goal as "Left of Goal". 
CREATE TABLE email_backers_remaining_goal_amount (
    email VARCHAR(255),
    first_name VARCHAR(255),
    last_name VARCHAR(255),
    cf_id VARCHAR(255),
    company_name VARCHAR(255),
    description VARCHAR(255),
    end_date DATE,
    left_of_goal INT
);



-- Check the table
SELECT * FROM email_backers_remaining_goal_amount;


