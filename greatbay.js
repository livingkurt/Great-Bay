require("dotenv").config();
const mysql = require("mysql");
const connection = mysql.createConnection({
    host: "localhost",
    port: 3306,
    user: "root",
    database: "greatBay_db",
    password: process.env.DB_PASSWORD
})

connection.connect(function(err){
    console.log(connection.threadId);
    post()
})

item_name = "Hello"
item_price = 10.10
starting_bid = 12.10

function post() {
    connection.query(
        "INSERT INTO items SET ?",
        {
            itemName: `${item_name}`,
            currentBid: `${item_price}`,
            startingBid: `${starting_bid}`
        },
        function (err, res) {
            if (err) throw err;
            console.log(res.affectedRows + " song inserted!\n");
            // Call updateProduct AFTER the INSERT completes
            afterConnection();
        }
    );
};

function afterConnection() {
    connection.query("SELECT * FROM items", function (err, res) {
        if (err) throw err;
        console.log(res);
        connection.end();
    })
};