# git_repo_flutter

A Flutter application which shows the top 50 most starred github repositories by searching with the "Flutter" keyword.

## Requirements

1. Fetch repository list from https://api.github.com/ API using "Flutter" as query keyword.
2. The fetched data must be persisted locally to permit the app to be used offline after data has
   been fetched.
3. The required data can be refreshed from the API no more frequently than once every 30
   minutes.
4. Show the list of repositories in the home page.
5. List can be sorted by either last updated date-time or star count (add a sorting button/icon)
6. Selected sorting option persists in further app sessions.
7. A repo details page, to which navigated by clicking on an item from the list.
8. Details page shows repo owner's name, photo, repository's description, last update date time
   in month-day-year hour:seconds format, each field in 2 digit numbers and any other fields
   you want
9. The repository list and repository details data which loaded once, should be saved for offline
   browsing.
   
## Screens

<img src="https://github.com/touhid1333/git_repo_flutter/blob/master/assets/ss_01.png" width="375" height="667">

<img src="https://github.com/touhid1333/git_repo_flutter/blob/master/assets/ss_02.png" width="375" height="667">

## Getting Started

This project is a starting point for a Flutter application.

A few resources to get you started if this is your first Flutter project:

- [Lab: Write your first Flutter app](https://docs.flutter.dev/get-started/codelab)
- [Cookbook: Useful Flutter samples](https://docs.flutter.dev/cookbook)

For help getting started with Flutter development, view the
[online documentation](https://docs.flutter.dev/), which offers tutorials,
samples, guidance on mobile development, and a full API reference.
