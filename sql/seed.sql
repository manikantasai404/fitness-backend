UPDATE fitness.foods
SET how_to_cook = CASE id
  WHEN 1 THEN 'Paneer Salad: 1. Cut 200g paneer into small cubes. 2. Wash and chop 1 cup mixed salad greens (lettuce, spinach, arugula), 1 tomato, and 1 cucumber into bite-sized pieces. 3. In a large bowl, combine the paneer and vegetables. 4. Drizzle with 1 tablespoon olive oil and 1 teaspoon lemon juice. 5. Season with salt and pepper, and toss gently. 6. Optionally, sprinkle a pinch of chaat masala for extra flavor. 7. Serve fresh chilled.'
  WHEN 2 THEN 'Grilled Chicken Breast: 1. Take 200g boneless chicken breast and pat dry with paper towels. 2. Marinate with 1 tablespoon olive oil, salt, pepper, garlic powder, and lemon juice for 30 minutes. 3. Preheat the grill or a heavy skillet over medium-high heat. 4. Grill the chicken for 6-8 minutes on each side until fully cooked and juices run clear. 5. Let the chicken rest for 5 minutes before slicing into strips. 6. Serve with a side of steamed vegetables or salad.'
  WHEN 3 THEN 'Tofu Stir-Fry: 1. Press 200g firm tofu to remove excess water, then cut into 1-inch cubes. 2. Heat 2 teaspoons vegetable oil in a wok over medium-high heat. 3. Add tofu cubes and fry until golden on all sides, about 5-6 minutes; then remove and set aside. 4. In the same wok, add 1 teaspoon minced garlic and 1 teaspoon minced ginger; stir-fry for 30 seconds. 5. Add mixed vegetables (e.g., bell peppers, broccoli, carrots) and stir-fry for 4-5 minutes. 6. Return the tofu to the wok, add 2 tablespoons soy sauce, and stir-fry for another 2 minutes. 7. Serve hot with steamed rice or noodles.'
  WHEN 4 THEN 'Lentil Soup: 1. Rinse 1 cup red lentils thoroughly and drain. 2. In a large pot, heat 1 tablespoon olive oil over medium heat; add 1 finely chopped onion and sauté until translucent. 3. Add 2 minced garlic cloves and 1 teaspoon cumin seeds, and stir for 1 minute. 4. Add the lentils, 4 cups vegetable broth, and 1 chopped tomato. 5. Bring to a boil, then reduce the heat and simmer for 25-30 minutes until the lentils are soft. 6. Season with salt, pepper, and a pinch of turmeric. 7. For a creamier texture, blend half of the soup and mix it back in. 8. Garnish with fresh coriander and serve warm.'
  WHEN 5 THEN 'Mixed Vegetable Curry: 1. Wash and chop 1 cup assorted vegetables (cauliflower, carrots, green beans, potatoes) into bite-sized pieces. 2. Heat 2 teaspoons oil in a deep pan and add 1 teaspoon cumin seeds; let them sizzle. 3. Add 1 finely chopped onion and sauté until golden brown. 4. Stir in 2 minced garlic cloves and 1 teaspoon grated ginger; cook for 1 minute. 5. Add 1 large chopped tomato and cook until soft. 6. Add spices – ½ teaspoon turmeric, 1 teaspoon coriander powder, ½ teaspoon red chili powder, and salt to taste. 7. Add the chopped vegetables and mix well. 8. Pour in 1 cup water, cover, and simmer for 15-20 minutes until the vegetables are tender. 9. Garnish with fresh coriander and serve with rice or roti.'
  WHEN 6 THEN 'Chickpea Salad: 1. Drain and rinse 1 can (400g) chickpeas thoroughly. 2. Dice 1 cucumber, 1 tomato, and 1 small red onion finely. 3. In a large bowl, combine the chickpeas and chopped vegetables. 4. Add 2 tablespoons olive oil, the juice of 1 lemon, salt, and pepper to taste. 5. Toss well and refrigerate for 15 minutes before serving to allow flavors to meld.'
  WHEN 7 THEN 'Spinach Salad: 1. Wash 2 cups fresh spinach leaves thoroughly and pat dry. 2. Slice 1 medium cucumber and 1 large tomato into thin rounds. 3. In a salad bowl, combine the spinach, cucumber, and tomato. 4. Drizzle with 1 tablespoon olive oil and 1 teaspoon balsamic vinegar. 5. Season with salt and pepper. 6. Toss gently and top with a few crumbled feta cheese cubes if desired.'
  WHEN 8 THEN 'Quinoa Salad: 1. Rinse 1 cup quinoa under cold water. 2. In a saucepan, combine quinoa with 2 cups water, bring to a boil, then cover and simmer for 15 minutes until water is absorbed. 3. Let the quinoa cool, then transfer to a large bowl. 4. Add ½ cup diced bell peppers, ½ cup chopped cucumber, and ½ cup halved cherry tomatoes. 5. Dress with 2 tablespoons olive oil, the juice of 1 lemon, salt, and pepper to taste. 6. Toss well and garnish with chopped parsley.'
  WHEN 9 THEN 'Broccoli Soup: 1. Cut 2 cups broccoli florets from a head of broccoli and wash thoroughly. 2. In a pot, heat 1 tablespoon olive oil and sauté 1 chopped onion until soft. 3. Add 2 minced garlic cloves and cook for another minute. 4. Add the broccoli florets and 3 cups vegetable broth; bring to a boil, then simmer for 10-12 minutes until the broccoli is tender. 5. Use an immersion blender to blend the soup until smooth, or transfer in batches to a blender. 6. Season with salt and pepper, and optionally stir in a splash of cream. 7. Serve hot with a garnish of fresh basil.'
  WHEN 10 THEN 'Vegetable Stir-Fry: 1. Wash and cut 2 cups mixed vegetables (carrots, bell peppers, broccoli, snap peas) into bite-sized pieces. 2. Heat 2 tablespoons vegetable oil in a wok or large pan over high heat. 3. Add 2 minced garlic cloves and stir-fry for 30 seconds until fragrant. 4. Add the vegetables and stir-fry for 5-7 minutes until they are crisp-tender. 5. Drizzle with 2 tablespoons soy sauce and 1 teaspoon sesame oil. 6. Toss everything well and serve immediately, garnished with toasted sesame seeds.'
