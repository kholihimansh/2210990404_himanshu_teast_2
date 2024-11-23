
import UIKit

class recipeTableViewController: UITableViewController {

    //breakfast, lunch, dinner, snacks

    let meals: [Meal] = [
        Meal(recipename: "Pizza",
             caloriecount: 100,
             preparationTime: 10,
             thumbnailimage: nil),
        Meal(recipename: "Pasta",
             caloriecount: 200,
             preparationTime: 30,
             thumbnailimage: nil),
        Meal(recipename: "Chocolate Chip Cookies",
             caloriecount: 300,
             preparationTime: 25,
             thumbnailimage: nil),
        Meal(recipename: "Sushi",
             caloriecount: 400,
             preparationTime: 60,
             thumbnailimage: nil),
        Meal(recipename: "Burger",
             caloriecount: 500,
             preparationTime: 20,
             thumbnailimage: nil),
        Meal(recipename: "Ice Cream",
             caloriecount: 600,
             preparationTime: 15,
             thumbnailimage: nil),
        Meal(recipename: "Taco",
             caloriecount: 700,
             preparationTime: 20,
             thumbnailimage: nil),
        Meal(recipename: "Ramen",
             caloriecount: 800,
             preparationTime: 40,
             thumbnailimage: nil),
        Meal(recipename: "Steak",
             caloriecount: 900,
             preparationTime: 30,
             thumbnailimage: nil),
        Meal(recipename: "Coffee",
             caloriecount: 5,
             preparationTime: 10,
             thumbnailimage: nil),
        Meal(recipename: "Taco",
             caloriecount: 700,
             preparationTime: 20,
             thumbnailimage: nil),
        Meal(recipename: "Ramen",
             caloriecount: 800,
             preparationTime: 40,
             thumbnailimage: nil),
        Meal(recipename: "Steak",
             caloriecount: 900,
             preparationTime: 30,
             thumbnailimage: nil),
        Meal(recipename: "Coffee",
             caloriecount: 5,
             preparationTime: 10,
             thumbnailimage: nil)
    ]
    override func viewDidLoad() {
           super.viewDidLoad()
           title = "Meal Plan"
           tableView.register(UITableViewCell.self, forCellReuseIdentifier: "MealCell")
       }
    override func numberOfSections(in tableView: UITableView) -> Int {return 1
    }
       override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
           return meals.count
       }

       override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
           let cell = tableView.dequeueReusableCell(withIdentifier: "MealCell", for: indexPath)
           let meal = meals[indexPath.row]

           cell.textLabel?.text = meal.recipename
           cell.detailTextLabel?.text = "Calories: \(meal.caloriecount), Time: \(meal.preparationTime) mins"

           if let thumbnail = meal.thumbnailimage {
               cell.imageView?.image = thumbnail
           } else {
               cell.imageView?.image = UIImage(systemName: "photo")
           }

           return cell
       }}
