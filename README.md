# Original App Design Project

# WanderLust

## Table of Contents
1. [Overview](#Overview)
2. [Product Spec](#Product-Spec)
3. [Wireframes](#Wireframes)
5. [Schema](#Schema)

## Overview

## Description
This is a mobile app that allows users to choose a country they want and get suggestions on places to visit and things to do.

### App Evaluation

Category: Education
Mobile: Mobile
Story: It tells the users about different experiences around the world
Market: Travelers
Habit: occasional use (could be daily depending on the user)
Scope: broad scope

## Product Spec
### 1. User Stories (Required and Optional)
Required:
- [X] Users can login 
- [X] Users can create an account
- [ ] Users can view the home screen with suggested countries
- [ ] Users can select which country to go to
- [ ] Users can select and read about different activities
- [X] Users can logout

Optional:
- Users can edit their account details
- Users can upload suggestions
- Users can join a community of suggestions

### 2. Screen Archetypes
* Login Screen
    * User can login
* Register Screen
    * User can register
* Home Screen
    * User can view recommended cities
    * User can select a city
    * User can logout of app
* Selected Country Screen
    * User can view an overall description of the city
    * User can view suggested activities
* Activity Screen
    * User can view the details
    * User can description of the selected activity


### 3. Navigation
**Tab Navigation** (Tab to Screen)
- [First Tab, e.g., Home Feed]
- [Second Tab, e.g., Profile]
...
...
...

**Flow Navigation** (Screen to Screen)
* Login Screen
=> Home Screen
* Register Screen
=> Home Screen
* Home Screen
=> Individual Country Screen
* Individual Country Screen
=> Activity Screen


## Wireframes
![Screenshot 2024-03-17 at 10.10.27 PM](https://hackmd.io/_uploads/S17kmXHCa.png)
![Screenshot 2024-03-17 at 10.10.38 PM](https://hackmd.io/_uploads/SkX17QSAT.png)
![Screenshot 2024-03-17 at 10.10.45 PM](https://hackmd.io/_uploads/ByXyX7B06.png)
![Screenshot 2024-03-17 at 10.10.53 PM](https://hackmd.io/_uploads/SkQymQrRa.png)
![Screenshot 2024-03-17 at 10.11.01 PM](https://hackmd.io/_uploads/SJEymXBAa.png)
![Screenshot 2024-03-17 at 10.11.14 PM](https://hackmd.io/_uploads/rJXyX7SRa.png)
![Screenshot 2024-03-20 at 6 42 00 PM](https://github.com/eddymarg/WanderLust/assets/114369011/4a9d2695-0875-4ea8-bd30-426b9214950a)
![Screenshot 2024-03-20 at 6 43 10 PM](https://github.com/eddymarg/WanderLust/assets/114369011/66a200d8-7f09-4cef-b1d8-89976795dfe4)
![Screenshot 2024-03-20 at 6 43 18 PM](https://github.com/eddymarg/WanderLust/assets/114369011/56bcbc54-f490-477b-96ef-adf91bde0532)



## Schema
### Models
[Model Name, e.g., User]

[Model Name, e.g., User]
| Property | Type   | Description                                  |
|----------|--------|----------------------------------------------|
| username | String | unique id for the user post (default field)   |
| password | String | user's password for login authentication      |
| ...      | ...    | ...                          

### Networking
- [List of network requests by screen]
- [Example: [GET] /users - to retrieve user data]
- [Add list of network requests by screen ]
- [Create basic snippets for each Parse network request]
- [OPTIONAL: List endpoints if using existing API such as Yelp]


