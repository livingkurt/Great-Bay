const mysql = require("mysql");
require("dotenv").config()


const connection = mysql.createConnection({
    host: "localhost",
    port: 3306,
    user: "root",
    password: "dbpassword",
    database: "process.env.DB_PASSWORD"
});