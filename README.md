# XYZ Books

**_Ruby version 3.0.0_** (make sure you install the correct version of ruby)

**_Ruby on Rails version 7.0.4_**

<a href="http://xyzbooks.fjc-shop.online/" target="_blank" rel="noopener">Live App</a>

## Clone Repo

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

**Or Equivalent**

```
rails db:create
```

```
rails db:mgrate
```

```
rails db:seed
```

**Reset Setup** (Only if needed, not required)

```
rails db:reset
```

## **Run Local Server**

```
./bin/dev
```

## **Sample ISBN values to search**

ISBN13

```
"978-1-60309-398-9
```

```
978-1-891830-85-3
```

ISBN10

```
1-603-09454-7
```

```
1-603-09038-X
```
