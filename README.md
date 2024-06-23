Endrias Mekonnen Udacity Final project Ensuring Quality Releases:

<img width="756" alt="Screenshot 2024-06-23 at 6 42 18 PM" src="https://github.com/Endrias13/FinalProj_Udacity/assets/33791240/5db88688-b3a0-49a5-b0f1-6ee0495c34f5">

Project Structure

- devops/pipelines: azure pipelines yaml
- automatedtesting: suites of different tests
        1. jmeter: load test (JMeterPlan.jmx), CSV inputs, and TestReports (endurance-report, stress-report)
        2. postman: functional tests postman collections and environments
        3. selenium: ui tests (uitests.py)
- fakerestapi: api files to deplopy webapp
- screenshoots: all screen shots requests
- terraform: terraform scripts

Screenshoots Log:

****  Terraform to apply **** 

<img width="1313" alt="Terraform to apply Infrastructure as Code (IaC)" src="https://github.com/Endrias13/FinalProj_Udacity/assets/33791240/f84da4e2-6bbf-4f4c-ad27-f26e7ad2067f">


<img width="1356" alt="terraform-state_blob" src="https://github.com/Endrias13/FinalProj_Udacity/assets/33791240/9471c0c0-e3c9-4fb1-be82-7ce5f1b23c0e">


**** Successful Deployment for the Azure Pipeline **** 

<img width="1087" alt="Terraform_Success" src="https://github.com/Endrias13/FinalProj_Udacity/assets/33791240/da575f67-e58e-495d-8d59-d84df5a7d48a">




**** JMeter Logs (Downloaded Log Text File for easy Lookup)  **** 

1. Endurance Test:

<img width="1236" alt="EnduranceTest_Log" src="https://github.com/Endrias13/FinalProj_Udacity/assets/33791240/426fe3ec-6fa4-48a4-b5e4-57b3156bb6f2">




2. Stress Test:

<img width="1201" alt="StressTest_Log" src="https://github.com/Endrias13/FinalProj_Udacity/assets/33791240/d75547a4-4749-4a7f-832b-d54b14afca3e">





**** UI Test Results Using Selenium **** 

<img width="850" alt="UI_Test_Results" src="https://github.com/Endrias13/FinalProj_Udacity/assets/33791240/76e8db8a-5d5c-4129-b9ab-7740b73b9e8b">


Summary page:

![Run Summary page](https://github.com/Endrias13/FinalProj_Udacity/assets/33791240/065e06a5-a511-4450-9847-20e38894864c)


Test Results:

<img width="841" alt="Test Results" src="https://github.com/Endrias13/FinalProj_Udacity/assets/33791240/c6bf0d1f-a16b-4153-b72e-f3e85543af17">


Published Test Results:

<img width="1080" alt="Publish Test Results" src="https://github.com/Endrias13/FinalProj_Udacity/assets/33791240/69772a7d-5974-4408-aeba-7e58735c7c0e">



**** Azure Alerts ****

Creating Alert Group:

<img width="1185" alt="Azure_Monitor_Email_Create" src="https://github.com/Endrias13/FinalProj_Udacity/assets/33791240/d269aa01-644b-4c93-9547-6024d6cecbaa">



Azure Alert Sent Via Email:

<img width="1083" alt="Azure_Alert_Email" src="https://github.com/Endrias13/FinalProj_Udacity/assets/33791240/a48069f3-d689-4936-9755-7793fbd8b3a2">


Azure Firing The Alert:

<img width="1407" alt="Azure_Alert_Firing" src="https://github.com/Endrias13/FinalProj_Udacity/assets/33791240/5a6f896a-cbf3-4823-8d95-59b626bc5b62">


Here's more of a deep dive into the alert:

<img width="1398" alt="Azure_Alert_Info" src="https://github.com/Endrias13/FinalProj_Udacity/assets/33791240/cdab613f-f07c-4a7a-b235-182a107f2da4">

