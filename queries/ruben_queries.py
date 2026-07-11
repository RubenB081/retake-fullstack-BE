from models.ruben_models import Exercise

exercises = [

    Exercise(
    id=1,
    name="Bench Press",
    muscle="Chest",
    difficulty="Intermediate",
    equipment="Barbell, flat bench",
    description="The standard upper body press. Build raw chest, tricep, and front delt mass.",
    instructions="1. Lie flat on the bench and grip the barbell slightly wider than shoulder width.<br>2. Squeeze your shoulder blades, arch your back slightly, and keep feet flat on the floor.<br>3. Unrack the bar,lower it controlled to mid-chest level.<br>4. Push upward forcefully until arms are locked out.",
    safety="Keep your shoulder blades retracted and elbows tucked to roughly 45 degrees to avoid excessive rotatory shoulder stress. Always use a spotter when lifting heavy."
),

    Exercise(
    id=2,
    name="Incline Dumbbell Fly",
    muscle="Chest",
    difficulty="Intermediate",
    equipment="Dumbbells, Incline Bench (30-45 degrees)",
    description="Isolate the chest fibers from a stretched incline posture, targeting upper clavicular fibers.",
    instructions="1. Set an incline bench to 30-45 degrees.<br>2. Hold dumbbells above your chest with palms facing each other, elbows slightly bent.<br>3. Lower weights out in a wide arc until you feel a comfortable stretch in your chest.<br>4. Bring the dumbbells back together at the top, focusing on squeezing chest muscles.",
    safety="Do not overextend your arms at the bottom of the movement. Maintain a consistent, slight bend in the elbows to protect joint linings."
    ),

    Exercise(
    id=3,
    name="Barbell Back Squat",
    muscle="Legs",
    difficulty="Advanced",
    equipment="Barbell, squat rack",
    description="The king of lower body movements. Promotes leg thickness, glute strength, and power.",
    instructions="1. Rest the bar on your upper traps. Squeeze shoulder blades together.<br>2. Step back, set feet shoulder-width apart, toes pointed slightly outward.<br>3. Keep chest up, hinge at hips, and bend knees to squat down until thighs are parallel to floor or lower.<br>4. Drive through the mid-foot to return to starting position.",
    safety="Maintain a neutral spine throughout. Ensure your knees follow the direction of your toes and do not cave inward during the drive phase."
    ),

    Exercise(
    id=4,
    name="Romanian Deadlift (RDL)",
    muscle="Legs",
    difficulty="Intermediate",
    equipment="Barbell or Dumbbells",
    description="Build exceptional hamstring, glute, and spinal erector thickness using hinge mechanics.",
    instructions="1. Stand with feet hip-width apart, holding the bar in front of thighs.<br>2. Initiate by pushing hips back, bending knees slightly (15-20 degrees).<br>3. Lower the barbell down your shins while maintaining a flat back, feeling a deep stretch in hamstrings.<br>4. Contract your glutes and push hips forward to return to standing.",
    safety="Keep the bar close to your body throughout the movement. Do not round the lower back; if flexibility is limited, only lower the bar to knee-level."
    ),

    Exercise(
    id=5,
    name="Overhead Dumbbell Press",
    muscle="Shoulders",
    difficulty="Beginner",
    equipment="Dumbbells, Seated Bench",
    description="Develop strong, rounded anterior and lateral deltoids in a stable seated position.",
    instructions="1. Sit on a bench with vertical support, holding dumbbells at shoulder level with palms facing out.<br>2. Press dumbbells straight up overhead until arms are extended, but do not slam elbows.<br>3. Lower dumbbells under control back to ear level and repeat.",
    safety="Keep your core braced and lower back pressed flat against the bench pad. Avoid arching your back excessively."
    ),

    Exercise(
    id=6,
    name="Lateral Dumbbell Raise",
    muscle="Shoulders",
    difficulty="Beginner",
    equipment="Dumbbells",
    description="Focus on the lateral deltoid head to widen the shoulder profile and enhance V-taper.",
    instructions="1. Stand tall holding dumbbells at your sides, palms facing inward.<br>2. Lean forward a microscopic degree, then raise dumbbells out to your sides.<br>3. Keep a very slight bend in elbows, leading the movement with your elbows.<br>4. Stop once arms are parallel to floor, then control the descent.",
    safety="Avoid swinging your body or using momentum to lift the weights. Focus on raising dumbbells laterally rather than pulling them upward."
    ),

    Exercise(
    id=7,
    name="Barbell Row",
    muscle="Back",
    difficulty="Intermediate",
    equipment="Barbell",
    description="Build lat and upper back thickness using standard bent-over row patterns.",
    instructions="1. Grip the barbell with an overhand grip slightly wider than shoulder-width.<br>2. Hinge forward at your hips to approximately 45 degrees, keeping back straight.<br>3. Pull the bar to your lower rib cage, driving your elbows back behind your torso.<br>4. Lower the weight under control until arms are fully extended.",
    safety="Keep your knees slightly bent to stabilize the pelvis. Do not swing your hips or use torso momentum to yank the bar upward."
    ),

    Exercise(
    id=8,
    name="Lat Pulldown",
    muscle="Back",
    difficulty="Beginner",
    equipment="Cable Lat Pulldown Machine",
    description="Target the latissimus dorsi to develop upper back width and structural symmetry.",
    instructions="1. Sit at the machine and adjust the thigh pad to lock yourself in.<br>2. Grab the bar with a wide overhand grip.<br>3. Lean back slightly, pull the bar down to your upper chest while leading with your elbows.<br>4. Slowly return the bar to the top, fully extending your lats.",
    safety="Keep your chest tall and pull from the shoulder blades first, not from your hands. Avoid leaning back excessively (no more than 15-20 degrees)."
    ),

    Exercise(
    id=9,
    name="Incline Dumbbell Curl",
    muscle="Biceps",
    difficulty="Beginner",
    equipment="Dumbbells, Incline Bench",
    description="Targets the long head of the biceps by placing it in an extended, stretched position.",
    instructions="1. Lie back on an incline bench set to 45 degrees, dumbbells hanging straight down.<br>2. Keep elbows pinned in, rotate palms forward, and curl the dumbbells up.<br>3. Squeeze biceps at the top, then lower the weights slowly back to dead-hang.",
    safety="Keep your shoulders back and elbows fixed behind your torso line. Do not swing your arms or push elbows forward."
    ),

    Exercise(
    id=10,
    name="Lying Tricep Extension",
    muscle="Triceps",
    difficulty="Intermediate",
    equipment="EZ Bar or Dumbbells, Flat Bench",
    description="Build massive tricep lateral and long heads using overhead arm flexion extension paths.",
    instructions="1. Lie flat on a bench, hold an EZ bar directly above your chest with a narrow grip.<br>2. Flex at the elbows, lowering the bar toward your forehead or slightly behind it.<br>3. Keep elbows narrow and pointed straight up. Do not let them flare out.<br>4. Push back up to starting position using triceps.",
    safety="Control the descent of the bar near your forehead. Focus on moving only at the elbow joint; do not swing at the shoulder."
    ),

    Exercise(
    id=11,
    name="Hanging Leg Raise",
    muscle="Core",
    difficulty="Advanced",
    equipment="Pull-up Bar",
    description="Target the lower rectus abdominis and deep hip flexors with zero spinal compression.",
    instructions="1. Hang from a pull-up bar with an overhand grip, arms and legs extended straight down.<br>2. Keeping your legs straight, contract your abs and raise them until they are parallel to the floor.<br>3. Lower legs slowly to starting position under full muscular control.",
    safety="Avoid using momentum or swinging your body back and forth to lift your legs. If straight legs are too difficult, bend knees to 90 degrees."
    ),

    Exercise(
    id=12,
    name="Plank",
    muscle="Core",
    difficulty="Beginner",
    equipment="Bodyweight",
    description="Build static core endurance, deep transverse abdominis strength, and pelvic stability.",
    instructions="1. Place forearms on the floor, elbows aligned under shoulders, feet hip-width apart.<br>2. Lift hips off floor until your body forms a completely straight line from head to heels.<br>3. Engage your core, squeeze glutes, and hold this static position.<br>4. Breathe steadily and maintain the position for the desired duration.",
    safety="Do not let your lower back sag down or hips hike upward. Keep your gaze downward to maintain a neutral neck alignment."
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