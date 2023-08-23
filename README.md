# Useful and Invasive Plants in Ohio

## Instructions for Application Setup

- Using Chocolaty within a PowerShell type `choco install mysql`
- Type `mysql -u root -e "CREATE DATABASE uip"` into gitBash
- Boot UIP for <http://localhost:8080/>
- `cd UsefulandInvasivePlants` and type `npm start` into Terminal to boot slides at <http://localhost:3000/>

## Functionality

Useful and Invasive Plants is a plant identification tool to assist in identifying your local ecosystem.

- Register an account and log in to save collections of plants in your local area
- Search for plants with multiple images, for leaf and flower/fruit identification
- Every invasive plant listed by the Ohio Department of Agriculture is cataloged
- Native plants from multiple lists on <https://www.ohionativeplantmonth.org/native-plant-list> are cataloged
- Ability for registered users to upload new plants to be added to the database pending review by curators

## Endpoints

### Plant Endpoints

Request body example -- -d `{"commonName":"test","scientificName":"scientific test","description":"concise description test","isInvasive":false,"isNative":true,"color":"Red","imageFruitURL":"test/url.jpg","imageLeafURL":"test/url.jpg","imageFruitSource":"test source1","imageLeafSource":"test source2","plantID":-1,"wikiLink":"https://en.wikipedia.org"}`

- GET ALL PLANTS -- `curl -s http://localhost:8080/api/plants -H 'Content-Type: application/json`
