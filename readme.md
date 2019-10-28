## Description
Map Reduce program in Java to find the max price from a file

## Test Data
testdata\stockprice has test data and it will be used to run this program


## Hadoop Env & Commands

Ubuntu is installed in Windows Subsystem For Linux. Following command from the WSL window can be run


### Copy the test data into hadoop 

hadoop fs -copyFromLocal /mnt/c/Users/xxx/IdeaProjects/MaxStockPrice/testdata/stockprice /


### Delete the output directory

hadoop fs -rm -r /maxprice.results 


### Run the MaxPrice job

hadoop jar /mnt/c/Users/xxx/.m2/repository/com/apnatriangle/hadoop/MaxStockPrice/1.0-SNAPSHOT/MaxStockPrice-1.0-SNAPSHOT.jar MaxPrice /stockprice /maxprice.results


### Check out the results.  It should display 2 rows as there are 2 symbols

hadoop fs -cat /maxprice.results/part-r-00000

