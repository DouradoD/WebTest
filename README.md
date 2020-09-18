### Para ver o último resultado, basta baixar o projeto e executar os seguintes comandos:
```
allure generate reports/allure-results --clean
allure open
```

# WebTest

This is a automated test project on Ruby language with Selenium Webdriver to automate web tests.
This project uses the Page Object Pattern, so it provides a cleaner and easier code to maintain.

## Getting Started

These instructions below will get you a copy of the project up and running on your local machine(MAC).

### Pre-requisites

- The project requires Ruby 2.6.3 

After Ruby is installed, you have to install the gem "bundler" by command line, so you can download all of the Ruby libraries with it:
First: Access the WebTest file
```
gem install bundle
```

Install chromedriver
```
brew cask install chromedriver -> MAC
```
Also, you have to install binstubs, so, it generates the executable binary to execute the cucumber tests with ease on command line:
```
bundle install --binstubs
```

To be able to generate reports after the test running, you have to install allure:
```
brew install allure -> MAC
```

### Installing

With all the prerequisites working properly, to conclude the setup you will just have to install all the dependencies, so, now you only have to bundle!
```
bundle install
```

## Running the tests

Below are the main ways that you can do to run the tests with different configurations.

### To run with the default chromedriver configuration
```
cucumber --publish
```
After that, open the link displayed on terminal "View your Cucumber Report at:"

###Or

```
cucumber --format AllureCucumber::CucumberFormatter --out
allure generate reports/allure-results --clean
allure open
```

## Built With

* [Ruby](https://www.ruby-lang.org/en/) - Programming language
* [Cucumber](https://www.seleniumhq.org/projects/webdriver/) - Collaboration tool that also allows to automate tests by using BDD style
* [Selenium Webdriver](https://www.seleniumhq.org/projects/webdriver/) - Suite of tools to automate web browsers test across many platforms
* [Capybara](https://github.com/teamcapybara/capybara) - Web-based test automation tool that simulates user scenarios and automates web testing.
* [Siteprism](https://github.com/natritmeyer/site_prism) - Used to be able to use Page Object Pattern on Capybara
* [Bundler](https://bundler.io/) - Dependency Management