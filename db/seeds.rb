
Allergy.delete_all

allergies=["crustacean shellfish","eggs","fish","milk","peanuts","soybean","tree nuts","wheat"]
allergies.each do |alle|
  Allergy.create!(name: alle)
  end

User.delete_all
@user=User.create!(name:'Maggie', email: 'maggie@fake.com', password: "12345678", allergy_ids:[1,2])

Foodflag.delete_all
foodflags=[
  ["crustacean shellfish type","shellfish product"],
  ["egg","egg protein","egg product"],
  ["fish types","fish product"],
  ["milk","milk protein","milk product"],
  ["peanut","peanut extract","peanut product"],
  ["soy","soy protein","soy product"],
  ["tree nut types","nut extract","nut product"],
  ["wheat","wheat extract","wheat protein", "wheat product" ]
]

Ingredientflag.delete_all

crustacean_shellfishs = ["barnacle","crab","crawfish" ,"krill","lobster","prawns","shrimp"]#7

crustacean_shellfishs.each do |fish|
  ingredient=Ingredientflag.create!(name:fish)
  Foodflag.create!(food:foodflags[0][0],allergy_id:1,ingredientflag_id: ingredient.id)
end

eggs = ["egg", "egg solids","egg wash","egg yolk","egg white"]#12
eggs.each do |egg|
  ingredient=Ingredientflag.create!(name:egg)
  Foodflag.create!(food:foodflags[1][0],allergy_id:2,ingredientflag_id: ingredient.id)
end
egg_proteins = ["albumin","albumen","lysozyme","ovalbumin","surimi" ]#17
egg_proteins.each do |egg|
  ingredient=Ingredientflag.create!(name:egg)
  Foodflag.create!(food:foodflags[1][1],allergy_id:2,ingredientflag_id: ingredient.id)
end
egg_products = [ "eggnog","mayonnaise","meringue"]#20
egg_products.each do |egg|
  ingredient=Ingredientflag.create!(name:egg)
  Foodflag.create!(food:foodflags[1][2],allergy_id:2,ingredientflag_id: ingredient.id)
end

fish_types = ["anchovies","bass","catfish","cod","flounder","grouper","haddock","hake","halibut","herring","mahi mahi","perch","pike","pollock","salmon","scrod","swordfish","sole","snapper","tilapia","trout","tuna"] #42
fish_types.each do |fish|
  ingredient=Ingredientflag.create!(name:fish)
  Foodflag.create!(food:foodflags[2][0],allergy_id:3,ingredientflag_id: ingredient.id)
end

milks = ["buttermilk","cream","ghee","half-and-half", "milk", "dry milk", "goats milk", "powder milk"] #50
milks.each do |milk|
  ingredient=Ingredientflag.create!(name:milk)
  Foodflag.create!(food:foodflags[3][0],allergy_id:4,ingredientflag_id: ingredient.id)
end
milk_proteins=["lactalbumin", "lactalbumin phosphate","llactoferrin","lactose","lactulose","diacetyl","butter acid", "butter ester","casein","casein hydrolysate"] #60
milk_proteins.each do |milk|
  ingredient=Ingredientflag.create!(name:milk)
  Foodflag.create!(food:foodflags[3][1],allergy_id:4,ingredientflag_id: ingredient.id)
end
milk_products=["pudding","sour cream","milk protein hydrolysate","whey","yogurt","milk chocolate","curds","custard","butter","butter fat","butter oil","cheese","ice cream","cottage cheese"] #74
milk_products.each do |milk|
  ingredient=Ingredientflag.create!(name:milk)
  Foodflag.create!(food:foodflags[3][2],allergy_id:4,ingredientflag_id: ingredient.id)
end

peanuts = ["peanut"] #75
peanuts.each do |peanut|
  ingredient=Ingredientflag.create!(name:peanut)
  Foodflag.create!(food:foodflags[4][0],allergy_id:5,ingredientflag_id: ingredient.id)
