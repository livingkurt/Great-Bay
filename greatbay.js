require("dotenv").config();
const mysql = require("mysql");
const inquirer = require("inquirer");

const connection = mysql.createConnection({
    host: "localhost",
    port: 3306,
    user: "root",
    database: "great_bay_db",
    password: process.env.DB_PASSWORD
})

connection.connect(function (err) {
    console.log(connection.threadId);
})

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