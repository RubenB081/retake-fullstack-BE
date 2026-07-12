import psycopg
from database import get_connection

def get_all_exercises():

    conn = get_connection()

    cursor = conn.cursor(
        row_factory=psycopg.rows.dict_row
    )

    cursor.execute("""
        SELECT *
        FROM exercises
        ORDER BY id;
    """)

    exercises = cursor.fetchall()

    cursor.close()
    conn.close()

    return exercises


def get_filtered_exercises(muscle=None, difficulty=None):

    conn = get_connection()

    cursor = conn.cursor(
        row_factory=psycopg.rows.dict_row
    )

    query = """
        SELECT *
        FROM exercises
        WHERE 1=1
    """

    values = []

    if muscle:
        query += " AND LOWER(muscle) = LOWER(%s)"
        values.append(muscle)

    if difficulty:
        query += " AND LOWER(difficulty) = LOWER(%s)"
        values.append(difficulty)

    query += " ORDER BY id;"

    cursor.execute(query, values)

    exercises = cursor.fetchall()

    cursor.close()
    conn.close()

    return exercises


def create_workout_session(workout_id):

    conn = get_connection()

    cursor = conn.cursor(
        row_factory=psycopg.rows.dict_row
    )

    cursor.execute(
        """
        INSERT INTO workouts(workout_id)
        VALUES (%s)
        RETURNING id, workout_id, started_at;
        """,
        (workout_id,)
    )

    workout = cursor.fetchone()

    conn.commit()

    cursor.close()
    conn.close()

    return workout

def get_exercise_by_id(exercise_id: int):

    conn = get_connection()

    cursor = conn.cursor(
        row_factory=psycopg.rows.dict_row
    )

    cursor.execute("""
        SELECT *
        FROM exercises
        WHERE id = %s;
    """, (exercise_id,))

    exercise = cursor.fetchone()

    cursor.close()
    conn.close()

    return exercise

def get_all_sessions():

    conn = get_connection()

    cursor = conn.cursor(
        row_factory=psycopg.rows.dict_row
    )

    cursor.execute("""
        SELECT *
        FROM workouts
        ORDER BY started_at DESC;
    """)

    sessions = cursor.fetchall()

    cursor.close()
    conn.close()

    return sessions