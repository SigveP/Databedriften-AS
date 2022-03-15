### Lage bruker

1. Åpne server Manager

![](Images\2022-03-15-12-35-25-image.png)

2. Trykk Tools

![](Images\2022-03-15-12-35-50-image.png)

3. Trykk Active Directory Users and Computers

4. Trykk på OU-en den nye brukeren hører til

![](Images\2022-03-15-12-37-40-image.png)

5. Høyreklikk en bruker

6. Trykk `Copy...`

7. Fyll ut informasjonen til den nye brukeren

![](Images\2022-03-15-12-38-36-image.png)

_Husk å bruke navnestandarden_

**Bilder hentet fra:**

[Basiskonfigurasjon av Windows Server - Informasjonsteknologi (IM-ITK vg2) - BETA - NDLA](https://ndla.no/subject:1:83cd145e-3412-4f06-8de6-961bae9ff452/topic:1:c2c479d4-421a-45c7-8d2c-bff5f4c46c80/topic:1:4520c763-ccea-4897-a2bd-7a7ddabea88a/topic:1:4584b191-d4d7-4557-bb93-450d66431749/resource:4e308c45-6048-4638-9bbf-7c8d8a01cd8a)

[What is Active Directory Users and Computers Console? - Windows Server Technology
(windowstechno.com)](https://www.windowstechno.com/what-is-active-directory-users-and-computers-console/)

[How to Create a New Active Directory User Account - Active Directory Pro](https://activedirectorypro.com/how-to-create-a-new-active-directory-user-account/)

### Slette bruker

1. Åpne Excel

2. Skriv `Identity` i rute A1

3. Fyll resten av A med brukerne som skal bli slettet

![](Images\2022-03-15-12-42-51-image.png)

_eksempel på hvordan det kan se ut_

4. Eksporter filen som CSV

![](Images\2022-03-15-12-43-21-image.png)

5. Kjør PowerShell scriptet under

![](Images\2022-03-15-12-43-49-image.png)

6. Skriv inn filbanen til CSV-filen
