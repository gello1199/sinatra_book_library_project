# SinatraBookLibraryProject

Welcome to the Sinatra Virtual Library! In this application, you will be able to have your own secure account which will give you access to all of the books in the virtual library. After signing up, the user will be able to view all of the books that every user has created, as well as creating new book submissions themself. However, the user will be able to edit and delete only submissions that they created. The app will also give the user a profile page in order to review their submissions and edit or delete as necessary.

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'sinatra_book_library_project'
```

And then execute:

    $ bundle install

Or install it yourself as:

    $ gem install sinatra_book_library_project

    To run the program:
    shotgun

## Usage

To start, run bundle install to make sure all of the necessary gems have been installed successfully.

Next, run shotgun to be able to view the app on your localhost.

You will be greeted to the homepage. Here, you can either signup or login to your account.

If you are a new user, you will need to created a valid username and password.

Once created, you will be redirected to the books homepage where the user will have access to all book submissions.

The user can click on any book and view the title, author, genre and year published.

As a registered user, you can create a new book submission.

Once created, the user will be able to edit or delete any and only their own submissions.

All submissions created by the user will also be stored in their profile page.

Once logged out, the user will now be able to login and have all of their information stored in the database for continued work.

## Development

After checking out the repo, run `bundle install` to install dependencies. 

To install this gem onto your local machine, run `bundle exec rake install`. To release a new version, update the version number in `version.rb`, and then run `bundle exec rake release`, which will create a git tag for the version, push git commits and the created tag, and push the `.gem` file to [rubygems.org](https://rubygems.org).

## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/[USERNAME]/nhl_cli. This project is intended to be a safe, welcoming space for collaboration, and contributors are expected to adhere to the [code of conduct](https://github.com/[USERNAME]/nhl_cli/blob/master/CODE_OF_CONDUCT.md).

## License

The gem is available as open source under the terms of the [MIT License](https://opensource.org/licenses/MIT).

## Code of Conduct

Everyone interacting in the SinatraBookLibraryProject project's codebases, issue trackers, chat rooms and mailing lists is expected to follow the [code of conduct](https://github.com/[USERNAME]/nhl_cli/blob/master/CODE_OF_CONDUCT.md).