WHEN 11 THEN 'Grilled Salmon: 1. Season a 200g salmon fillet with salt, pepper, and a dash of lemon juice. 2. Preheat the grill to medium-high heat. 3. Place the salmon skin-side down and grill for 6-8 minutes until the flesh flakes easily. 4. Optionally flip and grill for an additional 2-3 minutes. 5. Serve immediately with a fresh lemon wedge.'
  WHEN 12 THEN 'Turkey Breast: 1. Preheat your oven to 375°F (190°C). 2. Rub 200g turkey breast slices with olive oil, salt, pepper, and dried herbs. 3. Arrange in a baking dish and roast for 25-30 minutes until fully cooked. 4. Let rest for 5 minutes before slicing thinly. 5. Serve warm with steamed vegetables.'
  WHEN 13 THEN 'Egg White Omelette: 1. Separate the egg whites of 3 eggs and whisk until frothy. 2. Heat a non-stick skillet over medium heat with a small amount of oil. 3. Pour in the egg whites and let them set slightly. 4. Sprinkle chopped vegetables (such as spinach, bell peppers, tomatoes) evenly over the surface. 5. Cook until firm, then fold gently and serve immediately.'
  WHEN 14 THEN 'Beef Steak: 1. Let a 250g beef steak come to room temperature. 2. Season generously with salt, pepper, and garlic powder. 3. Heat a cast-iron skillet until very hot. 4. Sear the steak for 3-4 minutes per side for medium-rare, then reduce heat and cook an extra minute per side if needed. 5. Allow the steak to rest for 5-7 minutes before slicing and serving with a drizzle of olive oil or a pat of herb butter.'
  WHEN 15 THEN 'Prawn Curry: 1. Clean and devein 200g of prawns. 2. In a pan, heat 2 teaspoons of oil and sauté 1 chopped onion until translucent. 3. Add 1 teaspoon each of minced garlic and ginger, and cook for 1 minute. 4. Stir in 1 chopped tomato, ½ teaspoon turmeric, 1 teaspoon chili powder, and salt to taste. 5. Add the prawns and simmer on medium heat for 5-7 minutes until they turn pink. 6. Garnish with fresh coriander and serve with rice or naan.'
  WHEN 16 THEN 'Fish Tikka: 1. Cut fish fillets (such as tilapia) into bite-size pieces. 2. Marinate them in a mixture of yogurt, lemon juice, ginger-garlic paste, 1 teaspoon cumin, and 1 teaspoon paprika for at least 30 minutes. 3. Preheat the grill or oven broiler. 4. Thread the fish pieces onto skewers and grill for 4-5 minutes per side until slightly charred and cooked through. 5. Serve with a side of mint chutney.'
  WHEN 17 THEN 'Mutton Curry: 1. Cut mutton into 1-inch cubes. 2. In a heavy pot, heat 2 tablespoons of oil and brown the mutton on all sides. 3. Remove the mutton and set aside. 4. In the same pot, sauté 1 chopped onion until golden. 5. Add 2 minced garlic cloves and 1 teaspoon minced ginger; cook for 1 minute. 6. Stir in 1 chopped tomato, 1 teaspoon turmeric, 1 teaspoon coriander powder, 1 teaspoon chili powder, and salt to taste. 7. Return the mutton, add enough water to cover, and simmer on low heat for 1-1.5 hours until tender. 8. Garnish with fresh cilantro and serve with rice or flatbread.'
  WHEN 18 THEN 'Chicken Salad: 1. Grill a 200g chicken breast until fully cooked, then slice thinly. 2. In a large bowl, combine mixed greens, cherry tomatoes, sliced cucumbers, and red onions. 3. Top with the sliced chicken. 4. Drizzle with olive oil and balsamic vinegar, and season with salt and pepper. 5. Toss gently and serve immediately.'
  WHEN 19 THEN 'Cottage Cheese Wrap: 1. Cube 150g paneer (cottage cheese) and lightly sauté with salt, pepper, and a pinch of paprika for 3-4 minutes. 2. Warm a whole wheat wrap on a skillet. 3. Spread a thin layer of low-fat yogurt or hummus over the wrap. 4. Add the paneer along with sliced lettuce, tomatoes, and cucumbers. 5. Roll the wrap tightly and slice in half before serving.'
  WHEN 20 THEN 'Greek Yogurt Bowl: 1. Spoon 1 cup of Greek yogurt into a bowl. 2. Top with ½ cup mixed berries (blueberries, strawberries, raspberries). 3. Add 2 tablespoons of granola and a drizzle of honey. 4. Sprinkle with a handful of chopped nuts (almonds or walnuts). 5. Mix lightly and serve chilled.'
 WHEN 21 THEN 'Oats Porridge: 1. In a saucepan, combine 1 cup oats with 2 cups water or milk. 2. Bring to a boil and then simmer on low heat for 5-7 minutes until thick and creamy. 3. Stir occasionally to prevent sticking. 4. Add honey, fruits, or nuts as desired. 5. Serve warm.'
  WHEN 22 THEN 'Fruit Salad: 1. Wash and peel a variety of fruits (e.g., apple, banana, orange, grapes). 2. Chop them into bite-sized pieces. 3. In a bowl, mix all the fruits. 4. Add a squeeze of lemon juice and a drizzle of honey if desired. 5. Chill in the refrigerator for 10 minutes and serve.'
  WHEN 23 THEN 'Avocado Toast: 1. Toast 2 slices of whole-grain bread until golden. 2. Mash a ripe avocado with salt, pepper, and a dash of lemon juice. 3. Spread the mashed avocado evenly on the toasted bread. 4. Top with sliced cherry tomatoes and a sprinkle of black pepper. 5. Serve immediately.'
  WHEN 24 THEN 'Vegetable Sandwich: 1. Take 2 slices of whole-grain bread. 2. Spread a layer of hummus or low-fat mayo on each slice. 3. Layer slices of cucumber, tomato, lettuce, and optionally grated carrots. 4. Close the sandwich, cut diagonally, and serve fresh.'
  WHEN 25 THEN 'Falafel Wrap: 1. Blend soaked chickpeas with garlic, parsley, cumin, and salt until coarse. 2. Form the mixture into small balls and shallow-fry until golden. 3. Warm a flatbread or pita. 4. Fill with falafel, lettuce, and tomatoes, and drizzle with tahini sauce. 5. Roll tightly and serve.'
  WHEN 26 THEN 'Rice and Dal: 1. Rinse 1 cup rice and 1 cup lentils separately. 2. Cook rice in 2 cups water until fluffy. 3. In a pot, boil lentils with turmeric, salt, and water until soft. 4. Temper with sautéed onions, garlic, and cumin seeds in a small pan and add to the dal. 5. Serve the dal over rice with a garnish of coriander.'
  WHEN 27 THEN 'Chole: 1. Soak 1 cup chickpeas overnight and boil until tender. 2. In a pan, sauté finely chopped onions, garlic, and ginger. 3. Add chopped tomatoes and spices like cumin, coriander, turmeric, and chili powder. 4. Combine chickpeas and simmer for 15 minutes. 5. Garnish with fresh coriander and serve hot.'
  WHEN 28 THEN 'Rajma: 1. Soak 1 cup kidney beans overnight and pressure cook until soft. 2. Sauté onions, garlic, and ginger until golden. 3. Add tomatoes and spices (cumin, turmeric, red chili powder) and simmer for 20 minutes with the beans. 4. Garnish with coriander and serve with rice.'
  WHEN 29 THEN 'Idli and Sambar: 1. Steam idlis until soft. 2. Prepare sambar by cooking toor dal with vegetables, tamarind pulp, and sambar powder. 3. Once ready, serve the idlis dipped in the hot sambar along with coconut chutney.'
  WHEN 30 THEN 'Dosa with Coconut Chutney: 1. Prepare dosa batter by fermenting rice and urad dal overnight. 2. Spread a thin layer of batter on a hot griddle and cook until crisp. 3. Blend grated coconut with green chilies, ginger, and salt to make the chutney. 4. Serve the dosa hot with coconut chutney and sambar.'
  WHEN 31 THEN 'Paneer Tikka: 1. Cube 200g paneer and marinate with yogurt, ginger-garlic paste, turmeric, chili powder, and salt for 30 minutes. 2. Skewer the paneer cubes and grill on a preheated grill or in the oven for 10 minutes until edges are charred. 3. Serve with a side of mint chutney and lemon wedges.'
  WHEN 32 THEN 'Veg Burger: 1. Mash boiled beans with grated carrots, onions, breadcrumbs, and spices to form a patty. 2. Shape into patties and pan-fry until golden on both sides. 3. Toast whole-grain burger buns. 4. Assemble the burger with the patty, lettuce, tomato, and a light spread of mayo. 5. Serve with a side of salad or fries.'
  WHEN 33 THEN 'Chicken Burger: 1. Season a 200g chicken breast with salt, pepper, and herbs, then grill until fully cooked and slice into a patty. 2. Toast burger buns and layer with lettuce, tomato, and sliced onions. 3. Add the chicken patty and a light sauce. 4. Serve with a side of sweet potato fries.'
  WHEN 34 THEN 'Veg Pizza: 1. Roll out a pizza dough on a floured surface. 2. Spread a thin layer of tomato sauce evenly. 3. Top with sliced bell peppers, onions, mushrooms, and olives. 4. Sprinkle with mozzarella cheese and oregano. 5. Bake in a preheated oven at 220°C for 10-12 minutes until the crust is golden and cheese is melted.'
  WHEN 35 THEN 'Chicken Pizza: 1. Roll out a pizza dough and spread tomato sauce evenly. 2. Top with grilled chicken slices, bell peppers, onions, and mozzarella cheese. 3. Bake at 220°C for 10-12 minutes until bubbly. 4. Garnish with fresh basil before serving.'
  WHEN 36 THEN 'Veg Pasta: 1. Boil your choice of pasta until al dente and drain. 2. In a pan, heat olive oil and sauté garlic with mixed vegetables (zucchini, bell peppers, cherry tomatoes) for 3-4 minutes. 3. Toss the pasta with the vegetables and a light tomato or pesto sauce. 4. Season with salt, pepper, and Parmesan cheese. 5. Serve hot.'
  WHEN 37 THEN 'Chicken Pasta: 1. Boil pasta until al dente and drain. 2. Sauté diced chicken with garlic until browned. 3. Add chopped vegetables and a creamy Alfredo or tomato sauce. 4. Toss the pasta with the chicken and sauce for 2-3 minutes. 5. Serve garnished with parsley and grated cheese.'
  WHEN 38 THEN 'Paneer Paratha: 1. Prepare whole wheat dough and let it rest for 30 minutes. 2. Crumble 150g paneer and mix with finely chopped onions, green chilies, and spices. 3. Roll out a small dough ball, place the paneer filling, and seal the edges. 4. Roll gently into a paratha and cook on a hot tawa with a little ghee until golden on both sides. 5. Serve with yogurt or pickle.'
  WHEN 39 THEN 'Egg Paratha: 1. Prepare whole wheat dough and let it rest for 30 minutes. 2. Beat 2 eggs with salt, pepper, and finely chopped onions. 3. Roll out a dough ball, pour the egg mixture over it, and fold it in half. 4. Roll gently and cook on a hot griddle with minimal oil until crisp and golden. 5. Serve hot with chutney.'
  WHEN 40 THEN 'Vegetable Biryani: 1. Parboil 1 cup basmati rice and set aside. 2. In a large pot, sauté onions, garlic, and ginger until golden. 3. Add mixed vegetables (carrots, peas, beans) and cook for 5 minutes. 4. Layer the vegetables with the rice, drizzle saffron-infused milk on top, cover, and cook on low heat (dum) for 20 minutes. 5. Gently mix and serve with raita.'
  WHEN 41 THEN 'Chicken Biryani: 1. Marinate 200g chicken pieces in yogurt, ginger-garlic paste, and biryani spices for 1 hour. 2. Parboil 1 cup basmati rice until 70% cooked. 3. Layer the marinated chicken with rice in a heavy pot along with fried onions and mint leaves. 4. Seal the pot and cook on low heat (dum) for 25 minutes. 5. Serve hot with raita and salad.'
  WHEN 42 THEN 'Mutton Biryani: 1. Marinate 200g mutton pieces in yogurt, ginger-garlic paste, and spices for at least 2 hours. 2. Parboil basmati rice until partially cooked. 3. In a deep pot, layer the marinated mutton with rice, fried onions, and fresh mint. 4. Seal the pot and cook on low heat for 1-1.5 hours until the mutton is tender. 5. Serve with raita and boiled eggs.'
  WHEN 43 THEN 'Prawn Fried Rice: 1. Clean and devein 200g prawns. 2. In a wok, heat oil and stir-fry the prawns until they turn pink; then remove them. 3. Add chopped onions, garlic, and mixed vegetables, stir-fry for 3-4 minutes. 4. Add pre-cooked rice and toss with soy sauce. 5. Return the prawns to the wok, mix well, and serve hot.'
  WHEN 44 THEN 'Vegetable Fried Rice: 1. Heat oil in a wok and sauté chopped garlic and onions until translucent. 2. Add mixed vegetables (carrots, peas, bell peppers) and stir-fry for 4 minutes. 3. Add pre-cooked rice and drizzle with soy sauce and sesame oil. 4. Toss well for 2 minutes until combined, and serve immediately.'
  WHEN 45 THEN 'Spring Rolls: 1. Finely shred cabbage, carrots, and bell peppers. 2. Mix the vegetables with a pinch of salt and pepper. 3. Place the filling on spring roll wrappers and roll them tightly. 4. Deep-fry the rolls in hot oil until crispy and golden. 5. Serve with sweet chili sauce.'
  WHEN 46 THEN 'Chicken Spring Rolls: 1. Shred 200g cooked chicken and combine with finely chopped carrots and bell peppers. 2. Place the mixture onto spring roll wrappers and roll tightly. 3. Deep-fry in hot oil until golden and crisp. 4. Serve with a tangy dipping sauce.'
  WHEN 47 THEN 'Corn Soup: 1. In a pot, add 2 cups of sweet corn kernels with 3 cups of water. 2. Boil until the corn is tender. 3. Blend a portion of the soup to create a creamy base and mix it back in. 4. Season with salt, pepper, and a dash of cream. 5. Serve hot.'
  WHEN 48 THEN 'Tomato Soup: 1. Sauté 1 chopped onion and 2 minced garlic cloves in olive oil until soft. 2. Add 4 chopped tomatoes and simmer for 15 minutes. 3. Blend the mixture until smooth. 4. Return to heat, add salt, pepper, and basil, and simmer for another 5 minutes. 5. Serve warm with a drizzle of olive oil.'
  WHEN 49 THEN 'Spinach Soup: 1. In a pot, sauté 1 minced garlic clove in olive oil. 2. Add 3 cups fresh spinach leaves and 2 cups vegetable broth. 3. Bring to a boil and simmer for 10 minutes. 4. Blend until smooth, then season with salt and pepper. 5. Serve hot with a sprinkle of black pepper.'
  WHEN 50 THEN 'Vegetable Pasta Salad: 1. Boil pasta until al dente, drain, and let it cool. 2. Chop assorted vegetables such as bell peppers, cucumbers, and cherry tomatoes. 3. In a large bowl, combine the pasta and vegetables. 4. Drizzle with olive oil, lemon juice, salt, and pepper. 5. Toss well, refrigerate for 30 minutes, and serve chilled.'
 WHEN 51 THEN 'Paneer Bhurji: 1. Crumble 200g paneer. 2. Heat 1 tablespoon oil in a pan and sauté 1 finely chopped onion until golden. 3. Add 1 chopped tomato, 1 finely chopped green chili, and a pinch each of turmeric, cumin, and garam masala; cook for 2 minutes. 4. Stir in the crumbled paneer and cook for another 5 minutes. 5. Garnish with fresh coriander and serve hot with parathas or bread.'
  WHEN 52 THEN 'Chicken Bhurji: 1. Use 200g shredded or minced chicken. 2. In a pan, heat 1 tablespoon oil and sauté 1 chopped onion until soft. 3. Add 1 minced garlic clove, 1 chopped tomato, and 1 chopped green chili. 4. Mix in ½ teaspoon each of turmeric, red chili powder, and cumin powder; cook for 3-4 minutes. 5. Add the chicken and stir for 5 minutes. 6. Garnish with coriander leaves and serve with toasted bread or roti.'
  WHEN 53 THEN 'Egg Curry: 1. Boil 4 eggs, peel them, and set aside. 2. Heat 1 tablespoon oil in a pot and sauté 1 sliced onion until golden. 3. Add 2 minced garlic cloves and 1 teaspoon ginger paste; cook for 1 minute. 4. Add 1 chopped tomato and spices (½ teaspoon turmeric, ½ teaspoon red chili powder, ½ teaspoon garam masala) with a little water to form a gravy. 5. Add the boiled eggs and simmer for 5-7 minutes. 6. Garnish with fresh coriander and serve with rice or roti.'
  WHEN 54 THEN 'Fish Curry: 1. Clean and cut 200g fish into pieces. 2. In a pot, heat 1 tablespoon oil and sauté 1 chopped onion until translucent. 3. Add 1 teaspoon ginger-garlic paste, ½ teaspoon turmeric, ½ teaspoon red chili powder, and ½ teaspoon cumin powder; stir for 1 minute. 4. Add 1 chopped tomato and cook until soft. 5. Add water and bring to a simmer, then gently add the fish. 6. Cook for 10-12 minutes until the fish is tender. 7. Optionally, stir in a splash of coconut milk and garnish with curry leaves.'
  WHEN 55 THEN 'Veg Korma: 1. Chop mixed vegetables (carrots, peas, beans, potatoes) into bite-sized pieces. 2. In a pan, heat 2 teaspoons oil and sauté 1 chopped onion until soft. 3. Add 1 teaspoon ginger-garlic paste and 1 chopped tomato; cook for 2 minutes. 4. Add spices (½ teaspoon turmeric, 1 teaspoon coriander powder) and stir in the vegetables. 5. Pour ½ cup water, cover, and simmer for 15 minutes until vegetables are tender. 6. Blend 10-12 cashews with a little water to form a paste, stir into the curry, and simmer for another 5 minutes. 7. Garnish with cream and coriander, then serve with naan or rice.'
  WHEN 56 THEN 'Chicken Korma: 1. Marinate 200g chicken pieces in ½ cup yogurt, 1 teaspoon ginger-garlic paste, and a pinch of korma spices for 1 hour. 2. In a heavy pan, heat 2 teaspoons oil and fry 1 chopped onion until golden brown. 3. Add the marinated chicken and cook on medium heat for 20 minutes until tender. 4. Stir in a paste made from 10 cashews blended with a little cream, and simmer for 5 more minutes. 5. Garnish with saffron strands and fresh coriander, then serve with rice or naan.'
  WHEN 57 THEN 'Paneer Kadai: 1. Cube 200g paneer and lightly fry until golden. 2. In a wok, heat 1 tablespoon oil and sauté 1 sliced onion, 1 sliced bell pepper, and 1 chopped tomato. 3. Add 1 teaspoon ginger-garlic paste and ½ teaspoon each of turmeric, red chili powder, and kadai masala. 4. Toss in the paneer cubes and stir for 5 minutes until well coated. 5. Garnish with chopped coriander and serve with roti or naan.'
  WHEN 58 THEN 'Chilli Paneer: 1. Cube 200g paneer and lightly dust with cornstarch. 2. Deep-fry the paneer cubes until crisp and set aside. 3. In a pan, heat 2 teaspoons oil and sauté 2 minced garlic cloves and 1 minced green chili. 4. Add diced bell peppers and onions; stir-fry for 3 minutes. 5. Return the paneer, add 1 tablespoon soy sauce, 1 teaspoon vinegar, and a pinch of sugar. 6. Stir-fry for an additional 2 minutes and serve immediately.'
  WHEN 59 THEN 'Chilli Chicken: 1. Marinate 200g chicken pieces with 1 tablespoon soy sauce, 1 teaspoon chili sauce, and a pinch of salt for 30 minutes. 2. Deep-fry the marinated chicken until crisp; set aside. 3. In a wok, heat 2 teaspoons oil and sauté 2 minced garlic cloves and 1 minced ginger piece. 4. Add sliced bell peppers and onions; stir-fry for 2 minutes. 5. Toss in the chicken, drizzle with extra chili sauce and a splash of vinegar, then stir for 2 minutes. 6. Garnish with lemon wedges and serve hot.'
  WHEN 60 THEN 'Soya Chunk Curry: 1. Soak 1 cup soya chunks in hot water for 20 minutes and squeeze out excess water. 2. In a pan, heat 1 tablespoon oil and sauté 1 chopped onion until golden. 3. Add 1 teaspoon ginger-garlic paste, ½ teaspoon turmeric, 1 teaspoon cumin powder, and 1 teaspoon coriander powder; cook for 1 minute. 4. Add the soya chunks and 1 cup tomato puree, and simmer for 10 minutes. 5. Garnish with chopped coriander and serve with rice or roti.'
  WHEN 61 THEN 'Dal Makhani: 1. Rinse 1 cup whole black lentils and ¼ cup kidney beans; soak overnight. 2. Pressure cook with water, salt, and a pinch of turmeric until soft (about 25 minutes). 3. In a pan, heat 2 tablespoons butter and sauté 1 finely chopped onion until golden. 4. Add 1 teaspoon ginger-garlic paste and 1 chopped tomato; cook until mushy. 5. Mix in the cooked lentils and beans, simmer on low heat for 15 minutes. 6. Stir in a dollop of cream and garnish with fresh coriander.'
  WHEN 62 THEN 'Palak Paneer: 1. Blanch 2 cups fresh spinach in boiling water for 2 minutes, then plunge into ice water. 2. Blend the spinach with a little water to form a smooth puree. 3. In a pan, heat 1 tablespoon oil and sauté 1 chopped onion until soft. 4. Add 1 teaspoon ginger-garlic paste and 1 chopped tomato; cook until soft. 5. Pour in the spinach puree, add salt and ½ teaspoon garam masala, and simmer for 5 minutes. 6. Add 200g paneer cubes and cook for another 3 minutes. 7. Serve hot with roti or naan.'
  WHEN 63 THEN 'Kadai Chicken: 1. Cut 200g chicken into cubes and marinate with 1 teaspoon ginger-garlic paste, ½ teaspoon red chili powder, and salt for 30 minutes. 2. In a kadai or deep pan, heat 2 tablespoons oil and sauté 1 sliced onion until golden. 3. Add 1 chopped tomato, 1 sliced bell pepper, and 1 teaspoon kadai masala; cook until soft. 4. Add the marinated chicken and cook on medium heat for 20 minutes until tender. 5. Garnish with fresh coriander and serve with naan or rice.'
  WHEN 64 THEN 'Fish Fry: 1. Clean 200g fish fillets and marinate with ½ teaspoon turmeric, ½ teaspoon red chili powder, salt, and lemon juice for 15 minutes. 2. Lightly dust with rice flour. 3. Heat oil in a pan and shallow-fry the fish for 3-4 minutes on each side until crisp and golden. 4. Drain on paper towels and serve with a squeeze of lemon.'
  WHEN 65 THEN 'Vegetable Manchurian: 1. Finely chop mixed vegetables (cabbage, carrots, bell peppers) and mix with 2 tablespoons flour and salt to bind. 2. Shape into small balls and deep-fry until crispy; set aside. 3. In a pan, heat 1 tablespoon oil and sauté 1 minced garlic clove and 1 minced ginger piece. 4. Add 1 tablespoon soy sauce, 1 tablespoon tomato ketchup, and a dash of vinegar; mix to form a sauce. 5. Toss the fried vegetable balls in the sauce, garnish with chopped spring onions, and serve immediately.'
  WHEN 66 THEN 'Chicken Manchurian: 1. Mince 200g chicken and mix with 2 tablespoons cornflour, salt, and pepper. 2. Shape into small balls and deep-fry until golden; set aside. 3. In a wok, heat 1 tablespoon oil and sauté 1 minced garlic clove, 1 minced ginger piece, and 1 finely chopped green chili. 4. Add 1 tablespoon each of soy sauce, tomato ketchup, and vinegar to form a sauce. 5. Toss the chicken balls in the sauce, garnish with chopped spring onions, and serve hot.'
  WHEN 67 THEN 'Hakka Noodles: 1. Boil Hakka noodles until al dente, drain, and set aside. 2. In a large wok, heat 1 tablespoon oil and sauté 1 sliced onion, 1 sliced carrot, and 1 sliced bell pepper for 2-3 minutes. 3. Add 2 minced garlic cloves and 1 teaspoon ginger paste; stir-fry for 1 minute. 4. Toss in the noodles and drizzle with 2 tablespoons soy sauce and 1 teaspoon chili sauce. 5. Stir-fry for an additional 2 minutes and serve hot.'
  WHEN 68 THEN 'Chicken Hakka Noodles: 1. Boil Hakka noodles until al dente, drain, and set aside. 2. In a wok, heat 1 tablespoon oil and sauté diced chicken until golden and cooked through. 3. Add sliced vegetables (onions, carrots, bell peppers) and stir-fry for 3 minutes. 4. Add the noodles, drizzle with 2 tablespoons soy sauce and 1 teaspoon chili sauce, and toss well. 5. Stir-fry for 2 more minutes and serve immediately.'
  WHEN 69 THEN 'Veg Momos: 1. Finely chop mixed vegetables (cabbage, carrots, onions) and mix with 1 teaspoon minced garlic, ginger, salt, and pepper. 2. Place a spoonful of filling in each momo wrapper and seal the edges by pleating. 3. Steam the momos in a steamer for 10-12 minutes until cooked. 4. Serve hot with a spicy dipping sauce.'
  WHEN 70 THEN 'Chicken Momos: 1. Mince 200g chicken with finely chopped onions, garlic, and ginger; mix with salt and pepper. 2. Place a spoonful of the mixture in each momo wrapper and seal tightly. 3. Steam the momos for 12-15 minutes until the chicken is fully cooked. 4. Serve with a tangy chili sauce.'
  WHEN 71 THEN 'Aloo Paratha: 1. Boil 2 medium potatoes until soft, peel and mash them. 2. Mix the mashed potatoes with finely chopped green chilies, coriander, salt, and ½ teaspoon cumin powder. 3. Stuff a small dough ball with the potato mixture and roll out into a paratha. 4. Cook on a hot griddle with a little ghee until both sides are golden brown. 5. Serve hot with yogurt or pickle.'
  WHEN 72 THEN 'Methi Paratha: 1. In a bowl, mix 2 cups whole wheat flour with finely chopped fresh methi leaves, salt, and a pinch of carom seeds. 2. Add water and a little oil to knead into a soft dough; let it rest for 30 minutes. 3. Divide the dough into balls, roll out each into a thin circle, and cook on a hot griddle with a little ghee until brown spots appear. 4. Serve hot with yogurt or pickle.'
  WHEN 73 THEN 'Chicken Wrap: 1. Grill 200g chicken breast until fully cooked and slice into strips. 2. Warm a tortilla or flatbread. 3. Layer the tortilla with sliced chicken, lettuce, tomatoes, and cucumbers. 4. Drizzle with a light yogurt or mayo sauce. 5. Roll tightly and serve immediately.'
  WHEN 74 THEN 'Veg Wrap: 1. Take a soft tortilla or flatbread and spread a layer of hummus or mashed avocado. 2. Add shredded carrots, lettuce, cucumber, and bell peppers. 3. Roll tightly, cut in half, and serve as a light meal.'
  WHEN 75 THEN 'Paneer Roll: 1. Slice 200g paneer into thin strips and lightly sauté with salt, pepper, and a pinch of chaat masala for 3-4 minutes. 2. Warm a chapati or tortilla. 3. Layer the paneer with sliced onions, tomatoes, and fresh greens. 4. Roll tightly and cut in half. 5. Serve with a side of mint chutney or yogurt dip.'
 WHEN 76 THEN 'Egg Roll: 1. Beat 2 eggs with a pinch of salt and pepper. 2. Pour the mixture onto a lightly oiled non-stick griddle, spreading evenly to form a thin layer. 3. Cook on medium heat until set, then gently roll the omelette and slice into pieces. 4. Serve with ketchup or a mild chutney.'
  WHEN 77 THEN 'Chicken Shawarma: 1. Marinate 200g chicken strips in a mixture of yogurt, lemon juice, minced garlic, cumin, paprika, and salt for 1 hour. 2. Grill or sauté the chicken until well-cooked and slightly charred. 3. Warm pita bread and layer with the chicken, shredded lettuce, sliced tomatoes, and onions. 4. Drizzle with garlic sauce and roll up tightly before serving.'
  WHEN 78 THEN 'Veg Shawarma: 1. Toss mixed vegetables (sliced bell peppers, onions, zucchini) with olive oil, salt, and shawarma spices. 2. Roast the vegetables in a preheated oven at 200°C (392°F) for 15-20 minutes until tender. 3. Fill warm pita bread with the roasted vegetables, add lettuce and a drizzle of tahini sauce. 4. Roll up and serve immediately.'
  WHEN 79 THEN 'Sambar Rice: 1. Cook basmati rice until fluffy. 2. Prepare sambar by pressure-cooking toor dal with chopped vegetables (drumstick, carrot, tomato) and tamarind water, then add sambar powder and salt. 3. Simmer for 10 minutes until flavors meld. 4. Mix the rice with sambar, garnish with fried cashews and curry leaves, and serve hot.'
  WHEN 80 THEN 'Lemon Rice: 1. Cook rice until soft and let it cool slightly. 2. In a pan, heat oil and add mustard seeds, curry leaves, and roasted peanuts. 3. Add turmeric powder and toss in the rice. 4. Squeeze in fresh lemon juice and mix thoroughly with salt. 5. Serve at room temperature or chilled.'
  WHEN 81 THEN 'Chicken Soup: 1. In a large pot, sauté chopped onions, carrots, and celery in a little oil until soft. 2. Add 200g chicken pieces, water, and a bay leaf; bring to a boil. 3. Simmer for 30 minutes until the chicken is tender and flavors are rich. 4. Strain the broth if desired and serve hot, garnished with fresh parsley.'
  WHEN 82 THEN 'Veg Soup: 1. Combine chopped vegetables such as carrots, tomatoes, celery, and peas in a pot with vegetable broth. 2. Add herbs like basil and oregano, then bring to a boil. 3. Simmer for 20 minutes until the vegetables are tender. 4. Optionally, blend part of the soup for a thicker texture. 5. Season with salt and pepper and serve hot.'
  WHEN 83 THEN 'Mutton Soup: 1. Brown 200g mutton pieces with chopped onions and garlic in a heavy pot. 2. Add water, salt, and spices (black pepper, bay leaf) and bring to a boil. 3. Reduce heat and simmer for 1 to 1.5 hours until the mutton is very tender. 4. Skim off excess fat, adjust seasoning, and serve hot with a sprinkle of fresh cilantro.'
  WHEN 84 THEN 'Paneer Makhani: 1. Lightly fry 200g paneer cubes until edges are golden. 2. In a pan, prepare a smooth tomato gravy by sautéing onions, garlic, and tomatoes with spices. 3. Add a splash of cream and simmer for 5 minutes. 4. Combine the paneer with the gravy, garnish with kasuri methi and cilantro, and serve with naan or rice.'
  WHEN 85 THEN 'Chicken Makhani: 1. Marinate 200g chicken pieces in yogurt, ginger-garlic paste, and spices for 1 hour. 2. Grill or pan-fry the chicken until partly cooked. 3. Prepare a rich tomato-cream sauce by sautéing onions, garlic, tomatoes, and adding cream. 4. Combine the chicken with the sauce and simmer for 10 minutes. 5. Garnish with fenugreek leaves and serve with rice or naan.'
  WHEN 86 THEN 'Veg Curry: 1. Chop mixed vegetables (potatoes, carrots, peas, beans) into uniform pieces. 2. In a pot, heat oil and sauté onions until soft. 3. Add garlic, ginger, and spices (turmeric, cumin, coriander) then stir in the vegetables. 4. Pour in water, cover, and simmer for 15-20 minutes until the vegetables are tender. 5. Garnish with chopped cilantro and serve with roti or rice.'
  WHEN 87 THEN 'Chicken Curry: 1. Sauté chopped onions, garlic, and ginger in oil until golden. 2. Add 200g chicken pieces along with spices (turmeric, chili powder, cumin, coriander) and stir well. 3. Add chopped tomatoes and a little water, then simmer for 20 minutes until the chicken is cooked and the gravy thickens. 4. Garnish with fresh coriander and serve with rice.'
  WHEN 88 THEN 'Egg Fried Rice: 1. In a wok, scramble 2 beaten eggs and set aside. 2. Sauté garlic and chopped vegetables (carrots, peas, bell peppers) in oil. 3. Add cooked rice and stir-fry for 2-3 minutes. 4. Mix in the scrambled eggs, drizzle with soy sauce and sesame oil, and stir for another 2 minutes. 5. Serve hot.'
  WHEN 89 THEN 'Mixed Sprouts Salad: 1. Rinse 1 cup mixed sprouts thoroughly. 2. Dice cucumbers, tomatoes, and onions finely. 3. In a bowl, combine the sprouts and vegetables. 4. Drizzle with lemon juice, add salt, pepper, and a pinch of chaat masala. 5. Toss well and serve chilled.'
  WHEN 90 THEN 'Chicken Tikka: 1. Marinate 200g chicken pieces in a mixture of yogurt, lemon juice, ginger-garlic paste, and tikka spices for 1 hour. 2. Skewer the chicken and grill over medium heat for 10-12 minutes until charred and cooked through. 3. Serve with mint chutney and lemon wedges.'
  WHEN 91 THEN 'Veg Tikka: 1. Cut vegetables such as bell peppers, zucchini, and onions into chunks. 2. Marinate with yogurt, turmeric, chili powder, and garam masala for 30 minutes. 3. Thread the vegetables onto skewers and grill for 8-10 minutes until slightly charred. 4. Drizzle with lemon juice and serve with a side of green chutney.'
  WHEN 92 THEN 'Spinach Quinoa Bowl: 1. Rinse 1 cup quinoa and cook it in 2 cups water until fluffy. 2. Sauté a handful of spinach in olive oil until wilted. 3. In a bowl, mix the quinoa and spinach with chopped tomatoes and cucumbers. 4. Drizzle with lemon juice, season with salt and pepper, and toss gently. 5. Serve chilled or at room temperature.'
  WHEN 93 THEN 'Mixed Vegetable Wrap: 1. Finely chop raw vegetables such as lettuce, carrots, cucumbers, and bell peppers. 2. Spread a generous layer of hummus on a whole wheat tortilla. 3. Add the chopped vegetables evenly, sprinkle salt and pepper, and drizzle with lemon juice. 4. Roll the tortilla tightly, slice in half, and serve with a side of salsa.'
  WHEN 94 THEN 'Fruit Smoothie: 1. In a blender, combine 1 cup mixed fruits (such as banana, berries, and mango). 2. Add 1 cup yogurt or milk and 1 teaspoon honey. 3. Blend until completely smooth. 4. Pour into a glass and serve chilled as a refreshing drink.'
  WHEN 95 THEN 'Protein Shake: 1. In a blender, add 1 scoop of your preferred protein powder, 1 cup milk (or water), and 1 banana. 2. Optionally, add 1 tablespoon of peanut butter. 3. Blend until smooth and frothy. 4. Serve immediately in a shaker glass.'
  WHEN 96 THEN 'Grilled Veg Skewers: 1. Cut vegetables like zucchini, bell peppers, mushrooms, and onions into chunks. 2. Thread the vegetables onto skewers alternately. 3. Brush with olive oil and sprinkle with salt, pepper, and dried herbs. 4. Grill over medium heat for 10-12 minutes, turning occasionally. 5. Squeeze fresh lemon juice over the skewers before serving.'
  WHEN 97 THEN 'Chicken Quesadilla: 1. Place a large tortilla in a hot skillet. 2. Sprinkle shredded cheese over half of the tortilla and add cooked, shredded chicken and sliced bell peppers. 3. Fold the tortilla over and cook until the cheese melts and the tortilla is golden brown on both sides. 4. Cut into wedges and serve with salsa and sour cream.'
  WHEN 98 THEN 'Veg Quesadilla: 1. Heat a whole wheat tortilla in a skillet. 2. Sprinkle a generous amount of shredded cheese over half the tortilla, then add chopped spinach, tomatoes, and bell peppers. 3. Fold the tortilla and cook until the cheese is melted and the tortilla is crisp. 4. Cut into slices and serve with guacamole and salsa.'
  WHEN 99 THEN 'Tofu Salad: 1. Press and cube 200g firm tofu and lightly sauté until edges turn golden. 2. In a bowl, mix tofu with fresh salad greens, cherry tomatoes, and cucumber slices. 3. Drizzle with a dressing made of soy sauce, sesame oil, rice vinegar, and a hint of honey. 4. Garnish with sesame seeds and serve immediately.'
  WHEN 100 THEN 'Quinoa Pulao: 1. Rinse 1 cup quinoa and cook in 2 cups water until fluffy. 2. In a pan, heat oil and sauté chopped onions, garlic, and mixed vegetables (carrots, peas, beans) until tender. 3. Add cooked quinoa and toss with spices such as cumin, turmeric, and garam masala. 4. Stir well for 3-4 minutes. 5. Garnish with chopped cilantro and serve hot.'
