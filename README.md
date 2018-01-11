# Overtime

## Client Notes

Created Monday 23 October 2017

* Must record when salaried employs get over time, and the employee must confirm

## Models

- [x] POST - Employees overtime posted
    * Date
    * Rationale
- [x] User - Devise user
- [x] Admin User - Will use Single Table Inheritance (STI)
- [ ] Auditlog model required

## Features
- [ ] Approval workflow
- [ ] SMS sending -> link to approval or overtime input -> Integrate with heroku scheduler
- [x] Administrate admin dashboard
- [x] Block non admin and guest users from administrate
- [ ] Email summary to managers for approval
- [ ] Needs to be documented if employee did not log overtime


## Refactor To Do's
- [ ] Prevent delete once approved or rejected

# Build

## UI

- [x] Bootstrap for formatting
- [x] Icons from font glyphicons
- [x] Update the style for the forms

## Gems

* Devise - Mange user / admin
* Administrate - Mange Admin Dashboard
* Bootstrap - Styling
* Pundit - admin and user policy
* Twillio - Sending SMS
* Dotenv - Manage secure credentials
* Rspec - Testing
* Capybara - Integration testing


