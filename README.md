# ForgeFit API

Backend API for the ForgeFit Full Stack application.

## Author

- Ruben Broeckx
- Student Number: r0841536
- Class: 1ITF03

---

## Technologies

- Python
- FastAPI
- PostgreSQL
- Neon Database
- Psycopg

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