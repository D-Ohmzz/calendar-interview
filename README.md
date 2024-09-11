
# 📅 Calendar CRUD Operations

Welcome to the Calendar CRUD Operations task! This task is designed to assess your ability to understand existing code and modify it to include CRUD (Create, Read, Update, Delete) operations with a database. You will be working on the backend implementation and ensuring seamless integration with the calendar frontend.

## 📝 Task Overview

Your objective is to:
- Create a fork of the codebase
- Understand the given codebase.
- Modify the relevant files to add CRUD operations for handling calendar events.
- Ensure proper database connection and interaction.
- Implement the backend file structure and APIs.
- Ensure the calendar frontend interacts smoothly with the backend.

## 🔍 Assessment Criteria

Your task will be assessed based on:
1. **Database Connection**: Efficient and secure connection to the database.
2. **Backend Implementation**: Clean and organized file structure.
3. **API Development**: Robust and well-documented APIs for CRUD operations.
4. **Frontend Integration**: Smooth and functional integration of the calendar with the backend.

## 📂 Project Structure

```
calendar-crud-operations/
├── assets/
│   ├── css/
│   ├── img/
│   ├── js/
│   ├── json/
│   ├── vendor/
├── includes/
│   ├── scripts.php
│   ├── search_bar.php
│   ├── sidebar.php
├── .gitignore
├── header.php
├── footer.php
├── index.php
├── README.md

```

## 📖 API Documentation

### Add Event
- **URL**: ``
- **Method**: `POST`

### Fetch Events
- **URL**: ``
- **Method**: `GET`

### Update Event
- **URL**: ``
- **Method**: `PUT`

### Delete Event
- **URL**: ``
- **Method**: `DELETE`

## 💡 Tips for Success

- Ensure your database connection is secure and handles errors gracefully.
- Keep your code modular and organized for scalability.
- Write clear and concise API documentation.
- Test your API endpoints thoroughly.

## 📬 Contact

For any questions or clarifications, feel free to reach out via [fiona@vesencomputing.com](mailto:fiona@vesencomputing.com).

## TASK RESPONSE
In response to the task I have been able to achieve the following:
1. Establish and secure efficient database connection using mysql
2. Create php files for handling crud operations i.e add_event.php, delete_event.php, fetch_event.php and update_event.php storing them in the home directory. each taking POST, DELETE, GET AND PUT requests respectively and tested using POstman.
3. Create API endpoints using the php files: add_event.php, delete_event.php, fetch_event.php and update_event.php, with each taking POST, DELETE, GET AND PUT requests respectively and tested using Postman.
4. Frontend Integration for just the Add event operation currently.
This was achieved by the use of ajax where upon clicking of the add event button, add_event() function is triggered and the ajax block sends a POST request with the event details to the add_event.php file which handles the POST requests and saves the data in the database.