END
WHERE id BETWEEN 1 AND 100;




INSERT INTO fitness.fruits (name, description, season, vitamin_c_mg, fiber_g, potassium_mg, calories)
VALUES
  ('Orange', 'Citrus fruit with a tangy taste.', 'Winter', 70, 3.0, 237, 62),
  ('Apple', 'Crisp and juicy fruit with a sweet-tart flavor.', 'Fall', 8, 4.4, 107, 95),
  ('Banana', 'Tropical fruit that provides quick energy.', 'Year-Round', 10, 3.1, 422, 105),
  ('Mango', 'Sweet and juicy tropical fruit with a rich flavor.', 'Summer', 60, 3.7, 277, 135),
  ('Grapes', 'Small clustered fruits available in various colors.', 'Fall', 4, 0.9, 288, 104),
  ('Pineapple', 'Tropical fruit with a tangy-sweet flavor and spiky exterior.', 'Year-Round', 79, 2.3, 180, 82),
  ('Papaya', 'Soft, sweet tropical fruit with vibrant orange flesh.', 'Year-Round', 88, 2.7, 257, 59),
  ('Strawberry', 'Bright red berry with a sweet, slightly tart flavor.', 'Spring', 89, 2.0, 220, 49),
  ('Blueberry', 'Small round berry rich in antioxidants.', 'Summer', 14, 3.6, 114, 84),
  ('Watermelon', 'Large, refreshing fruit with very high water content.', 'Summer', 12, 0.6, 170, 46),
  ('Kiwi', 'Small brown fruit with bright green flesh and a tangy taste.', 'Winter', 92, 2.1, 215, 61),
  ('Pomegranate', 'Fruit with a thick rind and numerous edible seeds.', 'Fall', 10, 4.0, 236, 234),
  ('Guava', 'Tropical fruit with a distinct aroma and sweet taste.', 'Year-Round', 228, 3.0, 688, 112),
  ('Lemon', 'Sour citrus fruit known for its vibrant yellow color.', 'Winter', 31, 1.6, 80, 17),
  ('Lime', 'Small green citrus fruit with a tart flavor.', 'Summer', 20, 0.6, 68, 20),
  ('Cherry', 'Small, round fruit with a deep red color and sweet taste.', 'Summer', 10, 1.6, 222, 50),
  ('Pear', 'Juicy fruit with a soft, grainy texture and sweet flavor.', 'Fall', 7, 5.5, 190, 102),
  ('Plum', 'Sweet fruit with smooth skin and a tart flavor.', 'Summer', 9, 1.4, 104, 46),
  ('Apricot', 'Small orange fruit with a velvety skin and sweet taste.', 'Summer', 10, 2.0, 90, 17),
  ('Fig', 'Sweet, soft fruit with a chewy texture and numerous small seeds.', 'Fall', 2, 2.9, 232, 107),
  ('Date', 'Sweet fruit often dried, with a rich, caramel-like flavor.', 'Winter', 0, 6.7, 696, 282),
  ('Coconut', 'Tropical fruit with a hard outer shell and sweet water inside.', 'Year-Round', 3, 7, 356, 354),
  ('Avocado', 'Creamy fruit with a large seed, rich in healthy fats.', 'Year-Round', 10, 10, 708, 240),
  ('Persimmon', 'Sweet, orange fruit with a smooth texture.', 'Fall', 66, 6, 270, 118),
  ('Cantaloupe', 'Melon with a netted rind and sweet orange flesh.', 'Summer', 58, 1.4, 427, 53),
  ('Honeydew', 'Sweet melon with green flesh and a smooth rind.', 'Summer', 18, 1.4, 388, 61),
  ('Blackberry', 'Dark purple berry with a tart-sweet flavor.', 'Summer', 21, 7.6, 233, 62),
  ('Raspberry', 'Bright red berry known for its delicate flavor.', 'Summer', 32, 8, 186, 64),
  ('Cranberry', 'Tart, red berry often used in juices and sauces.', 'Fall', 14, 4.6, 85, 46),
  ('Passion Fruit', 'Tropical fruit with a wrinkled rind and seedy pulp.', 'Summer', 12, 2.0, 348, 17);




