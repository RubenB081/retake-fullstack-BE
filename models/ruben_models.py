from pydantic import BaseModel


class Exercise(BaseModel):
    id: int
    name: str
    muscle: str
    difficulty: str
    equipment: str
    description: str
    instructions: str
    safety: str 


class WorkoutSession(BaseModel):
    workout_id: int