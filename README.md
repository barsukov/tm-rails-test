## Trademob Rails Assignment

### Getting started
I have implemented every parts of requirements,
I wrote the cucumber scenarioes for test cases and cover some points.

### Part 1: Platforms for campaigns
Our campaigns are run on different (mobile) platforms such as Android and iOS. Our campaign managers want to set one or more platforms for each campaign in the application from a list of available platforms (for now, `Android` and `iOS`). Each campaign must have at least one platform. We want to be able to add more supported platforms in the future.

### Part 2: Authorization and roles

Campaign managers should be able to manage campaigns and in particular add and remove platforms from them. However, they should not be able to configure the generally available list of platforms. Only admins are allowed to do that (e.g. they may want to add `Windows` to the generally available platforms).

Devise and implement a suitable solution for handling of the two different user roles `admin` and `campaign manager`. Please create a new campaign manager `cm@example.com` with the password `password` and supply a migration/seed task for this user.

### Part 3: Audit trail for platform changes

We would like to track all changes to the platform settings for campaigns with a budget of more than 1000€ (don't worry about the currency, it's not part of the model for simplicity). So, if a platform is added or removed from a campaign that has a budget of more than 1000€, we would like to store a record about this somewhere. All users (i.e. admins and campaign managers) can review the list of records for each campaign.


For testing we will perform the following steps:

1. `git clone <your fork>`
2. `bundle install`
3. `rake db:migrate`
4. `rake db:seed`
5. `rails s`
6. `rake cucumber`

We should then be able to log in to the dashboard at `http://localhost:3000/admin` using either the `cm@example.com` or `admin@example.com` user.

A bit of documentation about your implementation probably won't hurt either. Good luck!