INSERT INTO fitness.foods (name, description, protein, fiber, category, applicable_goals, how_to_cook)
VALUES
  ('Vegetable Soup', 'A light soup with assorted low-calorie vegetables.', 5, 3, 'veg', 'weight loss', '1. Sauté onions and garlic in olive oil. 2. Add chopped carrots, celery, and tomatoes. 3. Pour in vegetable broth and simmer for 15 minutes. 4. Blend if desired and serve hot.'),
  ('Mixed Greens Salad', 'A fresh salad made with spinach, arugula, and romaine, perfect for detox.', 3, 2.5, 'veg', 'weight loss', '1. Toss mixed greens with cherry tomatoes and cucumber slices. 2. Drizzle with lemon juice and a dash of olive oil. 3. Season with salt and pepper, then serve immediately.'),
  ('Cucumber Tomato Salad', 'A refreshing salad with crisp cucumbers and ripe tomatoes.', 2, 2, 'veg', 'weight loss', '1. Chop cucumbers and tomatoes into bite-size pieces. 2. Finely slice red onions and mix all together. 3. Add lemon juice, salt, and pepper. Toss and serve chilled.'),
  ('Steamed Broccoli', 'Lightly steamed broccoli florets packed with vitamins and low in calories.', 4, 3, 'veg', 'weight loss', '1. Steam broccoli for 5-7 minutes until tender. 2. Season with a pinch of salt and a drizzle of lemon juice. Serve immediately.'),
  ('Grilled Asparagus', 'Crisp asparagus spears grilled with minimal oil.', 3, 2, 'veg', 'weight loss', '1. Toss asparagus with a little olive oil, salt, and pepper. 2. Grill for about 5 minutes, turning once, until lightly charred. Serve warm.'),
  ('Zucchini Noodles with Pesto', 'Low-calorie zucchini noodles tossed with a light basil pesto.', 4, 2.5, 'veg', 'weight loss', '1. Use a spiralizer to create zucchini noodles. 2. Blend basil, garlic, olive oil, and a few pine nuts to make pesto. 3. Toss noodles with the pesto and serve chilled or at room temperature.'),
  ('Quinoa Salad with Veggies', 'A protein-rich quinoa salad loaded with fresh vegetables.', 8, 4, 'veg', 'weight loss', '1. Cook quinoa and let it cool. 2. Mix with diced bell peppers, cucumber, and cherry tomatoes. 3. Drizzle with lemon vinaigrette, toss well, and serve.'),
  ('Spinach and Berry Smoothie', 'A nutrient-packed smoothie combining spinach and mixed berries.', 5, 3, 'veg', 'weight loss', '1. Blend a handful of spinach with mixed berries, a banana, and almond milk until smooth. 2. Serve immediately, chilled.'),
  ('Carrot Ginger Soup', 'A warming, low-calorie soup with carrots and a hint of ginger.', 4, 3.5, 'veg', 'weight loss', '1. Sauté chopped carrots and ginger in a little olive oil. 2. Add vegetable broth and simmer until carrots are soft. 3. Blend until smooth, season with salt and pepper, and serve warm.'),
  ('Cauliflower Rice Stir Fry', 'A low-carb stir fry made with grated cauliflower and mixed veggies.', 5, 3, 'veg', 'weight loss', '1. Grate cauliflower to create “rice”. 2. Stir-fry with diced bell peppers, peas, and onions in minimal oil. 3. Season with soy sauce and serve hot.'),
  ('Lentil Soup', 'A hearty soup with red lentils and a blend of spices, low in calories.', 12, 6, 'veg', 'weight loss', '1. Boil red lentils until soft. 2. Sauté onions, garlic, and tomatoes with spices. 3. Combine with lentils and simmer for 20 minutes. 4. Season and serve hot.'),
  ('Beetroot Salad', 'A vibrant salad with roasted beetroot and fresh greens.', 3, 4, 'veg', 'weight loss', '1. Roast beetroot until tender and slice thinly. 2. Toss with arugula and walnuts. 3. Dress with olive oil and vinegar, then serve chilled.'),
  ('Kale Salad with Lemon Dressing', 'Nutritious kale salad with a zesty lemon dressing.', 4, 3.5, 'veg', 'weight loss', '1. Massage chopped kale with olive oil and lemon juice. 2. Add sliced radishes and cucumbers. 3. Season with salt and pepper; serve immediately.'),
  ('Cabbage Salad with Apple Cider Vinegar', 'Crunchy cabbage salad with a tangy dressing ideal for detox.', 2, 3, 'veg', 'weight loss', '1. Finely shred cabbage. 2. Toss with apple cider vinegar, olive oil, salt, and pepper. 3. Let sit for 10 minutes before serving.'),
  ('Roasted Brussels Sprouts', 'Brussels sprouts roasted with minimal oil to preserve nutrients.', 4, 3, 'veg', 'weight loss', '1. Halve Brussels sprouts and toss with olive oil, salt, and pepper. 2. Roast at 200°C for 20 minutes until crispy. Serve warm.'),
  ('Avocado and Tomato Salad', 'A light salad combining creamy avocado and fresh tomatoes.', 3, 4, 'veg', 'weight loss', '1. Slice avocado and tomatoes. 2. Drizzle with lime juice, season with salt, and gently mix. Serve immediately.'),
  ('Grilled Portobello Mushrooms', 'Portobello mushrooms marinated and grilled for a smoky flavor.', 5, 2, 'veg', 'weight loss', '1. Marinate Portobello caps with balsamic vinegar, garlic, and olive oil. 2. Grill for 6-7 minutes on each side. Serve hot.'),
  ('Steamed Edamame', 'Edamame pods steamed and lightly salted for a protein-rich snack.', 11, 5, 'veg', 'weight loss', '1. Boil edamame pods for 5 minutes. 2. Drain, sprinkle with salt, and serve warm.'),
  ('Tomato Basil Soup', 'A classic, light soup made from fresh tomatoes and basil.', 6, 2.5, 'veg', 'weight loss', '1. Sauté chopped tomatoes and basil in olive oil. 2. Add vegetable broth and simmer for 15 minutes. 3. Blend until smooth, season with salt and pepper, and serve hot.'),
  ('Butternut Squash Soup', 'A creamy soup prepared from roasted butternut squash.', 5, 3, 'veg', 'weight loss', '1. Roast butternut squash cubes until tender. 2. Sauté onions in olive oil, add squash and vegetable broth. 3. Blend until smooth, season with salt and pepper, and serve warm.'),
  ('Baked Sweet Potato Fries', 'Crispy baked sweet potato fries as a healthy alternative to chips.', 2, 3.5, 'veg', 'weight loss', '1. Cut sweet potatoes into fries. 2. Toss with olive oil, salt, and paprika. 3. Bake at 220°C for 25 minutes until crispy.'),
  ('Cucumber Mint Salad', 'A cooling salad with crisp cucumbers and fresh mint.', 2, 2.5, 'veg', 'weight loss', '1. Thinly slice cucumbers. 2. Mix with chopped fresh mint and lemon juice. 3. Season with salt and serve chilled.'),
  ('Raw Veggie Wrap with Hummus', 'A light wrap filled with raw vegetables and a layer of hummus.', 4, 3, 'veg', 'weight loss', '1. Spread hummus on a whole wheat tortilla. 2. Add julienned carrots, bell peppers, and lettuce. 3. Roll tightly and slice in half before serving.'),
  ('Spinach and Feta Salad', 'A fresh spinach salad topped with crumbled feta cheese.', 4, 3, 'veg', 'weight loss', '1. Toss spinach with sliced red onions and cherry tomatoes. 2. Top with crumbled feta, drizzle with olive oil and lemon juice, and serve.'),
  ('Roasted Eggplant Dip with Veggies', 'A smoky eggplant dip served with fresh vegetable sticks.', 3, 4, 'veg', 'weight loss', '1. Roast eggplant until soft. 2. Blend with garlic, lemon juice, and tahini. 3. Serve with sliced cucumbers, carrots, and bell peppers.'),
  ('Cauliflower Soup', 'A smooth, creamy soup made from cauliflower for a low-calorie meal.', 4, 3, 'veg', 'weight loss', '1. Boil cauliflower until tender. 2. Sauté onions and garlic, then add cauliflower and vegetable broth. 3. Blend until smooth, season with salt and pepper, and serve warm.'),
  ('Zucchini and Bell Pepper Stir Fry', 'A quick stir-fry of zucchini and bell peppers in minimal oil.', 3, 2, 'veg', 'weight loss', '1. Slice zucchini and bell peppers. 2. Stir-fry in a hot pan with garlic and a dash of soy sauce for 4-5 minutes. Serve immediately.'),
  ('Cabbage and Carrot Slaw', 'A crunchy slaw of shredded cabbage and carrots with a tangy dressing.', 2, 3, 'veg', 'weight loss', '1. Shred cabbage and carrots finely. 2. Toss with apple cider vinegar, honey, salt, and pepper. 3. Let sit for 10 minutes and serve chilled.'),
  ('Mixed Bean Salad', 'A hearty salad with mixed beans and fresh vegetables for extra fiber.', 7, 5, 'veg', 'weight loss', '1. Rinse and drain mixed beans. 2. Toss with diced cucumbers, tomatoes, and onions. 3. Add lemon juice, salt, and olive oil. Serve chilled.'),
  ('Sautéed Spinach with Garlic', 'Lightly sautéed spinach with garlic for a nutrient-packed side.', 3, 2.5, 'veg', 'weight loss', '1. Heat a pan with a little olive oil. 2. Sauté minced garlic until fragrant. 3. Add spinach and cook until just wilted. 4. Season with salt and a squeeze of lemon juice. Serve warm.')
