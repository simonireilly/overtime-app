# Overtime

Client Notes

Created Monday 23 October 2017

* Must record when salaried employs get over time, and the employee must confirm

## Models

- Complete: POST - Employees overtime posted
    * Date
    * Rationale

- Complete: User - Devise user

- Complete: Admin User - Will use Single Table Inheritance (STI)

## Features

1. There must be an approval work flow 

	a. e.g. A created post by user, will be able to be approved by the Admin

2. We'll need text messages to remind the user (clients are non-technical field workers)

	a. This will include a link to log time

3. There will be an Admin dashboard - Administrate Gem

4. Summary email to managers for approval (Admin users)

5. It must be documented if an employee does not log overtime


## Gems

* Devise - Mange user / admin
* Administrate - Mange Admin Dashboard
* Bootstrap - Styling
* Twillio - Sending SMS
* Dotenv - Manage secure credentials
* Rspec - Testing
* Capybara - Integration testing

## Refactor To Do's
- Refactor user association integration test in post_spec
