# News Aggregator App

## Overview
This is a blog but unlike regular blogs it uses web scraping to source for articles from the following sources (NewsAPI, The Guardian and New York Times) and displays in a clean UI to users. In addition, it allows a user to register and select his/her preference of news source, location and even writer. It's a robust application that allows you to read news from around the world at your fingertips. 
The frontend was designed using React while the backend was built with Laravel and are both dockerized.

## Features
- Create Account: A user can register on the platform to ahve a more personalized news feed

- Read News from various sources: This application allows you to read news from various sources

- Clean and intuitive UI: The UI was designed with Tailwind CSS and it is very minimalistic and clean for a good user experience

## Setup Guide
The application has 2 folders:
    - backend: Which holds the Laravel code for the backend and powers the frontend
    - frontend: Holds the React code for the user interface and relies on the Laravel API for proper functionality
To setup the application locally:
- Clone the repository
- cd into the `/backend` folder in the project directory
- Copy .env.example to .env
- Run ```composer install``` to install composer dependencies
- Run ```php artisan key:generate``` to generate application key
- Run ```php artisan migrate``` to create all tables
- Run ```php artisan app:scrape``` to scrape the articles from the sources and populate the database
- Run ```php artisan passport:install``` to install Passport and also add the access client details in the database
- Run ```php artisan serve``` to serve up the application

- cd into the `/frontend` folder in the project directory
- Run `yarn install` to install all dependencies
- Run `yarn start` to serve up the application

## Homepage
![Homepage](./images/homepage.png)