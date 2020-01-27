var mysql = require("mysql");
require("dotenv").config();

var connection = mysql.createConnection({
    host: "localhost",

    // Your port; if not 3306
    port: 3306,

    // Your username
    user: "root",

    // Your password
    password: process.env.DB_PASSWORD,
    database: "greatBay_db"
});

connection.connect(function (err) {
    if (err) throw err;
    console.log("connected as id " + connection.threadId);
    createRock();
});

function createRock() {
    console.log("Inserting a new product...\n");
    connection.query(
        "INSERT INTO songs SET ?",
        {
            title: "When the Levee Breaks",
            artist: "Led Zeppelin",
            genre: "rock"
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
    connection.query("SELECT * FROM songs", function (err, res) {
        if (err) throw err;
        console.log(res);
        connection.end();
    })
};