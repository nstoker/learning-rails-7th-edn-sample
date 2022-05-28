# Changelog

All notable changes to this project will be documented in this file.

The format is based on [Keep a Changelog](https://keepachangelog.com/en/1.0.0/),
and this project adheres to [Semantic Versioning](https://semver.org/spec/v2.0.0.html).

About to start [Chapter 10.1.1 ex2](https://www.learnenough.com/ruby-on-rails-7th-edition-tutorial/updating_and_deleting_users#sec-edit_form)

## TODO

- Finish configuring rails-erd after first models configured.

## [Unreleased]

- 10.1.1
  - added user edit page.
  - set `rel` to `noopener` to mitigate a security issue.
  - refactored `new` and `edit` to use `_form`.

## v0.0.8 2022-05-22

- added remember token
- add protection against session replay attacks

## v0.0.7 2022-05-01

- start the signin code.
- add the menu javascript.
- successful login, logout not yet implemented.
- make app more mobile friendly.
- refactor javascript for hamburger and account menus.
- log out code
- refactored tests

## v0.0.6 2022-04-28

- Add user model.
- Implement basic email and name validation.
- Add debug information for development.
- Add users/show action with sidebar and gravatar image.
- Style signup page.
- Prepare for production.

## v0.0.5 2022-04-23

- Simplify routes.
- Added bootstrap and improved layout.
- Add site layout tests.
- Add ApplicationHelper tests.
- Add User signup route.
- Add application version

## v0.0.4 2022-04-22

- Refactored page title

## v0.0.3 2022-04-22

- added guard for automated retesting
- added simplecov
- added rails-erd

## v0.0.2 2022-04-22

- Added home, help, about, and contact static pages.
- Added tests for the pages.

## v0.0.1 2022-04-22

- Initial build from command line.
- Use the tutorial's gem file.
- Improve the readme.
