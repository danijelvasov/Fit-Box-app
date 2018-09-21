//
//  DataService.swift
//  fitboxApp
//
//  Created by Danijel Vasov on 9/20/18.
//  Copyright © 2018 OSX. All rights reserved.
//

import UIKit


struct ExercisesUpperBody {
    let upperBodyimages = ["bench","latpulldown", "chestpress", "cablerow"]
    let upperBodyExercisesList = ["Bench press","Lat pulldown", "Chest press", "Cable row"]
}

struct ExercisesLowerBody {
    let lowerBodyExercisesList = ["Squats", "Lunges"]
    var lowerBodyImages = ["squats", "lunges"]
}


struct UpperBodyExerciseDesc {
    let benchPressDescription = """
    Target muscles: Sternal (lower) Pectoralis Major
    Synergists: Clavicular (upper) Pectoralis Major, Anterior Deltoid, Triceps Brachii
    Mechanics: Compound
    Force: Push
    
    How to do it?

    - Lie supine (on your back) on a flat bench.
    - Spread your legs, bring your feet back, and place them firmly on the ground. Either your toes or your heels should be planted on the floor.
    - Arch your back.
    - Dismount the barbell using a grip that is a little over shoulder-width apart.
    - While holding the barbell, retract (push together) your shoulder blades and straighten your wrists.
    - Inhale as you lower the barbell to your chest, keeping your elbows tucked in at a 45-degree angle.
    - Exhale as you press the barbell back up to the starting position.
    - Repeat.

    Tips

    - Planting your feet, arching your back, tucking in your elbows, and straightening your wrists allow you to drive from your legs, through your body, and up through your arms—thus getting your entire body behind the press. Use this form to produce a strong foundation from which to press, increase your leverage, and give yourself a mechanical advantage.
    - Tucking in your elbows also reduces the pressure on your shoulders.
    - Never use a false grip. A false grip (aka thumbless or suicide grip) is when you don’t wrap your thumbs around the bar.
    - If lifting heavy weights, have a spotter ready.
    - Like the barbell squat and barbell deadlift, the barbell bench press is a major mass&strength-building exercise.
    """
    let latPulldownDescription = """
    Target muscle: Latissimus Dorsi
    Synergists: Brachialis, Brachioradialis, Biceps Brachii, Teres Major, Posterior Deltoid, Infraspinatus, Teres Minor, Rhomboids, Levator Scapulae, Middle and Lower Trapezius, Pectoralis Minor
    Mechanics: Compound
    Force: Pull

    How to do it?

    - Choose your weight and sit on the lat pull-down machine, adjusting it so that your thighs fit under the supports.
    - Grasp the bar with a pronated (overhand) grip, with your hands more than shoulder-width apart.
    - Exhale as you slowly pull the bar down until it touches the upper part of your chest.
    - Squeeze your shoulder blades together and hold for a count of two.
    - Inhale as you slowly return the bar to the starting position.
    - Repeat for the recommended number of repetitions.

    Tips

    - Pull the bar down with your elbows, not your biceps.
    - Keep your torso still.
    - Extend your arms fully on the return phase.
    - Do not pull the bar down behind your neck, as doing so will force you to bend your neck out of alignment with your spine as well as put your shoulder joint through an extreme range of motion—both of which increase the risk of injury.
    - The wide-grip lat pull-down is great for your teres major and upper lats. It widens them and gives you a v-taper. If you use a reverse (underhand) grip, you will emphasize your lower lats, giving you lats that run farther down your sides. Therefore, incorporate both variations.
    - Also known as the wide-grip cable pulldown.
    """
    let chestPressDescription = """
Target muscle: Sternal (Lower) Pectoralis Major
Synergists: Clavicular (Upper) Pectoralis Major, Anterior Deltoid, Triceps Brachii
Mechanics: compound
Force: Push

How to do it?

- Adjust the seat so that the handles are approximately chest height.
- Sit in the chest press machine with your back pressed firmly against the back rest.
- Grasp the handles with a pronated (overhand) grip.
- Plant your feet firmly on the ground.
- Exhale as you press the handles out until your arms are fully extended.
- Inhale as you reverse the motion until you feel a mild stretch in your chest.
- Repeat.

Tips

- To minimize the pressure on your shoulder joints, keep your elbows a little lower than your shoulders.
- Some chest press machines have a foot lever that will help you to push the handles forward from their resting positions, making them easier to grasp at the start of the exercise. Otherwise, you’d have to stretch your arms far back to grasp the handles. After you grasp the handles, you have to release the lever before starting to press. Once the set is over, you have to use the same foot lever to brace the handles and lower them back to their resting positions without having to stretch your arms far back.
- The machine chest press is great if you want to push very heavy weights with your chest but don’t have anyone to help you with the barbell bench press. Otherwise, the barbell bench press is favorable to the machine chest press. The reason is that the barbell bench press necessitates the recruitment of more stabilizer muscles. The machine chest press is also great for beginners, the elderly, and people undergoing rehabilitation.
"""
    let cableRowDescription = """
Target muscles: The back in general
Synergists: Erector Spinae, Middle and Lower Trapezius, Rhomboids, Latissimus Dorsi, Teres Major, Posterior Deltoid, Infraspinatus, Teres Minor, Brachialis, Brachioradialis, Pectoralis Major
Dynamic stabilizers (not highlighted): Biceps Brachii, Triceps Brachii (Long Head)
Mechanics: Compound
Force: Pull

How to do it?

- Sit facing the cable row machine and place your feet on the foot rests.
- Grasp the double-row bar and slide your bottom backward until your knees are almost straight. You torso should be leaning forward and your arms and shoulders should be stretching forward.
- Exhale as you slowly lean backward, straighten your back, and pull the v-bar to your abdomen, keeping your elbows close to your body. Pull your shoulders back and stick out your chest at the top of the movement.
- Hold for a count of two and squeeze your back muscles.
- Inhale as you slowly lean forward and return the double-row bar to the starting position, with your arms and shoulders stretching forward and your lower back bent forward.
- Repeat.

Tips

- Do not excessively arch your back.
- Pull with your elbows, not with your biceps.
- Avoid swinging your torso back and forth.
- Start light and add weight gradually to allow your lower back time to adapt.
- Many people think that your biceps acts as a synergist in rowing exercises such as the seated cable row. In fact, it only acts as a dynamic stabilizer, along with the long head of your triceps brachii.
- Most people will tell you to keep your back straight and your chest out throughout the seated cable row exercise. That’s known as the straight-back seated cable row. It’s a different exercise, which doesn’t dynamically work your erector spinae (spinal erectors). The exercise described above does dynamically work your spinal erectors.
"""
}

