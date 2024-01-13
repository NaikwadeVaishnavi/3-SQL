``---1.How can you retrieve all the information from the cd.facilities table?
     ----Expected Result should look similar to this (with more rows):
SELECT * FROM FACILITIES

---2.You want to print out a list of all of the facilities and their cost to members. 
      --How would you retrieve a list of only facility names and costs?
SELECT NAME,MEMBERCOST FROM FACILITIES

--3.How can you produce a list of facilities that charge a fee to members?
     ---Expected Results should have just 5 rows:
SELECT * FROM FACILITIES WHERE MEMBERCOST != 0

--4.How can you produce a list of facilities that charge a fee to members, and 
     ---that fee is less than 1/50th of the monthly maintenance cost? Return the facid, facility name, member cost, and monthly maintenance of the facilities in question.
     ----Result is just two rows:
SELECT * FROM FACILITIES WHERE MEMBERCOST !=0 AND   MEMBERCOST < monthlymaintenance/50

--5.How can you produce a list of all facilities with the word 'Tennis' in their name?
    --Expected Result is 3 rows
SELECT * FROM FACILITIES WHERE NAME ILIKE '%TENNIS%'

--6.How can you retrieve the details of facilities with ID 1 and 5? Try to do it without using the OR operator.
    --Expected Result is 2 rows
SELECT * FROM FACILITIES WHERE FACID IN (1,5)

--7.How can you produce a list of members who joined after the start of September 2012? Return the memid, surname, firstname, and joindate of the members in question.
     ---Expected Result is 10 rows (not all are shown below)
SELECT * FROM MEMBERS WHERE JOINDATE >= '2012-09-01'  	

--8.How can you produce an ordered list of the first 10 surnames in the members table?
     ---The list must not contain duplicates.
    ---Expected Result should be 10 rows if you include GUEST as a last name
select distinct(surname) from members order by  surname limit 10

--9.You'd like to get the signup date of your last member. How can you retrieve this information?
   --Expected Result
   ---2012-09-26 18:08:45
select max(joindate) from members

--10.Produce a count of the number of facilities that have a cost to guests of 10 or more.
  ---Expected Result
   ---6
SELECT COUNT(*) FROM facilities WHERE GUESTCOST > 10 

--11.Produce a list of the total number of slots booked per facility in the month of September 2012. 
    ---Produce an output table consisting of facility id and slots, sorted by the number of slots.
     ---Expected Result is 9 rows
SELECT BOOKINGS.FACID,SUM(BOOKINGS.SLOTS )FROM BOOKINGS INNER JOIN MEMBERS 
ON BOOKINGS.MEMID= MEMBERS.MEMID 
WHERE JOINDATE BETWEEN '2012-09-01' AND '2012-09-30' 
GROUP BY BOOKINGS.FACID 
ORDER BY SUM(SLOTS)

--12.Produce a list of facilities with more than 1000 slots booked.
   ---Produce an output table consisting of facility id and total slots, sorted by facility id.
SELECT facilities.NAME,SUM(SLOTS) FROM facilities
INNER JOIN BOOKINGS ON facilities.FACID = BOOKINGS.FACID  
GROUP BY NAME 
HAVING sum(slots) >1000 
order by name

---13.How can you produce a list of the start times for bookings for tennis courts, 
    ----for the date '2012-09-21'? Return a list of start time and facility name pairings, 
	  ---ordered by the time.
   ---Expected Result is 12 rows
SELECT starttime, name
FROM bookings
INNER JOIN facilities ON facilities.facid = bookings.facid
WHERE name LIKE '%Tennis Court%' AND starttime BETWEEN '2012-09-21 00:00:00' AND '2012-09-21 23:59:59' 
ORDER BY starttime;

---14.14.How can you produce a list of the start times for bookings by members named 'David Farrell'?
     ----Expected result is 34 rows of timestamps
select starttime from bookings inner join members on bookings.memid=members.memid where surname ilike 'Farrell' and firstname ilike 'David'

