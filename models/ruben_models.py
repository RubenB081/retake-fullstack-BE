from pydantic import BaseModel


class Exercise(BaseModel):
    id: int
    name: str
    muscle: str
    difficulty: str
    equipment: str
    description: str

    instructions: str

    sets: int

    reps: str

    image: str


class WorkoutSession(BaseModel):
    workout_id: int