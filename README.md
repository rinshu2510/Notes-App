# Notes-app
## Created using HTML, CSS in front-end, JAVA JSP, Servlet, JDBC in backend and mySQL for database.
### To use it clone the repository on your pc and create a new database in mysql workbench and create two tables in it namely user and post.
### Edit the file Notes_App/src/main/java/com/Db/DBConnect.java with your mySQL workbench credentials.
```
conn=DriverManager.getConnection("jdbc:mysql://{host_address:port}/{database_name}","{username}","{password}");
```
### Properties of WebApp
- Has user login and register facility.
- User can save his notes and access it.
- User can edit and delete his notes anytime.

## Contributing
Pull requests are welcome. For major changes, please open an issue first to discuss what you would like to change.

Please make sure to update tests as appropriate.
