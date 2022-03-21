[**< Tilbake til forsiden**](index.md)

# VirtualBox

<img src="images/virtualbox_overview.png" title="" alt="" width="508">

## Installasjon av VirtualBox

**Gå inn på [https://virtualbox.org](https://virtualbox.org)**

<img src="images/virtualbox_website.png" title="" alt="" width="509">

**Trykk Download VirtualBox**

<img title="" src="images/virtualbox_website_download.png" alt="" width="382">

**Trykk operativsystemet du bruker**

**Kjør filen**

**Velg innstillingene du vil ha**

## Lage virtuell maskin

**Trykk New**

<img src="images/virtualbox.png" title="" alt="" width="544">

**Velg Expert Mode**

<img src="images/virtualbox_create_vm_0.png" title="" alt="" width="456">

**Fyll ut navn, plassering, operativsystem og minne**

**Trykk Create**

<img src="images/virtualbox_create_vm_1.png" title="" alt="" width="454">

**Velg harddisk størrelse**

**Trykk Create**

<img src="images/virtualbox_create_vm_2.png" title="" alt="" width="450">

**Trykk på den tomme "IDE device"-en under storage**

**Trykk Choose a disk file...**

<img src="images/virtualbox_add_os_0.png" title="" alt="" width="468">

**Velg en iso-fil og trykk åpne**

<img title="" src="images/virtualbox_add_os_1.png" alt="" width="485">

**Konfigurer andre ting du trenger på maskinen f.eks. nettverk og lagring**

**Trykk Start**

![](Images\virtualbox_start.png)

## Gruppere virtuell maskin

**Høyreklikk maskinen**

**Trykk Group**

<img src="images/virtualbox_group_0.png" title="" alt="" width="469">

**Høyreklikk gruppen**

**Trykk Rename Group...**

<img src="images/virtualbox_group_1.png" title="" alt="" width="462">

**Skriv inn nytt navn og trykk enter**

<img src="images/virtualbox_group_2.png" title="" alt="" width="459">

# Konfigurasjon av virtuell maskin

**Gå inn på innstillingene til maskinen**

<img src="images/virtualbox_settings.png" title="" alt="" width="450">

## Nettverk

**Velg Network på sidemenyen**

![](Images\virtualbox_network_0.png)

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

<img title="" src="images/virtualbox_network_1.png" alt="" width="473">

## Harddisk

**Velg Storage fra sidemenyen**

<img src="images/virtualbox_storage_0.png" title="" alt="" width="470">

**Trykk harddisken med +**

**Trykk Create**

<img src="images/virtualbox_storage_1.png" title="" alt="" width="473">

**Velg innstillingene du vil ha**

**Etter du er ferdig med å lage harddisken trykk Choose**

## Minne og kjerner

**Velg System fra sidemenyen**

**Velg hvor mye ram du skal ha**

<img src="images/virtualbox_ram.png" title="" alt="" width="529">

**Trykk Processor**

**Velg hvor mange kjerner du vil ha**

<img src="images/virtualbox_cores.png" title="" alt="" width="524">
