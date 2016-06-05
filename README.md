# Rails Boilerplate

### This is a starter app for building heroku-deployable rails 4 apps using twitter bootstrap, sass, and slim


## Setup & Hosting

### Running locally

To start the server use
`$ heroku local`

It also has a `Procfile` which you probably won't need to touch.


### Deploying to heroku

 - Set up a heroku account (or use an existing one)
 - Create a new app
 - Decide if you want to point it at your own fork of the app, a particular release, or branch, or the HEAD. For production instances, it's recommended you point it to the latest stable release.
 - Set up your environment variables taken from your `.env` file.

 TIP: Need to backup your heroku database before deploying?

 ```
 $ heroku pg:backups capture --app APPNAME
 ```

 Want daily backups?
 ` heroku pg:backups schedule DATABASE_URL --at '02:00 Europe/London' --app APPNAME`

 You can save it locally if you want:

 ```
 $ curl -o latest.dump `heroku pg:backups public-url --app APPNAME`
 ```

  Read more about [postgres backups](https://devcenter.heroku.com/articles/heroku-postgres-backups)  including how to restore.

## Testing

This app is set up to use BDD principles using cucumber. It includes some basic step definitions that I tend to re-use a lot.

### Running cucumber
`$ bundle exec cucumber`

Or only run @wip (work in progress) tests:

`$ bundle exec cucumber:wip`