;




INSERT INTO fitness.foods 
  (name, description, protein, fiber, category, applicable_goals, how_to_cook)
VALUES
('Cucumber Detox Salad', 
 'A refreshing salad of cucumber ribbons, lemon juice, and herbs to aid weight loss.', 
  2, 1, 'veg', 'weight loss', 
 '1. Thinly slice cucumbers into ribbons. 2. Toss with lemon juice, salt, and mint leaves. 3. Chill and serve.'),
('Zucchini Noodles', 
 'Low-carb “noodles” made by spiralizing fresh zucchini.', 
 3, 2, 'veg', 'weight loss', 
 '1. Spiralize zucchini into noodles. 2. Sauté lightly in olive oil with garlic. 3. Season with salt, pepper, and herbs.'),
('Broccoli Quinoa Bowl', 
 'Protein-packed quinoa mixed with broccoli florets and light seasonings.', 
 6, 4, 'veg', 'weight loss', 
 '1. Cook quinoa until fluffy. 2. Steam broccoli florets. 3. Toss both with salt, pepper, and a drizzle of lemon juice.'),
('Spinach Lentil Soup', 
 'A nourishing soup made with spinach, lentils, and mild spices.', 
 8, 5, 'veg', 'weight loss', 
 '1. Sauté onions and garlic. 2. Add rinsed lentils, vegetable broth, and spinach. 3. Simmer until lentils soften.'),
