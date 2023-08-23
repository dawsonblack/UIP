# Useful and Invasive Plants in Ohio

## Created By

- Abdikarim Farah ![Abdikarim](/src/main/resources/static/images/abdi-headshot.jpg)
- Dawson Black ![Dawson](/src/main/resources/static/images/Dawson_headshot.jpg)
- Robert Johnson ![Robert](/src/main/resources/static/images/Robert_headshot.jpg)
- Siman Farah ![Siman](/src/main/resources/static/images/Siman_headshot.png)

---

## Technologies Used Mindmap

```mermaid
%%{init: {'theme':'forest'}}%%


mindmap
    root((Developer))
        Languages
            Java
            JavaScript
            HTML
            CSS
            SQL
            Markdown
        Tools
            IDE
            MySQL
            Git
            ChatGPT
            Canva
            Sli.dev
        Libraries
            Spring Security
            REST/HATEOS
            React useState/useEffect
        Frameworks
            SpringBoot
            React

```

---

## Flow of Data

```mermaid
sequenceDiagram

actor User
participant React
participant RestController
participant Service
participant CrudRepository
participant MySQL
participant data.sql


data.sql -->> MySQL: Loads information into database on boot
note over MySQL: Has a plant, user, and userUpload tables in database
note over React: Uses npm to manage packages and to display a frontend

User -->> React: Search for plants
React -->> RestController: API request
RestController -->> Service: Asks for data from API request
note over Service: Service connects all the separate pieces

Service -->> CrudRepository: Asks for data from API request
CrudRepository -->> MySQL: Uses SQL to request the saved data

MySQL -->> CrudRepository: Loads requested data
note over CrudRepository: Data is transformed into an object
CrudRepository -->> Service: Object received with JPA

Service -->> RestController: Sends requested object to API endpoint
RestController -->> React: Takes the object opens it
React -->> User: Displays requested data

```

---

## Languages

### Java

### JavaScript

### HTML

### CSS

### SQL

### Markdown

---

## Tools

### IDE

### MySQL

### Git

### ChatGPT

### Canva

### Sli.dev

---

## Libraries

### Spring Security

### REST/HATEOS

### React useEffect/useState

---

## Frameworks

### SpringBoot

### React

---
