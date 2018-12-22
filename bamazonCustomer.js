var inquirer = require("inquirer");
var mysql = require("mysql");

var connection = mysql.createConnection({
    host: "localhost",
    port: 3306,
    user: "root",
    password: "root",
    database: "bamazon_db"
});


connection.connect(function (err) {
    if (err) throw err;
});

function start() {
    inquirer
        .prompt([
            {
                type: "action",
                name: "list",
                message: "Welcome to Bamazon! How can we help you?",
                choice: ["View our inventory", "Quit"],

            }
        ]).then(function (user) {
            if (user.choice === "Quit") {
                console.log("Good Bye! Come back soon!")
            } else if (user.choice === "View our inventory") {
                inventory();
            } 
        })
}

function inventory() {
    var table = new Table({
        head: ["ID", "Name", "Category", "Price", "Quantity"]
    });

    var inventoryView = function () {
        connection.query("SELECT * FROM items", function (err, res) {
            if (err) throw err;
            table.push(["ID", "Name", "Category", "Price", "Quantity"]);
            
            console.log("");
            console.log("==== Bamazon's current inventory ===");
            console.log("");
     


        })
    }
    inventoryView ();
}