end
peanut_extracts = ["peanut oil"]#76
peanut_extracts.each do |peanut|
  ingredient=Ingredientflag.create!(name:peanut)
  Foodflag.create!(food:foodflags[4][1],allergy_id:5,ingredientflag_id: ingredient.id)
end
peanut_products = ["peanut butter","peanut flour"]#78
peanut_products.each do |peanut|
  ingredient=Ingredientflag.create!(name:peanut)
  Foodflag.create!(food:foodflags[4][2],allergy_id:5,ingredientflag_id: ingredient.id)
end

soys = ["edamame","soy","soya","soybean"]#82
soys.each do |soy|
  ingredient=Ingredientflag.create!(name:soy)
  Foodflag.create!(food:foodflags[5][0],allergy_id:6,ingredientflag_id: ingredient.id)
end
soy_proteins =["soy protein"]#83
soy_proteins.each do |soy|
  ingredient=Ingredientflag.create!(name:soy)
  Foodflag.create!(food:foodflags[5][1],allergy_id:6,ingredientflag_id: ingredient.id)
end
soy_products =["miso","natto","shoyu","soy sauce","tamari","tempeh","tofu"]#90
soy_products.each do |soy|
  ingredient=Ingredientflag.create!(name:soy)
  Foodflag.create!(food:foodflags[5][2],allergy_id:6,ingredientflag_id: ingredient.id)
end

tree_nut_types = ["almond","brazil nut","beechnut","butternut","cashew","chestnut","chinquapin nut","coconut","filbert","gianduja","ginkgo nut","hickory nut","litchi","lichee","lychee nut","macadamia nut","marzipan","nangai nut","pecan","pesto","pili nut","pine nut","pistachio","shea nut","walnut"] #115
tree_nut_types.each do |nut|
  ingredient=Ingredientflag.create!(name:nut)
  Foodflag.create!(food:foodflags[6][0],allergy_id:7,ingredientflag_id: ingredient.id)
end
nut_extracts = ["almond extract"]
nut_extracts.each do |nut|
    ingredient=Ingredientflag.create!(name:nut)
    Foodflag.create!(food:foodflags[6][1],allergy_id:7,ingredientflag_id: ingredient.id)
  end
nut_products = ["almond butter","cashew butter","praline"]#119
nut_products.each do |nut|
  ingredient=Ingredientflag.create!(name:nut)
  Foodflag.create!(food:foodflags[6][2],allergy_id:7,ingredientflag_id: ingredient.id)
end

wheats = ["club wheat","couscous","durum","bulgur","vital wheat gluten","wheat", "bran", "durum", "germ","grass", "malt", "sprouts","whole wheat berries","wheat grass","seitan","semolina","spelt","sprouted wheat"]#137
wheats.each do |wheat|
  ingredient=Ingredientflag.create!(name:wheat)
  Foodflag.create!(food:foodflags[7][0],allergy_id:8,ingredientflag_id: ingredient.id)
end
wheat_products = ["pretzel","bread","cracker meal","einkorn","emmer","farina","all purpose flour", "bread flour", "cake flour", "durum flour", "enriched flour", "graham flour", "high gluten flour", "high protein flour", "instant flour", "pastry flour", "self-rising flour", "soft wheat flour", "steel ground flour", "stone ground flour", "whole wheat flour","kamut","matzoh", "matzoh meal", "matzo", "matzah", "matza","pasta"]
wheat_products.each do |wheat|
    ingredient=Ingredientflag.create!(name:wheat)
    Foodflag.create!(food:foodflags[7][1],allergy_id:8,ingredientflag_id: ingredient.id)
  end
wheat_proteins = ["wheat protein isolate","hydrolyzed wheat protein", "triticale","gluten","wheat bran hydrolysate"]
wheat_proteins.each do |wheat|
  ingredient=Ingredientflag.create!(name:wheat)
  Foodflag.create!(food:foodflags[7][2],allergy_id:8,ingredientflag_id: ingredient.id)
end
wheat_extracts = ["wheat germ oil","cereal extract"]
wheat_extracts.each do |wheat|
  ingredient=Ingredientflag.create!(name:wheat)
  Foodflag.create!(food:foodflags[7][3],allergy_id:8,ingredientflag_id: ingredient.id)
