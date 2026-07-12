DROP TABLE IF EXISTS workout_exercises;
DROP TABLE IF EXISTS workouts;
DROP TABLE IF EXISTS exercises;

CREATE TABLE exercises (
    id SERIAL PRIMARY KEY,
    name VARCHAR(100) NOT NULL,
    muscle VARCHAR(30) NOT NULL,
    difficulty VARCHAR(20) NOT NULL,
    equipment VARCHAR(100) NOT NULL,
    description TEXT NOT NULL,
    instructions TEXT NOT NULL,
    safety TEXT NOT NULL
);

CREATE TABLE workouts (
    id SERIAL PRIMARY KEY,
    workout_id INTEGER NOT NULL,
    started_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP

);

INSERT INTO exercises
(name, muscle, difficulty, equipment, description, instructions, safety)
VALUES
(
'Bench Press',
'Chest',
'Intermediate',
'Barbell, flat bench',
'The standard upper body press. Build raw chest, tricep, and front delt mass.',
'1. Lie flat on the bench and grip the barbell slightly wider than shoulder width.<br>2. Squeeze your shoulder blades, arch your back slightly, and keep feet flat on the floor.<br>3. Unrack the bar,lower it controlled to mid-chest level.<br>4. Push upward forcefully until arms are locked out.',
'Keep your shoulder blades retracted and elbows tucked to roughly 45 degrees to avoid excessive rotatory shoulder stress. Always use a spotter when lifting heavy.'
),
(
'Incline Dumbbell Fly',
'Chest',
'Intermediate',
'Dumbbells, Incline Bench (30-45 degrees)',
'Isolate the chest fibers from a stretched incline posture, targeting upper clavicular fibers.',
'1. Set an incline bench to 30-45 degrees.<br>2. Hold dumbbells above your chest with palms facing each other, elbows slightly bent.<br>3. Lower weights out in a wide arc until you feel a comfortable stretch in your chest.<br>4. Bring the dumbbells back together at the top, focusing on squeezing chest muscles.',
'Do not overextend your arms at the bottom of the movement. Maintain a consistent, slight bend in the elbows to protect joint linings.'
),
(
'Barbell Back Squat',
'Legs',
'Advanced',
'Barbell, squat rack',
'The king of lower body movements. Promotes leg thickness, glute strength, and power.',
'1. Rest the bar on your upper traps. Squeeze shoulder blades together.<br>2. Step back, set feet shoulder-width apart, toes pointed slightly outward.<br>3. Keep chest up, hinge at hips, and bend knees to squat down until thighs are parallel to floor or lower.<br>4. Drive through the mid-foot to return to starting position.',
'Maintain a neutral spine throughout. Ensure your knees follow the direction of your toes and do not cave inward during the drive phase.'
),
(
'Romanian Deadlift (RDL)',
'Legs',
'Intermediate',
'Barbell or Dumbbells',
'Build exceptional hamstring, glute, and spinal erector thickness using hinge mechanics.',
'1. Stand with feet hip-width apart, holding the bar in front of thighs.<br>2. Initiate by pushing hips back, bending knees slightly (15-20 degrees).<br>3. Lower the barbell down your shins while maintaining a flat back, feeling a deep stretch in hamstrings.<br>4. Contract your glutes and push hips forward to return to standing.',
'Keep the bar close to your body throughout the movement. Do not round the lower back; if flexibility is limited, only lower the bar to knee-level.'      
),
(
'Overhead Dumbbell Press',
'Shoulders',
'Beginner',
'Dumbbells, Seated Bench',
'Develop strong, rounded anterior and lateral deltoids in a stable seated position.',
'1. Sit on a bench with vertical support, holding dumbbells at shoulder level with palms facing out.<br>2. Press dumbbells straight up overhead until arms are extended, but do not slam elbows.<br>3. Lower dumbbells under control back to ear level and repeat.',
'Keep your core braced and lower back pressed flat against the bench pad. Avoid arching your back excessively.'
),
(
'Lateral Dumbbell Raise',
'Shoulders',
'Beginner',
'Dumbbells',
'Focus on the lateral deltoid head to widen the shoulder profile and enhance V-taper.',
'1. Stand tall holding dumbbells at your sides, palms facing inward.<br>2. Lean forward a microscopic degree, then raise dumbbells out to your sides.<br>3. Keep a very slight bend in elbows, leading the movement with your elbows.<br>4. Stop once arms are parallel to floor, then control the descent.',
'Avoid swinging your body or using momentum to lift the weights. Focus on raising dumbbells laterally rather than pulling them upward.'   
),
(
'Barbell Row',
'Back',
'Intermediate',
'Barbell',
'Build lat and upper back thickness using standard bent-over row patterns.',
'1. Grip the barbell with an overhand grip slightly wider than shoulder-width.<br>2. Hinge forward at your hips to approximately 45 degrees, keeping back straight.<br>3. Pull the bar to your lower rib cage, driving your elbows back behind your torso.<br>4. Lower the weight under control until arms are fully extended.',
'Keep your knees slightly bent to stabilize the pelvis. Do not swing your hips or use torso momentum to yank the bar upward.'    
),
(
'Lat Pulldown',
'Back',
'Beginner',
'Cable Lat Pulldown Machine',
'Target the latissimus dorsi to develop upper back width and structural symmetry.',
'1. Sit at the machine and adjust the thigh pad to lock yourself in.<br>2. Grab the bar with a wide overhand grip.<br>3. Lean back slightly, pull the bar down to your upper chest while leading with your elbows.<br>4. Slowly return the bar to the top, fully extending your lats.',
'Keep your chest tall and pull from the shoulder blades first, not from your hands. Avoid leaning back excessively (no more than 15-20 degrees).'    
),
(
'Incline Dumbbell Curl',
'Biceps',
'Beginner',
'Dumbbells, Incline Bench',
'Targets the long head of the biceps by placing it in an extended, stretched position.',
'1. Lie back on an incline bench set to 45 degrees, dumbbells hanging straight down.<br>2. Keep elbows pinned in, rotate palms forward, and curl the dumbbells up.<br>3. Squeeze biceps at the top, then lower the weights slowly back to dead-hang.',
'Keep your shoulders back and elbows fixed behind your torso line. Do not swing your arms or push elbows forward.'
),
(
'Lying Tricep Extension',
'Triceps',
'Intermediate',
'EZ Bar or Dumbbells, Flat Bench',
'Build massive tricep lateral and long heads using overhead arm flexion extension paths.',
'1. Lie flat on a bench, hold an EZ bar directly above your chest with a narrow grip.<br>2. Flex at the elbows, lowering the bar toward your forehead or slightly behind it.<br>3. Keep elbows narrow and pointed straight up. Do not let them flare out.<br>4. Push back up to starting position using triceps.',
'Control the descent of the bar near your forehead. Focus on moving only at the elbow joint; do not swing at the shoulder.'  
),
(
'Hanging Leg Raise',
'Core',
'Advanced',
'Pull-up Bar',
'Target the lower rectus abdominis and deep hip flexors with zero spinal compression.',
'1. Hang from a pull-up bar with an overhand grip, arms and legs extended straight down.<br>2. Keeping your legs straight, contract your abs and raise them until they are parallel to the floor.<br>3. Lower legs slowly to starting position under full muscular control.',
'Avoid using momentum or swinging your body back and forth to lift your legs. If straight legs are too difficult, bend knees to 90 degrees.'    
),
(
'Plank',
'Core',
'Beginner',
'Bodyweight',
'Build static core endurance, deep transverse abdominis strength, and pelvic stability.',
'1. Place forearms on the floor, elbows aligned under shoulders, feet hip-width apart.<br>2. Lift hips off floor until your body forms a completely straight line from head to heels.<br>3. Engage your core, squeeze glutes, and hold this static position.<br>4. Breathe steadily and maintain the position for the desired duration.',
'Do not let your lower back sag down or hips hike upward. Keep your gaze downward to maintain a neutral neck alignment.'    
),
(
'Tricep Pushdown',
'Triceps',
'Beginner',
'Cable Machine, Straight Bar',
'Isolate the triceps through a controlled cable movement, improving arm strength and lockout power.',
'1. Stand upright facing the cable machine and grip the bar with palms facing down.<br>2. Keep your elbows tucked close to your sides throughout the movement.<br>3. Push the bar downward until your arms are fully extended.<br>4. Slowly return the bar to the starting position while maintaining control.',
'Avoid using momentum or allowing your elbows to flare outward. Keep your upper arms stationary throughout the exercise.'    
),
(
'Leg Extension',
'Legs',
'Beginner',
'Leg Extension Machine',
'Target the quadriceps with isolated knee extension to improve leg strength and muscular definition.',
'1. Sit with your knees aligned to the machine''s pivot point.<br>2. Place your ankles behind the padded roller.<br>3. Extend your legs until almost fully straight.<br>4. Lower the weight slowly back to the starting position.',
'Do not lock your knees aggressively at the top. Use a controlled tempo and avoid excessive weight.'    
),
(
'Standing Calf Raise',
'Legs',
'Beginner',
'Calf Raise Machine',
'Develop stronger and more defined calves through a full range of ankle movement.',
'1. Position the balls of your feet on the platform with heels hanging off.<br>2. Lower your heels until you feel a stretch in your calves.<br>3. Push through your toes to raise your heels as high as possible.<br>4. Slowly return to the stretched position.',
'Avoid bouncing at the bottom of the movement. Perform each repetition with a full range of motion.'    
),
(
'Pull-Up',
'Back',
'Advanced',
'Pull-Up Bar',
'Build upper-body pulling strength while targeting the lats, upper back, and biceps.',
'1. Grip the pull-up bar slightly wider than shoulder-width.<br>2. Hang with arms fully extended and engage your core.<br>3. Pull your chest toward the bar by driving your elbows downward.<br>4. Lower yourself under control until your arms are fully extended.',
'Avoid swinging your body or using excessive momentum. Keep your shoulders engaged throughout the movement.'    
),
(
'Push-Up',
'Chest',
'Beginner',
'Bodyweight',
'A classic bodyweight exercise for developing chest, shoulders, triceps, and core stability.',
'1. Place your hands slightly wider than shoulder-width apart.<br>2. Maintain a straight body line from head to heels.<br>3. Lower your chest toward the floor until your elbows reach roughly 90 degrees.<br>4. Push back up until your arms are fully extended.',
'Do not allow your hips to sag or flare your elbows excessively. Maintain a neutral spine throughout.'    
),
(
'Incline Chest Press',
'Chest',
'Intermediate',
'Incline Bench, Dumbbells',
'Emphasize the upper chest while also recruiting the front shoulders and triceps.',
'1. Set an incline bench to approximately 30–45 degrees.<br>2. Press the dumbbells upward until your arms are nearly straight.<br>3. Lower the weights slowly until your elbows are slightly below shoulder level.<br>4. Repeat while maintaining control.',
'Avoid arching your lower back excessively. Keep your wrists stacked over your elbows.'    
),
(
'Hammer Curl',
'Biceps',
'Beginner',
'Dumbbells',
'Strengthen the brachialis and brachioradialis while building overall arm thickness.',
'1. Hold dumbbells with a neutral grip at your sides.<br>2. Curl the weights upward without rotating your wrists.<br>3. Squeeze your biceps at the top of the movement.<br>4. Lower the dumbbells under control.',
'Keep your elbows close to your torso and avoid swinging the weights to generate momentum.'    
),
(
'Preacher Curl',
'Biceps',
'Intermediate',
'Preacher Bench, EZ Bar',
'Isolate the biceps by eliminating momentum and maximizing muscle tension.',
'1. Rest your upper arms firmly on the preacher pad.<br>2. Curl the weight upward until your forearms are nearly vertical.<br>3. Squeeze the biceps briefly at the top.<br>4. Lower the weight slowly to full extension.',
'Do not bounce the weight off the bottom position. Maintain controlled movement throughout.'    
),
(
'Face Pull',
'Shoulders',
'Beginner',
'Cable Machine, Rope Attachment',
'Improve shoulder health and posture by strengthening the rear deltoids and upper back.',
'1. Set the cable at upper chest height and attach a rope.<br>2. Pull the rope toward your face while flaring your elbows outward.<br>3. Squeeze your shoulder blades together.<br>4. Slowly return to the starting position.',
'Avoid shrugging your shoulders. Focus on pulling with your rear delts and upper back.'    
),
(
'Leg Press',
'Legs',
'Intermediate',
'Leg Press Machine',
'Develop lower-body strength with a stable compound movement targeting the quadriceps and glutes.',
'1. Place your feet shoulder-width apart on the platform.<br>2. Lower the sled until your knees reach roughly 90 degrees.<br>3. Push the platform back up without locking your knees.<br>4. Repeat with controlled movement.',
'Keep your lower back against the pad and avoid allowing your knees to collapse inward.'    
),
(
'Seated Leg Curl',
'Legs',
'Beginner',
'Leg Curl Machine',
'Isolate the hamstrings through controlled knee flexion to improve posterior leg strength.',
'1. Sit with your knees aligned to the machine''s pivot point.<br>2. Curl the padded roller downward using your hamstrings.<br>3. Pause briefly at peak contraction.<br>4. Slowly return to the starting position.',
'Avoid lifting your hips from the seat or using momentum to complete repetitions.'    
),
(
'Sit-Up',
'Core',
'Beginner',
'Bodyweight',
'Strengthen the abdominal muscles while improving trunk flexion and endurance.',
'1. Lie on your back with knees bent and feet secured or flat on the floor.<br>2. Brace your core before beginning the movement.<br>3. Curl your torso upward until your chest approaches your thighs.<br>4. Lower yourself slowly back to the floor.',
'Avoid pulling excessively on your neck with your hands. Keep the movement controlled.'    
),
(
'Bayesian Curl',
'Biceps',
'Intermediate',
'Cable Machine, Single Handle',
'Maintain constant tension on the biceps by curling from a stretched cable position.',
'1. Attach a single handle to a low pulley and face away from the machine.<br>2. Step forward until your arm is extended slightly behind your body.<br>3. Curl the handle toward your shoulder while keeping your elbow fixed.<br>4. Slowly lower the handle back to the stretched position.',
'Do not let your elbow drift forward during the curl. Maintain tension throughout the entire range of motion.'    
),
(
'Conventional Deadlift',
'Back',
'Advanced',
'Barbell',
'Develop total-body strength while emphasizing the posterior chain, grip, and spinal stability.',
'1. Stand with feet hip-width apart and the bar over the middle of your feet.<br>2. Grip the bar just outside your legs and brace your core.<br>3. Drive through your heels while extending your hips and knees simultaneously.<br>4. Lower the bar back to the floor under full control.',
'Maintain a neutral spine throughout the lift and avoid rounding your lower back. Keep the bar close to your body during the entire movement.'    
),
(
'Bulgarian Split Squat',
'Legs',
'Intermediate',
'Bench, Dumbbells',
'Improve unilateral leg strength, balance, and glute development through an elevated split squat.',
'1. Place one foot behind you on a bench.<br>2. Lower your body by bending your front knee until your thigh is nearly parallel to the floor.<br>3. Push through your front heel to return to the starting position.<br>4. Complete all repetitions before switching legs.',
'Keep your front knee tracking over your toes and avoid pushing off excessively with the rear leg.'    
),
(
'Seated Cable Row',
'Back',
'Intermediate',
'Cable Row Machine',
'Build back thickness by strengthening the lats, rhomboids, and middle trapezius through horizontal pulling.',
'1. Sit upright with your feet braced against the platform.<br>2. Pull the handle toward your lower chest while squeezing your shoulder blades together.<br>3. Pause briefly at full contraction.<br>4. Slowly extend your arms back to the starting position.',
'Avoid leaning excessively backward or using momentum. Control both the pulling and lowering phases.'    
),
(
'Machine Chest Press',
'Chest',
'Beginner',
'Chest Press Machine',
'Develop chest strength safely with a guided pressing movement that minimizes stability demands.',
'1. Adjust the seat so the handles are level with your chest.<br>2. Press the handles forward until your arms are nearly straight.<br>3. Pause briefly before returning under control.<br>4. Maintain steady breathing throughout each repetition.',
'Do not lock your elbows aggressively. Keep your shoulders retracted against the back pad.'
),
(
'Hip Thrust',
'Legs',
'Intermediate',
'Barbell, Bench',
'Maximize glute strength and hip extension power while improving lower-body performance.',
'1. Rest your upper back against a bench with the barbell positioned across your hips.<br>2. Drive through your heels to raise your hips until your body forms a straight line from shoulders to knees.<br>3. Squeeze your glutes at the top.<br>4. Lower your hips slowly back to the starting position.',
'Avoid hyperextending your lower back at the top. Keep your chin tucked and ribs down throughout the movement.'    
)
;