('Cabbage Stir-Fry', 
 'A quick stir-fry of shredded cabbage, carrots, and minimal oil.', 
 4, 3, 'veg', 'weight loss', 
 '1. Heat a wok with a little oil. 2. Add shredded cabbage, carrots, soy sauce, and chili flakes. 3. Stir-fry for 5 minutes.'),
('Veggie Lettuce Wrap', 
 'Crisp lettuce leaves filled with seasoned vegetables and tofu.', 
 5, 2, 'veg', 'weight loss', 
 '1. Sauté diced tofu and veggies (bell peppers, onions). 2. Season with soy sauce. 3. Spoon into lettuce leaves and wrap.'),
('Pumpkin Soup', 
 'A creamy yet light soup of pumpkin purée and mild spices.', 
 4, 3, 'veg', 'weight loss', 
 '1. Roast pumpkin cubes until tender. 2. Blend with vegetable stock and a pinch of nutmeg. 3. Simmer briefly and serve.'),
('Mixed Sprouts Curry', 
 'High-protein sprouts simmered in a light tomato gravy.', 
 7, 4, 'veg', 'weight loss', 
 '1. Pressure-cook mixed sprouts. 2. Prepare a tomato-onion gravy. 3. Add sprouts, simmer 10 minutes, garnish with cilantro.'),
