[**< Tilbake til forsiden**](index.md)

## VirtualBox

<img src="Images/2022-03-16-18-23-01-image.png" title="" alt="" width="508">

### Installasjon av VirtualBox

**Gå inn på [https://virtualbox.org](https://virtualbox.org)**

<img src="Images/2022-03-16-17-40-40-image.png" title="" alt="" width="509">

**Trykk Download VirtualBox**

<img title="" src="Images/2022-03-16-17-41-47-image.png" alt="" width="382">

**Trykk operativsystemet du bruker**

**Kjør filen**

**Velg innstillingene du vil ha**

### Lage virtuell maskin

**Trykk New**

<img src="Images/2022-03-16-17-46-49-image.png" title="" alt="" width="544">

**Velg Expert Mode**

<img src="Images/2022-03-16-17-47-41-image.png" title="" alt="" width="456">

**Fyll ut navn, plassering, operativsystem og minne**

**Trykk Create**

<img src="Images/2022-03-16-17-49-19-image.png" title="" alt="" width="454">

**Velg harddisk størrelse**

**Trykk Create**

<img src="Images/2022-03-16-17-50-18-image.png" title="" alt="" width="450">

**Trykk på den tomme "IDE device"-en under storage**

**Trykk Choose a disk file...**

<img src="Images/2022-03-16-17-57-41-image.png" title="" alt="" width="468">

**Velg en iso-fil og trykk åpne**

<img title="" src="Images/2022-03-16-17-58-47-image.png" alt="" width="485">

**Konfigurer andre ting du trenger på maskinen f.eks. nettverk og lagring**

**Trykk Start**

![](Images\2022-03-16-18-20-17-image.png)

### Gruppere virtuell maskin

**Høyreklikk maskinen**

**Trykk Group**

<img src="Images/2022-03-16-17-53-03-image.png" title="" alt="" width="469">

**Høyreklikk gruppen**

**Trykk Rename Group...**

<img src="Images/2022-03-16-17-54-36-image.png" title="" alt="" width="462">

**Skriv inn nytt navn og trykk enter**

<img src="Images/2022-03-16-17-55-34-image.png" title="" alt="" width="459">

## Konfigurasjon av virtuell maskin

**Gå inn på innstillingene til maskinen**

<img src="Images/2022-03-16-18-00-52-image.png" title="" alt="" width="450">

### Nettverk

**Velg Network på sidemenyen**

![](Images\2022-03-16-18-01-27-image.png)

**Velg hvilke type nettverk du skal ha**

| Nettverkstype | Kobling                            |
| ------------- | ---------------------------------- |
| NAT           | Direkte til internett              |
| Bridge        | Til nettverket                     |
| Internal      | Til et internt nettverk            |
| Host-only     | Til maskinen som kjører VirtualBox |
| Not attached  | Ingenting                          |

_Tabell over vanlige VirtualBox nettverk_

**Legg til flere adaptere hvis du trenger**

<img title="" src="Images/2022-03-16-18-07-12-image.png" alt="" width="473">

### Harddisk

**Velg Storage fra sidemenyen**

<img src="Images/2022-03-16-18-13-46-image.png" title="" alt="" width="470">

**Trykk harddisken med +**

**Trykk Create**

<img src="Images/2022-03-16-18-15-46-image.png" title="" alt="" width="473">

**Velg innstillingene du vil ha**

**Etter du er ferdig med å lage harddisken trykk Choose**

### Minne og kjerner

**Velg System fra sidemenyen**

**Velg hvor mye ram du skal ha**

<img src="Images/2022-03-16-18-17-55-image.png" title="" alt="" width="529">

**Trykk Processor**

**Velg hvor mange kjerner du vil ha**

<img src="Images/2022-03-16-18-19-21-image.png" title="" alt="" width="524">
