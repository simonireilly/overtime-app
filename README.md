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

[ ] Approval workflow
- Status to be added to post
- Require status
- Give default
- Implement approval stages
- Include locking

[ ] SMS sending -> link to approval or overtime input

[x] Administrate admin dashboard

[x] Block non admin and guest users from administrate

[ ] Email summary to managers for approval

[ ] Needs to be documented if employee did not log overtime

## UI

- [x] Bootstrap for formatting
- [ ] Icons from font awesome
- [x] Update the style for the forms

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
