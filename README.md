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
- [x] Auditlog model required

## Features
- [x] Approval workflow
- [x] SMS sending -> link to approval or overtime input -> Integrate with heroku scheduler
- [x] Administrate admin dashboard
- [x] Block non admin and guest users from administrate
- [x] No domain, so we can't configure right now - Email summary to managers for approval
- [x] Needs to be documented if employee did not log overtime
- [x] Create an audit log when each text message is sent
- [x] Update auditlog end date when confirmed
- [x] Need to update auditlog status when overtime is rejected
- [x] Update buttons on employee homepage
- [x] Update buttons to include time span
- [x] Update button sort order in employee page
- [x] Remove unnecessary navbar buttons for managers
- [x] Fix admin dashboard following adding employee
- [x] Implement honeybadger for error recording
- [x] Install new relic to ping heroku

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
* gritter - js implemented flash messages
* Pundit - admin and user policy
* Twillio - Sending SMS
* kaminari - Pagination with refreshing pages
* Dotenv - Manage secure credentials in development
* Rspec - Testing
* Capybara - Integration testing


