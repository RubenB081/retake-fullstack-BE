from fastapi import APIRouter
from models.ruben_models import WorkoutSession
from fastapi import HTTPException
from queries.ruben_queries import (
    get_all_exercises,
    get_filtered_exercises,
    get_exercise_by_id,
    create_workout_session
)
router = APIRouter()


@router.get("/exercises")
def exercises(
    muscle: str | None = None,
    difficulty: str | None = None
):

    if muscle or difficulty:
        return get_filtered_exercises(muscle, difficulty)

    return get_all_exercises()


@router.post("/sessions")
def start_session(session: WorkoutSession):

    return create_workout_session(session.workout_id)

@router.get("/exercises/{exercise_id}")
def exercise(exercise_id: int):

    exercise = get_exercise_by_id(exercise_id)

    if exercise is None:
        raise HTTPException(
            status_code=404,
            detail="Exercise not found."
        )

    return exercise