from models.ruben_models import Exercise

exercises = [

    Exercise(
        id=1,
        name="Bench Press",
        muscle="Chest",
        difficulty="Intermediate",
        equipment="Barbell",
        description="Compound chest exercise."
    ),

    Exercise(
        id=2,
        name="Pull-Up",
        muscle="Back",
        difficulty="Advanced",
        equipment="Pull-Up Bar",
        description="Vertical pulling exercise."
    ),

    Exercise(
        id=3,
        name="Squat",
        muscle="Legs",
        difficulty="Intermediate",
        equipment="Barbell",
        description="Compound leg exercise."
    )

]


def get_all_exercises():
    return exercises


def get_filtered_exercises(muscle=None, difficulty=None):

    filtered = exercises

    if muscle:
        filtered = [
            exercise
            for exercise in filtered
            if exercise.muscle.lower() == muscle.lower()
        ]

    if difficulty:
        filtered = [
            exercise
            for exercise in filtered
            if exercise.difficulty.lower() == difficulty.lower()
        ]

    return filtered


def create_workout_session(workout_id):

    return {

        "message": f"Workout {workout_id} started successfully."

    }

def get_exercise_by_id(exercise_id: int):

    for exercise in exercises:
        if exercise.id == exercise_id:
            return exercise

    return None