('Baked Vegetable Cutlet', 
 'Assorted veggies mashed and baked into a low-fat patty.', 
 4, 3, 'veg', 'weight loss', 
 '1. Boil and mash veggies (carrots, peas, potatoes). 2. Shape into patties, coat with breadcrumbs. 3. Bake at 200°C until golden.'),
('Methi Dal', 
 'A simple lentil dish cooked with fenugreek leaves.', 
 8, 4, 'veg', 'weight loss', 
 '1. Cook lentils with water. 2. Sauté fenugreek leaves, onions, and tomatoes. 3. Combine with cooked dal, simmer briefly.'),
('Beetroot Raita', 
 'A cooling yogurt-based side dish with grated beetroot.', 
 3, 2, 'veg', 'weight loss', 
 '1. Grate beetroot. 2. Mix with yogurt, salt, and roasted cumin powder. 3. Chill before serving.'),
('Tomato Basil Soup', 
 'A light soup made from fresh tomatoes and fragrant basil.', 
 3, 2, 'veg', 'weight loss', 
 '1. Sauté onions, garlic in olive oil. 2. Add chopped tomatoes, basil, and broth. 3. Simmer, then blend until smooth.'),
('Okra Stir-Fry', 
 'Stir-fried okra with minimal oil, onions, and basic spices.', 
 3, 3, 'veg', 'weight loss', 
 '1. Heat a pan with a little oil. 2. Add sliced okra, onions, salt, and chili powder. 3. Cook until okra is tender.'),