end


Recipe.delete_all
Recipe.create!(title: "Sugar Cookies", user_id: @user.id, category: "dessert",  ingredients: "2 3/4 cups all-purpose flour, 1 teaspoon baking soda, 1/2 teaspoon baking powder,1 cup butter, softened, 1 1/2 cups white sugar, 1 egg, 1 teaspoon vanilla extract", directions: "Preheat oven to 375 degrees F (190 degrees C). In a small bowl, stir together flour, baking soda, and baking powder. Set aside. In a large bowl, cream together the butter and sugar until smooth. Beat in egg and vanilla. Gradually blend in the dry ingredients. Roll rounded teaspoonfuls of dough into balls, and place onto ungreased cookie sheets. Bake 8 to 10 minutes in the preheated oven, or until golden. Let stand on cookie sheet two minutes before removing to cool on wire racks.", ingredientflag_ids: [144,69,8], picture: File.open("app/assets/images/sugar-cookies.jpg"))

Recipe.create!(title:"pear-blue cheese salad", user_id: @user.id, category:"salad",  ingredients: "1 recipe Holiday Dijon Vinaigrette (see www.bhg.com) or 3/4 cup favorite purchased vinaigrette, 2 tablespoons butter, 1 cup pecan halves, 1 tablespoon sugar, 1/8 teaspoon salt
16 cups torn curly endive (chicory), romaine lettuce, or spinach, 3 ripe pears, cored and thinly sliced, 1 cup crumbled blue cheese", directions: "1. Prepare Holiday Dijon Vinaigrette. In a large skillet melt butter over medium heat. Add pecan halves. Cook 4 to 5 minutes or until pecans are lightly toasted, stirring frequently. Sprinkle sugar and salt over pecans; cook and stir for 1 minute more. Transfer pecans to a medium bowl; cool. 2. In a 6- to 8-quart salad bowl combine curly endive, pears, blue cheese, and half the pecans. Pour Holiday Vinaigrette over salad. Toss gently to coat. Divide among salad plates. Sprinkle with remaining pecans. Makes 8 to 10 servings.",ingredientflag_ids: [72, 69],picture: File.open("app/assets/images/pearbluecheesesalad.jpg"))

Recipe.create!(title:"shrimply divine pasta", user_id: @user.id, category:"entree",  ingredients:"6 ounces mafalda noodles (or other pasta),12 ounces fresh or frozen and thawed medium shrimp, peeled and deveined,1 1/2 teaspoons bottled minced garlic,1 tablespoon olive oil or cooking oil,1 cup chicken broth,1 tablespoon cornstarch,1 teaspoon dried basil, crushed,4 cups prewashed (packaged) baby spinach or torn spinach,Finely shredded Parmesan cheese,Freshly ground black pepper or crushed red pepper", directions:"1. Cook pasta according to the package directions. Drain well; keep pasta warm. 2. Meanwhile, rinse shrimp; pat dry. For sauce, in a large skillet cook garlic in hot oil over medium-high heat for 15 seconds. Add shrimp. Cook and stir for 2 to 3 minutes or until shrimp are opaque. Remove shrimp. Combine chicken broth, cornstarch, and basil. Add to skillet. Cook and stir until thickened and bubbly. Add the spinach. Cook 1 to 2 minutes more, or until wilted. Return the shrimp to skillet; stir to combine. 3.Toss shrimp mixture and pasta together. Pass parmesan cheese and pepper. Makes 4 main-dish servings.", ingredientflag_ids: [165, 7, 72], picture: File.open("app/assets/images/shrimplydivinepasta.jpg"))


Recipe.create!(title:"corn chowder", user_id: @user.id, category:'soup', ingredients: "1 8 ounce tub cream cheese with chives and onions, 1 14 3/4 ounce can cream-style corn, 2 cups milk, 8 ounces smoked turkey breast chopped, 1 cup frozen peas, Ground black pepper", directions: "1.In medium saucepan heat cream cheese over medium heat to soften; blend in corn and milk. Add turkey and peas; heat through. Season to taste with black pepper. Makes 4 (1-1/2 cup) servings.",ingredientflag_ids: [72,44,47],picture: File.open("app/assets/images/cornchowder.jpg"))

Recipe.create!(title:"avocado basil pasta", user_id: @user.id, category:'entree', ingredients: "8 ounces dried bow tie and/or wagon wheel pasta,2 medium avocados, halved, seeded, peeled, and coarsely chopped,6 slices bacon, crisp cooked, drained, and crumbled,2/3 cup chopped fresh basil,2 tablespoons lemon juice,1 tablespoon olive oil,3 cloves garlic, minced,1/4 teaspoon ground black pepper,1/8 teaspoon salt,1/2 cup finely shredded Pecorino Romano cheese", directions: "1.Cook pasta according to package directions. Drain. 2.Meanwhile, in a large bowl combine the avocados, bacon, basil, lemon juice, olive oil, garlic, pepper, and salt. Add the hot pasta and toss to combine. Transfer to a serving bowl. Sprinkle with cheese. Makes 4 servings.", ingredientflag_ids: [165, 72], picture: File.open("app/assets/images/avocadobasilpasta.jpg"))

Recipe.create!(title:"truffled lobster macaroni and cheese", user_id: @user.id, category:'side_dish', ingredients: "12 ounces dried mini bow tie pasta or mini penne pasta,6 slices apple wood-smoked bacon,3 cups sliced fresh cremini mushrooms (8 ounces),2 medium leeks, sliced (2/3 cup),8 ounces cooked lobster meat,* chopped,8 ounces process Gruyere cheese, cut up,1 1/2 cups half-and-half or light cream,1 cup crumbled blue cheese (4 ounces),1 tablespoon truffle-flavor oil,1/8 teaspoon cayenne pepper,1 1/2 cups coarse soft bread crumbs (2 slices),1 tablespoon butter, melted", directions: "1.Preheat oven to 350 degrees F. Grease a 3-quart baking dish; set aside. Cook pasta according to package directions; drain. Return to pan. 2.Meanwhile, in a large skillet, cook bacon over medium heat until crisp. Drain bacon on paper towels, reserving 2 tablespoons drippings in skillet. Crumble bacon; set aside. Add mushrooms and leeks to the reserved drippings; cook about 5 minutes or until tender. 3.Stir crumbled bacon, mushroom mixture, lobster meat, Gruyere cheese, half-and-half, blue cheese, truffle oil, and cayenne pepper into cooked pasta. Transfer mixture to the prepared baking dish. 4.Bake, covered, for 20 minutes. Stir gently. In a small bowl, combine bread crumbs and melted butter; sprinkle over pasta mixture. Bake, uncovered, for 10 to 15 minutes more or until mixture is heated through and crumbs are lightly browned. Let stand for 10 minutes before serving. Makes 6 to 8 servings.", ingredientflag_ids: [144,69,8],picture: File.open("app/assets/images/truffledlobstermaccheese.jpg"))


Recipe.create!(title:"asian pork wraps", user_id: @user.id, category:'appetizer', ingredients: "1 teaspoon onion powder,1 teaspoon ground ginger, 1 teaspoon sugar, 1/2 teaspoon ground cumin,1/2 teaspoon ground allspice,1/4 teaspoon cayenne pepper,1/4 teaspoon salt,2 1/2 pounds boneless pork loin roast,1 teaspoon toasted sesame oil,1 tablespoon canola oil,3/4 cup hoisin sauce, plus more for serving (optional),8 large flour tortillas,2 tablespoons vinegar,1 teaspoon sugar,1/2 teaspoon salt,1/2 teaspoon black pepper,3 tablespoons canola oil,1 teaspoon toasted sesame oil,1 bag (14 oz) coleslaw mix", directions: "1.In a small bowl, combine onion powder, ginger, sugar, cumin, allspice, cayenne pepper and salt. Rub pork with sesame oil, then rub spice mixture into pork. 2. Heat canola oil in a large stainless steel skillet over medium-high heat. Brown pork on all sides, about 3 minutes per side. Transfer to slow cooker. Whisk 1/4 cup of the hoisin sauce with 1 cup water. Pour around pork in slow cooker. Cover and slow cook on HIGH for 41/2 hours or LOW for 6 hours. 3. Remove pork to a large bowl. Shred with 2 forks into large pieces and toss with remaining 1/2 cup hoisin sauce. Slaw 1. In a large bowl, combine rice vinegar, sugar, salt and pepper. Whisk in canola oil and sesame oil. Toss with coleslaw mix. 2. To serve, microwave tortillas for 30 seconds or until heated through. Spread each tortilla with a little additional hoisin sauce, if desired. Top with slaw and shredded pork. Fold up and serve.", ingredientflag_ids: [144], picture: File.open("app/assets/images/asianporkwraps.jpg"))

Recipe.create!(title:"pb chocolate chunk cookies", user_id: @user.id, category:'dessert', ingredients: "2 cups all-purpose flour, 1/2 teaspoon salt,1/2 teaspoon baking soda,1/4 teaspoon baking powder,1/2 cup (1 stick) unsalted butter, softened,1/2 cup creamy peanut butter,3/4 cup packed dark brown sugar,1/2 cup granulated sugar,2 large eggs,1 tablespoon vanilla extract,1 11 ounce bag semisweet chocolate chunks,1 cup dry-roasted peanuts, chopped", directions: "1.Heat oven to 350 degrees. In a medium bowl, blend flour, salt, baking soda and baking powder. Set aside. 2.Cream together butter and peanut butter until smooth. Add both kinds of sugar and beat until fluffy, about 2 minutes. Beat in eggs, one at a time. On low speed, beat in vanilla. 3. Add flour mixture and beat on low speed until combined. Stir in chocolate chunks and peanuts. Drop by scant 1/4 cupfuls onto baking sheets. Bake at 350 degrees for 18 minutes per batch. Cool on wire racks.", ingredientflag_ids: [144,75,8,69],picture: File.open("app/assets/images/pbchocolatechunkcookies.jpg"))


Recipe.create!(title:"molten chocolate pudding cakes", user_id: @user.id, category:'dessert', ingredients: "1 cup unbleached all-purpose flour,1/4 cup sugar,1/2 cup dark brown sugar,1/3 cup unsweetened Dutch-process cocoa powder,1/2 teaspoon baking soda,1 egg,1/2 cup 2% milk,1/2 cup unsweetened applesauce,1/4 cup vegetable oil, 3/4 teaspoon ground cinnamon,1 teaspoon vanilla extract,1 teaspoon fine sea salt,1 ounce bittersweet chocolate",directions: "Preheat the oven to 350 degrees . Whisk together flour, sugar, cocoa powder and baking soda in a medium bowl. In another medium bowl, whisk together egg, milk, applesauce, vegetable oil, ground cinnamon, vanilla extract and sea salt. Make a well in the center of the dry ingredients and gradually whisk in egg mixture until smooth; divide batter among eight oven-safe mugs or ramekins. Break bittersweet chocolate into 8 pieces and press gently into the center of each mug. Bake 20 minutes or microwave one at a time until puffed and just set in the center, 35 to 40 seconds. Dust with powdered sugar if desired and serve warm.", ingredientflag_ids: [144,47,47],picture: File.open("app/assets/images/puddingcakes.jpg"))

Recipe.create!(title:"baked oatmeal", user_id: @user.id, category:'appetizer', ingredients: "2 1/2 cups regular rolled oats,1/4 cup oat bran,1/4 cup steel-cut oats,2 teaspoons baking powder,1/2 teaspoon salt,1/2 teaspoon ground cinnamon,2 cups milk,1 egg, beaten,1/3 cup applesauce,1/4 cup cooking oil,1/4 cup granulated sugar,1/4 cup packed brown sugar,2 cups fresh fruit (such as blueberries; peeled, cored, and chopped pears or apples; or chopped strawberries),Plain or vanilla low-fat yogurt or milk or cream", directions: "1.Preheat oven to 400 degree F. In a large mixing bowl stir together rolled oats, oat bran, steel-cut oats, baking powder, salt, and cinnamon; set aside. 2.In a medium bowl stir together milk, egg, applesauce, oil, and sugars; add to oat mixture, stirring until combined. Turn into a lightly greased 2-quart souffle dish or casserole. 3. Bake, uncovered, for 20 minutes. Stir mixture. Gently fold in fruit. Bake, uncovered, for 20 minutes more or until top is lightly browned. Spoon into bowls. Serve with yogurt, milk, or cream. Makes 6 to 8 servings.", ingredientflag_ids: [47,8],picture: File.open("app/assets/images/oatmeal.jpg"))

Recipe.create!(title:"buffalo chicken salad", user_id: @user.id, category:'appetizer', ingredients: "1 1/2 pounds boneless skinless chicken breasts,2 large ribs celery, diced, plus more, cut into sticks, for dipping,1/4 cup buttermilk,1/4 cup light mayo,1/4 cup mild Buffalo sauce,1/4 cup chopped chives,2 tablespoons chopped dill Carrot sticks, for dipping", directions:"1. Bring a large, lidded pot of water to a low simmer. Add chicken breasts; cover and poach 10 minutes or until cooked through. Cool slightly. Dice and place in a large bowl with diced celery. 2. In a separate bowl, whisk together buttermilk, light mayo, Buffalo sauce, chives and dill. Pour into bowl with chicken. Mix well. Serve with celery and carrot sticks.", ingredientflag_ids: [19,43],picture: File.open("app/assets/images/buffalochickensalad.jpg" ))

Recipe.create!(title:"summer breeze lime pie", user_id: @user.id, category:'appetizer', ingredients: "4 cups pretzels (6 ounces),1/2 cup packed brown sugar,1/2 cup butter, melted,1 8 ounce package cream cheese, softened,1 10 ounce jar lime curd (about 1 cup),1 - 2 teaspoons finely shredded lime peel,1 - 2 tablespoons lime juice,2 cups whipping cream,1/4 cup powdered sugar,1/2 teaspoon vanilla,Fresh raspberries,Finely shredded lime peel (optional)", directions: "1.In a food processor, place pretzels. Cover and process till mixture resembles fine crumbs. You should have 1-1/2 cups. Add brown sugar and process till combined. Add butter and process till mixture holds together. (Or, in a medium bowl stir together 1 1/2 cups finely crushed pretzels, brown sugar, and butter till mixture holds together). Press mixture evenly onto bottom and sides of a 10-inch pie plate or 2-quart square baking dish. Press to form an even crust. Chill in refrigerator while preparing filling. 2.For filling, in a large bowl, beat cream cheese, lime curd, 1 to 2 teaspoons lime peel, and lime juice with an electric mixer on medium speed till light and fluffy. In another large bowl, beat whipping cream with an electric mixer on medium speed till soft peaks form. Add powdered sugar and vanilla. Beat till stiff peaks form. Fold about 1/4 of the whipped cream into cream cheese mixture to soften; fold in remaining whipped cream. Spoon filling into chilled crust and chill for 2 to 24 hours or till firm. Before serving, sprinkle with fresh raspberries and additional lime peel, if you like. Makes 8 servings.", ingredientflag_ids: [72,138, 44], picture: File.open("app/assets/images/summerbreezelimepie.jpg"))

Recipe.create!(title:"bbq beef brisket", user_id: @user.id, category:'appetizer', ingredients: "2 tablespoons packed dark brown sugar,1 tablespoon Italian seasoning,1 teaspoon onion powder,1/4 teaspoon salt,1/4 teaspoon black pepper,3 pounds natural beef brisket,2 1/2 cups beef broth,3 tablespoons molasses,2 tablespoons Worcestershire sauce, 3 dashes liquid smoke (optional),2 tablespoons cornstarch,1 tablespoon white vinegar,8 onion rolls,2 cups prepared creamy coleslaw", directions:"1.In small bowl, combine brown sugar, Italian seasoning, onion powder, salt and pepper. Rub onto brisket and place in slow cooker. 2.In a bowl, whisk broth, molasses, Worcestershire and, if desired, liquid smoke. Add to slow cooker. Slow cook on HIGH for 6 hours or LOW for 8 hours. 3.Carefully remove brisket from slow cooker and shred with 2 forks. In a small bowl, combine 1/4 cup water, cornstarch and vinegar. Strain liquid in slow cooker into a saucepan and add cornstarch mixture. Bring to a boil over medium-high heat and cook 3 minutes, until thickened and clear. Combine 5 cups of the sauce with brisket in a large bowl. Let stand, covered, for 15 minutes. 4.Split onion rolls and fill with brisket and coleslaw. Serve immediately.", picture: File.open("app/assets/images/bbqbeefbrisket.jpg" ))

Recipe.create!(title:"nanking cherry jelly", user_id: @user.id, category:'breakfast', ingredients: "3 1/2- 4 pounds fully ripe fresh Nanking cherries, fresh tart red cherries, or 3 16-ounce packages frozen pitted tart or sweet red cherries, 1 1 3/4 ounce package regular powdered fruit pectin, 4 1/2 cups sugar", directions: "1. Wash fresh cherries with cool tap water but do not soak; drain. Stem cherries and place in an 8- to 10-quart heavy Dutch oven or kettle. Barely cover cherries with water (about 3 1/2 cups). Bring to a simmer (do not boil as flavor will be less). Simmer, uncovered, about 20 minutes or until soft and the skin on the cherries starts to split, mashing cherries with a potato masher during cooking. Remove from heat. 2. Place a fine mesh sieve over a large bowl. Ladle cherry mixture into the sieve. Using the back of a large spoon, press cherries through the sieve; discard seeds and cooked skins. Place the sieve or a colander lined with four layers of 100-percent-cotton cheesecloth over a large bowl. Strain cherry juice; do not squeeze cheesecloth if you want a clear jelly. Measure 3 1/2 cups liquid. Discard pulp. 3. In a 4-quart heavy Dutch oven or kettle, stir together the 3 1/2 cups strained liquid and the pectin. Heat on high, stirring constantly, until mixture comes to a full rolling boil (bubbles break the surface so rapidly you cant stir them down). Add sugar; stir to combine. Return to boiling; boil for 1 minute, stirring constantly. Remove from heat; quickly skim off foam by gently scooping off the top with a metal spoon. 4. Ladle into hot, sterilized* half-pint standard canning jars, leaving a 1/4-inch headspace. Wipe rims; adjust lids. Process jelly in a boiling-water bath canner for 5 minutes (start timing when water returns to boiling and keep the water boiling gently during processing). 5.Remove jars; cool on wire racks. When jars are completely cool (12 to 24 hours), press the center of each lid to check the seal. If dip in lid holds, the jar is sealed. If lid bounces up and down, the jar isnt sealed. (The contents of unsealed jars can be refrigerated and used within two to three days or reprocessed within 24 hours.", picture: File.open("app/assets/images/cherryjelly.jpg"))

Recipe.create!(title:"crispy smashed roasted potatoes", user_id: @user.id, category:'side_dish', ingredients: "12 - 15 baby red or yellow potatoes (about 1-1/2 ounces each; 1-1/2 to 2 inches in diameter),2 3/4 teaspoons kosher salt,1/2 cup extra-virgin olive oil", directions: "1.Boil the potatoes: Put the potatoes in a large saucepan (preferably in one layer) and cover with at least an inch of water. Add 2 teaspoons kosher salt to the water. Bring the water to a boil over high heat, reduce to a simmer, and cook the potatoes until they are completely tender and can be easily pierced with a metal or wood skewer. Make sure they are cooked through but don't overcook. The total cooking time will be 30 to 35 minutes. 2.While the potatoes are cooking, set up a double layer of clean dishtowels on your countertop. As the potatoes finish cooking, remove them individually from the water, and let them drain and sit for just a minute or two on the dishtowels. 3.Flatten and cool the potatoes: Fold another dishtowel into quarters, and using it as a cover, gently press down on one potato with the palm of your hand to flatten it to a thickness of about 1/2 inch. Repeat with all the potatoes. Don't worry if some break apart a bit; you can still use them.4. Cover a large rimmed baking sheet with aluminum foil; put a sheet of parchment on top of the foil. Transfer the flattened potatoes carefully to the baking sheet and let them cool completely at room temperature. 5.Roast the potatoes: Remove the pan of potatoes from the refrigerator, if prepared ahead. Heat the oven to 450 degrees F. Alternatively, if you have a convection function, turn it on and set the temperature at 400 degrees F. Sprinkle the potatoes with about 3/4 teaspoon salt and pour the olive oil over them. Lift the potatoes gently to make sure some of the oil goes underneath them and that they are well coated on both sides. Roast the potatoes until they're crispy and deep brown around the edges, about 30 minutes if using a convection oven, 30 to 40 minutes if roasting conventionally, turning over once gently with a spatula or tongs halfway through cooking. Serve hot. Make Ahead: 1. Do the busy work--boiling and flattening the potatoes--up to 8 hours ahead. Let potatoes cool completely, and store them on the pan, lightly covered, in the fridge. Then all you have to do at the last minute is coat with oil and salt and roast.", picture: File.open("app/assets/images/potatoe.jpg"))

Recipe.create!(title:"roasted asparagus", user_id: @user.id, category:'side_dish', ingredients: "1 pound fresh green asparagus,1 pound fresh white asparagus*, 3 tablespoons olive oil, 2 cloves garlic, minced, 1/4 teaspoon salt, 1/4 teaspoon ground black pepper, 2 tablespoons balsamic vinegar", directions: "1. *If white asparagus is not available, use 2 pounds green asparagus. 2. Preheat oven to 450 degrees. 3. Snap off tough ends of asparagus; discard tough ends.4. Line a 15-x-10-x-1-inch jellyroll pan with aluminum foil. Place asparagus in a single layer on foil. 5. In a small bowl, combine oil, garlic, salt, and pepper; drizzle over asparagus. 6. Bake for 8 to 10 minutes, or until crisp-tender. Remove from oven; drizzle evenly with vinegar.",picture: File.open("app/assets/images/roastedasparagus.jpg"))

Recipe.create!(title:"beef pot roast", user_id: @user.id, category:'entree', ingredients: "1 1 1/2- 2 pound beef chuck pot roast,1 teaspoon lemon-pepper seasoning or 1/2 teaspoon cracked black pepper,1 tablespoon cooking oil,1/2 cup water, 1/4 cup tomato juice, 1/4 cup dry white wine, beef broth, or water, 1 teaspoon instant beef bouillon granules, 1/2 teaspoon dried thyme, crushed, 4 medium carrots, cut into 1-1/2-inch pieces, 2 medium potatoes, peeled and quartered, 1 medium onion, cut into wedges, 1/3 cup cold water, 3 tablespoons all-purpose flour", directions: "1. Trim separable fat from roast. Rub 1 side with lemon-pepper seasoning. In a Dutch oven brown roast on all sides in hot oil. Drain off fat.2. Combine the 1/2 cup water; tomato juice; wine, beef broth, or water; bouillon granules; and thyme. Pour around roast in Dutch oven. Bring to boiling; reduce heat. Cover and simmer 1 hour. (Or, bake, covered, in a 325 degree F oven 1 hour.)3. Add carrots, potatoes, and onion to meat. Cover; simmer or bake 45 to 60 minutes more or until tender, adding additional water, if necessary. Use a slotted spoon to remove meat and vegetables; keep warm. 4. For gravy, pour pan juices into a large measuring cup. Skim off fat; discard. If necessary, add water to pan juices to equal 1-1/4 cups. Return liquid to Dutch oven. Combine cold water and flour. Stir into juices in Dutch oven. Cook and stir until thickened and bubbly. Cook and stir 1 minute more. Serve with meat and vegetables. Makes 4 to 6 servings.", ingredientflag_ids: [144], picture: File.open("app/assets/images/beefpotroast.jpeg"))








