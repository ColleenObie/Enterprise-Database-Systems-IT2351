/*
Colleen Overbaugh Spring 2021
To create an event scheduler to run every year that shows which products have not been ordered in the last 
year, you would first have to create the event with the event name. Then use the on schedule time stamp plus 
the 1 year interval to set it as an anual event. After that, you would select product_id and the product_name
from the products table and group them by the product_id having the sum of 0 for the year. That code will 
allow the scheduler to show which products have not been ordered in a year.*/