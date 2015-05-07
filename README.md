# Library Project Requirements

## Done

* ~~Books model~~
* ~~Books seeds~~
* ~~Books view all~~
* ~~Twitter Bootstrap~~
* ~~Kanimari pagination~~
* ~~Authors model~~
* ~~Authors seeds~~
* ~~Authors view all~~
* ~~Authors view details~~

## To Do

* Login/logout
* Users model
* Users validations
* Books view details
* Books model validations
* Authors model validations
* Destroy dependents if book is destroyed
* Dropdown of authors when creating a book
* Authors view details - include list of their books
* Search for specific books (by title, author, or ISBN)
* Reserve books, return books, and view reservations
  * Only one copy of each book per user
  * Must re-check number available when reserving in case they had been sitting idle
  * id, reserved_on, due_on(+7 days), user_id, book_id, created_at, updated_at
  * belongs_to user and book
* Admin users
  * CRUD books
  * View overdue books
* No SQL injection vulnerabilities
* Seed users, books, and authors
* Extra credit
  * User registration
  * User management
  * Author management
  