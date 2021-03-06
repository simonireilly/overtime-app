FactoryGirl.define do

  sequence :email do |n|
    "test#{n}@test.com"
  end

  factory :user do
    first_name 'John'
    last_name 'Snow'
    email {generate :email}
    password 'asdfasdf'
    password_confirmation 'asdfasdf'
    phone '17522285748'
    ssn 1234
    company 'ABC company'
  end

  factory :employee, class: 'Employee' do
    first_name 'John'
    last_name 'Snow'
    email {generate :email}
    password 'asdfasdf'
    password_confirmation 'asdfasdf'
    phone '17522285748'
    ssn 1234
    company 'ABC company'
  end

  factory :admin_user, class: 'AdminUser' do
    first_name 'Admin'
    last_name 'User'
    email 'admin@user.com'
    password 'asdfasdf'
    password_confirmation 'asdfasdf'
    phone '17522285748'
    ssn 1234
    company 'ABC company'
  end

  factory :non_authorized_user, class: 'User' do
    first_name 'Non'
    last_name 'Authorized'
    email {generate :email}
    password 'asdfasdf'
    password_confirmation 'asdfasdf'
    phone '17522285748'
    ssn 1234
    company 'ABC company'
  end

end