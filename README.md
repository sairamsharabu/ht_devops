# HT-DevOps

Here is your cleaned README.md version (no emojis, no separator lines, clean professional format):

# Maven Build Process Explained (DevOps Guide)

## Why do we need Maven?

You can create a JAR file without Maven using manual commands like:

```bash
javac MyApp.java
jar -cvf app.jar *.class

But in real-world projects, this becomes difficult because:

Projects have hundreds of files
External dependencies (Spring Boot, logging, JSON, etc.)
Test cases need execution
Build process must be automated and repeatable

Maven solves all of these problems by automating the build lifecycle.

Why not create JAR directly without Maven?
Without Maven	With Maven
Manual compilation	Automated compilation
Manual dependency management	Auto dependency download
No standard structure	Standard project structure
Error-prone	Reliable builds
Not scalable	Enterprise-ready
What is POM.xml?

POM stands for Project Object Model.

It is the main configuration file of a Maven project.

It defines project details, dependencies, and build configuration.

1. Project details
<groupId>com.devops</groupId>
<artifactId>demo-app</artifactId>
<version>1.0</version>
2. Dependencies
<dependency>
  <groupId>org.springframework.boot</groupId>
  <artifactId>spring-boot-starter-web</artifactId>
</dependency>

This tells Maven to download required libraries automatically from Maven Central Repository.

3. Build configuration
<build>
  <plugins>
    <plugin>
      <artifactId>spring-boot-maven-plugin</artifactId>
    </plugin>
  </plugins>
</build>

This defines how the final JAR or WAR file should be created.

What happens when we run mvn clean package

This command executes multiple phases internally.

1. Read POM.xml

Maven first reads the pom.xml file which contains all build instructions.

2. Clean phase

Deletes old build files such as the target folder.

3. Dependency resolution

Downloads required libraries from Maven Central Repository.

Downloaded dependencies are stored in:

~/.m2/repository
4. Compile phase

Compiles Java source code from:

src/main/java

Output is generated in:

target/classes
5. Test phase

Runs unit tests from:

src/test/java
6. Package phase

Creates final deployable artifact:

target/demo-app-1.0.jar
7. Spring Boot packaging (if used)

If Spring Boot Maven plugin is configured, Maven:

Bundles dependencies inside the JAR
Adds embedded server like Tomcat
Creates an executable fat JAR
Simple Analogy

Think of Maven like a delivery system.

Maven Step	Meaning
pom.xml	Order details
Dependencies	Items from suppliers
Compile	Packing items
Package	Final delivery box
target JAR	Delivered package
Final Summary

Maven is used to automate build, dependency management, and packaging.

POM.xml is the configuration file that tells Maven what to build and how to build it.

When you run mvn clean package:

Maven reads pom.xml
Cleans old builds
Downloads dependencies
Compiles code
Runs tests
Packages application into a JAR file
Output

The final build artifact is created at:

target/demo-app-1.0.jar

---

If you want next, I can also :contentReference[oaicite:0]{index=0} or :contentReference[oaicite:1]{index=1}.