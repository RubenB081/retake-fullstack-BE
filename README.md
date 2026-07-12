# ForgeFit API

Backend API for the ForgeFit Full Stack application.

## Author

- Ruben Broeckx
- Student Number: r0841536
- Class: 1ITF03

---

## Description

ForgeFit is a full-stack fitness web application that allows users to browse exercises, explore workout plans, and track workout sessions through an interactive workout player. The project is built with HTML, CSS, JavaScript, FastAPI, PostgreSQL, Neon, and Bootstrap.

## Technologies

- HTML5
- CSS3
- JavaScript
- Bootstrap 5
- FastAPI
- PostgreSQL
- Neon Database
- Vercel
- Netlify

## Live Demo
Frontend: https://forgefit-training.netlify.app

Backend (Swagger): https://retake-fullstack-be.vercel.app/docs

github (BE): https://github.com/RubenB081/retake-fullstack-BE

github (FE): https://github.com/RubenB081/retake-fullstack-FE

---

## Features

- Retrieve all exercises
- Filter exercises by muscle and difficulty
- Retrieve exercise details
- Create workout sessions
- Store workout sessions in PostgreSQL

---

## API Endpoints

| Method | Endpoint | Description |
|--------|----------|-------------|
| GET | /exercises | Get all exercises |
| GET | /exercises?muscle=&difficulty= | Filter exercises |
| GET | /exercises/{id} | Get a single exercise |
| GET | /sessions | Get workout sessions |
| POST | /sessions | Create a workout session |

---

## Running locally

1. Install dependencies

```bash
pip install -r requirements.txt
```

2. Create a `.env` file

```
DATABASE_URL=your_database_connection
```

3. Run the API

```bash
uvicorn main:app --reload
```

4. Open Swagger

```
http://127.0.0.1:8000/docs
```

