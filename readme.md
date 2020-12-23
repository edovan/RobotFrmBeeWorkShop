# Robot Framework Sample Project

This is a simple Project to illustrate how to use RobotFramework

## Before you start
In this Project every "Stage x" commit correspond to a different level of abstraction of the testing suite.

#### Stage 1
_Quick & dirty_:
* it is the first type of test
* we had user directly the basic API of Selenium
* it is not reader friendly
* it is not robust: any modification on the html make the developer change every test

## What do you need before start
Before you start you:
* Must have internet access (LoL)
* Must have python installed (2.7 or above => 3.9 is better)
* Must have pip installed
* Selenium driver installed: we suggest to use Chrome (but it should work with any other)

## Getting started
there are a few steps:
1. Clone the repo
1. Enter the directory
1. Install requirements

  ```` BASH
  pip install -r ./requirements.txt
  ````
  **NOTE**

  I know: a virtual env should be better.... if you like you can do it or open a pull request to add it to this repo ;-) 
1. Run Your first test
  ```` BASH
  robot -d ./results ./case
  ````
**NOTE**

this test will run a simple login test against the https://www.saucedemo.com/  site. All the results of this test will be created inside the results directory
