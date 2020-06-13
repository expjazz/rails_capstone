# Task Manager - Manage tasks of your company

<!-- TABLE OF CONTENTS -->

## Table of Contents

- [About the Project](#about-the-project)
  - [Built With](#built-with)
- [Contact](#Authors)
- [Acknowledgements](#acknowledgements)
- [What can it do](#What-can-it-do)

## Description

An app that lets you register tasks and groups them in two levels, allowing one class of Users (managers) to keep track and assign tasks to other levels (employees), also allows communication between them with a live-chat.

![screenshot](./images/mainpage.png)

## Live demo

[Check it out](https://intense-earth-68762.herokuapp.com/)

## Built With

- Ruby on Rails
- Javascript
- Rspec
- FactoryBot
- Faker
- Bootstrap

## Getting Started

To get a local copy up and running follow these simple example steps.

### Prerequisites

- Ruby on Rails

### Usage
- To create tasks, just go on to create tasks and click on the 'Add new' button. (To use the timer, just click on 'set timer'.)
- To create groups, go to 'See all groups of tasks', click on 'Add new', give it a name and an icon and click on submit.
- When you create your user profile, you can be either a manager or an employee (the option is on the top right of the signup page). If you want access to all employee's tasks, choose the manager profile (the access occurr automatically). If you choose the employee, you won't be able to access this functionality. 
- If you are a manager, the option 'Manager your employee's tasks will show up on your profile page. Click on that to manage the tasks of your employees. To add a task for an employee, click on the blue link 'Manage tasks', then click on the button 'Add new'. As you go onwards, you will be creating a task for your employee (he will get a notification once he checks his tasks.)
- To initiate a live chat with your employee, click on the 'Initiate a private chat'. A chat window will appear on the bottom of the page.

#### Online

- Just open the link and register yourself as an User and enjoy.

#### Locally

- Clone the project to your local machine
- Open your terminal and type in 'rails db:migrate'
- Type 'rails server' on your terminal
- Try out creating a profiler as a manager or employee

#### Tests
- All tests were built with Rspec. To test all the features, type 'rspec' on the terminal.

#### What can it do
- It allows a manager to track the tasks of his team.
- It has a private chat from a manager to an employee.
- It has a timer so you can track your tasks real time.

#### Check the ERD
![ERD](./erd.png)

## Author

- Expedito Andrade

👤 **Expedito Andrade**

- Github: [@githubexpjazz](https://github.com/expjazz)
- Twitter: [@expjazz](https://twitter.com/expeditoandrade13)
- Linkedin: [Expedito Andrade](https://www.linkedin.com/in/expedito-andrade-3645151a4/)
- Email: expeditojazz@gmail.com

### Future Updates

- To allow more layers of users.
- To give an option of the employee class of the user to initate a chat.
- Restrict the groups from user to user

## 🤝 Contributing

Contributions, issues and feature requests are welcome!

Feel free to check the [issues page](issues/).

## Show your support

Give a ⭐️ if you like this project!

## Acknowledgments

- Microverse, standup team and the microverse community for helping build the skills that were used on this project

## 📝 License

This project is [MIT](lic.url) licensed.
Design by Gregoire Vella on Behance.
