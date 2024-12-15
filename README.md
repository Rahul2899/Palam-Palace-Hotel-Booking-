# Palam Palace (Hotel Booking) Project

## Overview
Palam Palace is a Java-based hotel booking application that uses a web architecture. It is designed with a Model-View-Controller (MVC) pattern and integrates Servlets, JSP, and a MySQL database for handling backend operations. This project can be deployed on a local machine using Apache Tomcat and Maven.

---

## Prerequisites

### Required Software
1. **Java Development Kit (JDK):**
   - Download and install the JDK ([Oracle JDK](https://www.oracle.com/java/technologies/javase-downloads.html) or [OpenJDK](https://openjdk.org/)).
   - Ensure `java` and `javac` are in your system's PATH.

   Verify installation:
   ```bash
   java -version
   javac -version
   ```

2. **Apache Tomcat:**
   - Download from [Apache Tomcat](https://tomcat.apache.org/).
   - Extract and set up the `CATALINA_HOME` environment variable.

3. **Maven:**
   - Download and install Maven from [Apache Maven](https://maven.apache.org/).
   - Verify installation:
     ```bash
     mvn -version
     ```

4. **MySQL Database:**
   - Install MySQL Server and MySQL Workbench.
   - Ensure the MySQL service is running.

5. **Git (Optional):**
   - To upload or manage the project on GitHub, install Git.

6. **IDE:**
   - Use an IDE like **IntelliJ IDEA**, **Eclipse**, or **VS Code** (with Java extensions).

---

## Project Structure
```
Palam_Palace_Project/
├── src/
│   ├── com/palam/controller/    # Contains servlet controllers.
│   ├── com/palam/dao/           # Data Access Objects for database operations.
│   ├── com/palam/model/         # Java classes representing the application's data model.
│   ├── com/palam/utility/       # Utility classes for reusable functions.
├── WebContent/
│   ├── WEB-INF/                 # Contains configuration files (e.g., web.xml).
│   ├── JSP files, CSS, JS       # Frontend files.
├── pom.xml                      # Maven configuration file.
└── README.md                    # Project documentation.
```

---

## Setup Instructions

### 1. Clone or Download the Repository
- If uploaded to GitHub, clone the repository:
  ```bash
  git clone https://github.com/<your-username>/<repository-name>.git
  ```

- Alternatively, download the project as a ZIP and extract it.

### 2. Set Up the Database
1. Open **MySQL Workbench** or any database client.
2. Create a new database (e.g., `palam_palace`):
   ```sql
   CREATE DATABASE palam_palace;
   ```
3. Import the database:
   - Locate the `.sql` file in the project directory.
   - Use the **Import** feature in your database client to load the database schema and data.

### 3. Update Database Configuration
- Locate the `config.properties` or equivalent file (e.g., `config.java` or `DBConnection.java`).
- Update database credentials:
  ```properties
  db.url=jdbc:mysql://localhost:3306/palam_palace
  db.username=root
  db.password=your_password
  ```

### 4. Build the Project with Maven
- Navigate to the project directory where `pom.xml` is located.
- Run the following commands:
  ```bash
  mvn clean install
  ```
- This will compile the code and generate a `.war` file in the `target/` folder.

### 5. Deploy the Application on Tomcat
1. Copy the `.war` file (e.g., `plampalace1.war`) from the `target/` directory.
2. Paste it into the `webapps` folder of your Tomcat installation.
3. Start the Tomcat server:
   - On Windows: Run `startup.bat` from the `bin/` folder.
   - On Linux/Mac: Run `./startup.sh` from the `bin/` folder.
4. Access the application in your browser:
   ```
   http://localhost:8080/plampalace1/
   ```

---

## Debugging the Application
1. Open the project in your IDE.
2. Set breakpoints in the Java files.
3. Attach the debugger to the Tomcat server.
4. Use the browser to trigger actions, and inspect the application's behavior.

---

## Key Files to Note
- **`web.xml`**:
  Located at `WebContent/WEB-INF/web.xml`, this file defines servlet mappings and entry points.

- **Database Files**:
  Look for the `.sql` file in the root or `resources` folder for database schema and sample data.

---

## Features
- Hotel booking and management system.
- Backend powered by Java Servlets.
- Frontend using JSP, CSS, and JavaScript.
- MySQL database integration for data persistence.

---

## Contribution
1. Fork the repository.
2. Create a new branch:
   ```bash
   git checkout -b feature/your-feature-name
   ```
3. Commit and push your changes.
4. Create a Pull Request.

---

## License
This project is licensed under the MIT License. See `LICENSE` for details.
