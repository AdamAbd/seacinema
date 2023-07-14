require("dotenv").config();

const { DB_HOSTNAME, DB_PASSWORD, DB_USERNAME, DB_NAME, DB_DIALECT } = process.env;

module.exports = {
    development: {
        username: DB_USERNAME,
        password: DB_PASSWORD,
        database: DB_NAME,
        host: DB_HOSTNAME,
        dialect: DB_DIALECT,
        define: {
            timestamps: false
        }
    },
    test: {
        username: DB_USERNAME,
        password: DB_PASSWORD,
        database: DB_NAME,
        host: DB_HOSTNAME,
        dialect: DB_DIALECT,
        define: {
            timestamps: false
        }
    },
    production: {
        username: DB_USERNAME,
        password: DB_PASSWORD,
        database: DB_NAME,
        host: DB_HOSTNAME,
        dialect: DB_DIALECT,
        define: {
            timestamps: false
        }
    },
};