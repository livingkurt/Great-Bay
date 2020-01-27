/*===================================================================
    Welcome to the Great Bay! For all of your pharmaceutical needs!
================================================================== */

require("dotenv").config();
const mysql = require("mysql");
const inquirer = require("inquirer");


// When the user runs node index.js, this prompts the user.
inquirer
    .prompt([
        // Main Menu
        type: "list",
        name: "mainMenu",
        message: "Welcome to the Great Bay. Please choose one of the options below."
        choices: [
            "List an item",
            "Bid on an item",
            "Exit"
        ]
    ])