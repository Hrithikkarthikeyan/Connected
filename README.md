# README

## Connected - Social networking website

### Features
- A web application that helps users connect and also upload multiple images, like, comment, and share the posts.
- Users can upload multiple images in a post. likes and comments in a post will not reload the page.
- Users can search other users and send connection requests to them. They can also undo the request.
- Users can look into their connection requests list and accept the request.
- Users also get suggestions for connecting with other users. Most relevant users will be the top suggestion (i.e, friends of friends)
- Users can edit their profile. also add profile picture if required.
- Users can also delete their posts or even their account.
- Users can also see who viewed them in the past week. Views older than 7 days are deleted using a cronjob which runs each day to execute a rake which deletes the older views.
- Users can logout from the connected app. 

> Technologies used: Ruby on Rails, HTML, CSS, Bootstrap, Rails gems, Cron, Rake, mysql

* Ruby version - 3.3.0

### Steps to run the app (on mac)
1. install ruby
```
brew install ruby
open -e ~/.zshrc
```
Add the below lines in the zshrc file
```
if [ -d "/opt/homebrew/opt/ruby/bin" ]; then
  export PATH=/opt/homebrew/opt/ruby/bin:$PATH
  export PATH=`gem environment gemdir`/bin:$PATH
fi
```

```
source ~/.zshrc
ruby -v
```

1. setup rails
```
bundle install
rails db:migrate
rails webpacker:install
yarn install
brew install imagemagick
rails server
```

### References
https://mac.install.guide/ruby/13
https://dev.to/dani8439/rails-6-webpacker-manifest-missingentryerror-4fi7#:~:text=Your%20webpack%20configuration%20is%20not,run%20properly%2C%20are%20being%20generated.