# Ecommerce
## Requirements
- [XAMPP Server](https://www.apachefriends.org/index.html)
- [Composer (A Dependency Manager for PHP)](https://getcomposer.org/)
- [Laravel](https://laravel.com/docs/8.x/installation)
- [Node](https://nodejs.org/en/download/)
## Content
### Main Directory
```
Ecommerce 
└───Backend
    └───E-Commerce (laravel application)
└───FrontEnd
    └───e-commerce (vue application)
```
## 1. [Laravel Application]https://github.com/Prashant6068/Ecommerce_website/tree/master/Backend)
> Laravel Application Setup
```console
$ cd Back-end

$ composer install
```
Create .env file and copy the content from your .env.example
> Env file setup
```
DB_CONNECTION=mysql
DB_HOST= #database host
DB_PORT= #database portnumber
DB_DATABASE= #database name
DB_USERNAME= #database username
DB_PASSWORD= #databse password

MAIL_MAILER=smtp
MAIL_HOST=smtp.gmail.com
MAIL_PORT=587
MAIL_USERNAME= #your gmail
MAIL_PASSWORD= #your gmail password
MAIL_ENCRYPTION=tls
MAIL_FROM_ADDRESS= #your gmail 
MAIL_FROM_NAME="${APP_NAME}"
```
> publish config
```console
$ php artisan vendor:publish --provider="Tymon\JWTAuth\Providers\LaravelServiceProvider"
$ php artisan vendor:publish --provider="Maatwebsite\Excel\ExcelServiceProvider"
$ php artisan vendor:publish --provider="Spatie\Newsletter\NewsletterServiceProvider"
```
> JWT Secret key setup
```console 
$ php artisan jwt:secret
```
> Mail Chimp setup
```
MAILCHIMP_APIKEY= #mailchimp api key
MAILCHIMP_LIST_ID= #mailchimp list id
```
> Database setup
```console
$ php artisan migrate
$ php artisan:db seed
```
> Run laravel application
```console
$ php artisan serve
```
## 2. [Vue Application](https://github.com/Prashant6068/Ecommerce_website/tree/master/Frontend)
> Vue application setup
```console 
$ cd ../..
$ cd Frontend
$ npm install --save
$ npm run serve
```
