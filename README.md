# Introduction 
This is an API Automation Karate Maven Framework. Tests are written on Gherkin language.

# Getting Started
1. User needs to have following software installed:
     - Intellij / Eclipse
     - Java JDK 16
     - Cucumber for java plugin
     - Maven
     - Junit5

2. Folder structure src/test/resources/features: Contains features for API testing.

3. Once downloaded, run mvn clean install

4. To run all tests, use command 
```shell script
mvn test -Dtest=TestRunner#executeTest
``` 
5. To run a single test case, go to TestRunner.java and change tags("~@ignore") into tags("@tc1") depending on which test you would like to run.

6. Test results can be autogenerated in target folder after test execution.
   ../com.assurity.exam.qa/target/karate-reports/karate-summary.html