struct LowerBodyExerciseDesc {
    let squats = """
Target muscles: Gluteus Maximus, Quadriceps (Rectus femoris, Vastus lateralis, Vastus medialis, Vastus intermedius)
Synergists: Adductor Magnus, Soleus
Dynamic stabilizers (not highlighted): Hamstrings (Biceps Femoris, Semimembranosus, Semitendinosus), Gastrocnemius
Stabilizers (not highlighted): Erector Spinae, Rectus Abdominis, Obliques
Mechanics: Compound
Force: Push

How to do it?

- Load a barbell on a rack at upper-chest height.
- Step under the barbell so that it rests on the back of your shoulders, and grasp the bar at each side.
- Dismount the barbell and step backward carefully. Your feet should be shoulder-width apart and pointing slightly outwards.
- Inhale as you squat down by pushing your butt backward and bending your knees forward. Keep your torso upright, and descend at least until your knees are bent at a 90-degree angle.
- Exhale as you push your body back up to the starting position, driving from your heels and keeping your torso upright.
- Repeat.

Tips

- Keep your back straight, torso upright, head up, and feet flat.
- Keep your knees and feet pointing in the same direction.
- Practice proper barbell squat form with an unloaded barbell.
- Start light and add weight gradually, allowing your legs and lower back to adapt.
- If lifting heavy, have a spotter ready, or use a squat rack or power rack.
- The barbell squat is arguably the king of all exercises, the only challenger being the barbell deadlift. The exercise is loved by men because it is great at strengthening the legs and core, shocking the body into releasing testosterone, and promoting the development of body-wide muscle and strength. The exercise is loved by women because it is very effective at toning butts and thighs.
- Most barbell squat-related accidents happen while stepping back with the barbell.
"""
    let lunges = """
Target muscles: Gluteus Maximus, Quadriceps (Vastus Lateralis, Vastus Medialis, Vastus Intermedius, Rectus Femoris)
Synergists: Adductor Magnus, Soleus
Dynamic stabilizers (not highlighted): Hamstrings, Gastrocnemius
Mechanics: Compound
Force: Push

How to do it?

- Stand with feet together, holding a dumbbell in each hand, with your arms by your sides.
- Inhale as you take a large step forward with one leg, landing on your heel first and then lowering your forefoot.
- At the same time, keeping your torso upright, lower your body until the knee of your supporting leg almost touches the floor.
- Exhale as you drive back up with your heel and step back into the starting position.
- Repeat with your opposite leg.
- Keep alternating the leg with which you lunge.

Tips

- Keep your torso upright, and your head, feet, and knees facing forward.
- Keep the dumbbells by your sides or a little behind you, which can help with balance.
- As you lower yourself into a kneeling position, do not allow your front knee to move in front of your toes.
- The larger your lunge, the more emphasis you will place on your gluteus maximus instead of your quadriceps.
- The dumbbell lunge is a very beneficial exercise that helps you to develop balance, coordination, and the unilateral (one-sided) functional strength of your lower body.
"""
    
}

