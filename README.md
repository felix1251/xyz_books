# XYZ Books

***Ruby version 3.0.0*** (make sure you install the correct version of ruby)

***Ruby on Rails version 7.0.4***

## Clone repo
```
git clone https://github.com/felix1251/xyz_books.git
```
```
cd xyz_books
```
## Install Dependencies
```
bundle install
```
## **Setup DB**
Setup env variables for mysql credentials (create .env file inside project directory)

Make sure MySQL is installed on your machine
```
DB_USERNAME = your_db_username
DB_PASSWORD = your_db_pasword
```
```
rails db:setup
```
**Or equivalent**
```
rails db:create
```
```
rails db:mgrate
```
```
rails db:seed
```
## **Run local server**
```
./bin/dev
```