('Cauliflower Rice', 
 'Low-carb rice alternative made by pulsing cauliflower florets.', 
 4, 2, 'veg', 'weight loss', 
 '1. Pulse cauliflower into rice-like texture. 2. Sauté with a little oil, garlic, and salt. 3. Cook for 5 minutes.'),
('Carrot Ginger Soup', 
 'A warming soup of carrots and fresh ginger.', 
 2, 3, 'veg', 'weight loss', 
 '1. Sauté chopped carrots, onions, and ginger. 2. Add vegetable broth and simmer. 3. Blend until smooth.'),
('Cucumber Avocado Sushi', 
 'Homemade sushi rolls using cucumber, avocado, and brown rice.', 
 4, 3, 'veg', 'weight loss', 
 '1. Spread cooked brown rice on nori sheets. 2. Layer sliced cucumber, avocado. 3. Roll tightly, slice, and serve.'),
('Spinach Rice', 
 'Nutritious rice dish with blended spinach and mild spices.', 
 5, 3, 'veg', 'weight loss', 
 '1. Cook rice separately. 2. Blend spinach with garlic. 3. Sauté puree, mix with rice, and season.'),
('Grilled Eggplant', 
 'Sliced eggplant marinated and grilled to perfection.', 
 2, 4, 'veg', 'weight loss', 
 '1. Slice eggplant, sprinkle salt to remove bitterness. 2. Marinate with olive oil and herbs. 3. Grill for 3-4 minutes each side.'),
('Zucchini Tomato Bake', 
 'Layers of zucchini and tomatoes baked with light seasonings.', 
 3, 2, 'veg', 'weight loss', 
 '1. Slice zucchini and tomatoes. 2. Layer in a baking dish with herbs, minimal cheese. 3. Bake at 180°C for 20 minutes.'),
('Soya Granules Curry', 
 'Protein-rich soya granules cooked in a light tomato gravy.', 
 10, 4, 'veg', 'weight loss', 
 '1. Soak soya granules in hot water, drain. 2. Cook in tomato-onion gravy. 3. Simmer until flavors combine.'),
('Veggie Clear Soup', 
 'A simple broth-based soup with assorted vegetables.', 
 3, 2, 'veg', 'weight loss', 
 '1. Boil chopped veggies (carrots, beans, cabbage) in broth. 2. Season with salt and pepper. 3. Serve hot.'),
('Sweet Potato Tikkis', 
 'Shallow-fried sweet potato patties seasoned with mild spices.', 
 4, 3, 'veg', 'weight loss', 
 '1. Boil and mash sweet potatoes. 2. Add spices, shape into tikkis. 3. Shallow-fry with minimal oil.'),
('Cabbage Soup', 
 'Light soup of shredded cabbage and vegetables.', 
 2, 3, 'veg', 'weight loss', 
 '1. Sauté onions, celery. 2. Add cabbage, vegetable stock, and spices. 3. Simmer for 15 minutes.'),
('Baked Beet Chips', 
 'Thinly sliced beets baked into crunchy chips.', 
 3, 4, 'veg', 'weight loss', 
 '1. Preheat oven to 180°C. 2. Slice beets thinly, toss with salt and minimal oil. 3. Bake until crisp.'),
('Green Peas Pulao', 
 'A fragrant rice dish with green peas and mild spices.', 
 5, 3, 'veg', 'weight loss', 
 '1. Sauté onions and spices. 2. Add peas and soaked rice. 3. Cook until rice is fluffy.'),
('Veggie Wrap with Hummus', 
 'Whole wheat wrap filled with hummus and crunchy vegetables.', 
 4, 3, 'veg', 'weight loss', 
 '1. Spread hummus on a wrap. 2. Add sliced peppers, cucumbers, and lettuce. 3. Roll tightly and slice.'),
('Sprouted Moong Salad', 
 'Sprouted green gram tossed with onions and tomatoes.', 
 7, 4, 'veg', 'weight loss', 
 '1. Rinse sprouted moong. 2. Add chopped onions, tomatoes, lemon juice. 3. Season with salt and pepper.'),
('Baked Tofu Fingers', 
 'Tofu strips lightly seasoned and baked until golden.', 
 8, 2, 'veg', 'weight loss', 
 '1. Cut firm tofu into strips. 2. Marinate with spices, a little oil. 3. Bake at 200°C for 15 minutes.'),
('Lauki (Bottle Gourd) Curry', 
 'A light curry made with bottle gourd and simple spices.', 
 3, 2, 'veg', 'weight loss', 
 '1. Sauté onions, tomatoes, and spices. 2. Add diced lauki, cook until tender. 3. Serve with roti or rice.'),
('Spinach Chickpea Stew', 
 'Hearty stew of spinach, chickpeas, and mild spices.', 
 6, 4, 'veg', 'weight loss', 
 '1. Sauté garlic, onions, and tomatoes. 2. Add boiled chickpeas, spinach, and broth. 3. Simmer until flavors meld.'),
('Carrot Beet Salad', 
 'Shredded carrots and beets dressed with lemon and herbs.', 
 3, 3, 'veg', 'weight loss', 
 '1. Grate carrots and beets. 2. Toss with lemon juice, salt, and chopped coriander. 3. Serve chilled.');
