[**< Tilbake til forsiden**](index.md)

# pfsense

<img title="" src="Images/2022-03-20-08-36-52-image.png" alt="" width="637">

## Installasjon på virtuell maskin

Her skal jeg vise hvordan man installerer pfsense på en virtuell maskin i VirtualBox. Hvis du ikke vet hvordan man setter opp en virtuell maskin i VirtualBox følg [denne siden](vm.md)

### Nedlasting av iso-fil

**Gå inn på [www.pfsense.org/](https://www.pfsense.org/)**

**Trykk Download**

<img src="Images/2022-03-16-18-32-35-image.png" title="" alt="" width="573">

**Velg installasjons innstillingene du trenger**

**Trykk Download**

<img src="Images/2022-03-16-18-33-24-image.png" title="" alt="" width="444">

**Velg installasjonsplassering**

### Lage virtuell maskin

**Lag en ny maskin med innstillingene i tabellen**

| ------------------- | -------------- |
| Operativsystem      | FreeBSD 64-bit |
| Internett adapter 1 | Bridge         |
| Internett adapter 2 | Internal       |

**Sett inn iso-filen og start maskinen**

**Vent til du kan se copyright siden** 

<img src="Images/2022-03-16-18-38-06-image.png" title="" alt="" width="474">

**Trykk enter på Accept**

**Trykk enter på Install**

**Velg tastatur oppsett**

**Trykk enter på Continue with ? keymap**

**Velg Auto (UFS) BIOS**

<img src="Images/2022-03-16-18-40-18-image.png" title="" alt="" width="482">

**Vent til ferdig**

**Trykk enter på No**

**Trykk enter på Reboot**

**Skru av maskinen**

**Fjern iso-filen**

<img src="Images/2022-03-16-18-43-45-image.png" title="" alt="" width="484">

### Oppsett av pfsense

**Start maskinen**

<img src="Images/2022-03-16-18-45-56-image.png" title="" alt="" width="484">

**Se om du har nettilgang med å pinge**

<img src="Images/2022-03-16-18-48-57-image.png" title="" alt="" width="488">

**Lag en ny virtuell maskin med kobling til det interne nettveket**

<img src="Images/2022-03-16-18-51-23-image.png" title="" alt="" width="488">

**Åpne en nettleser**

**Gå inn på 192.168.1.1** (hvis ikke endret)

<img src="Images/2022-03-16-18-55-12-image.png" title="" alt="" width="504">

**Trykk Advanced...**

**Trykk Accept the Risk and Continue**

<img src="Images/2022-03-16-18-55-58-image.png" title="" alt="" width="504">

**Logg inn med brukernavn "admin" og passord "pfsense"**

<img src="Images/2022-03-16-18-57-09-image.png" title="" alt="" width="502">

**Trykk Next et par ganger**

**Skriv inn et domenet**

<img src="Images/2022-03-16-18-58-12-image.png" title="" alt="" width="502">

**Trykk Next**

**Velg Tidsone**

**Trykk deg gjennom oppsettet**

<img src="Images/2022-03-16-19-00-13-image.png" title="" alt="" width="500">

### Endre dashboardet

**Gå inn på Status/Dashboard**

<img title="" src="Images/2022-03-20-08-36-52-image.png" alt="" width="560">

#### Legge inn

**Trykk Pluss**

<img src="Images/2022-03-20-08-43-44-image.png" title="" alt="" width="249">

**Velg hva du skal legge inn**

![](Images\2022-03-20-08-44-17-image.png)

#### Fjerne

**Trykk krysset i høyre hjørnet**

<img src="Images/2022-03-20-08-52-01-image.png" title="" alt="" width="519">

#### Flytte

**Hold venstreklikk på det du skal flytte**

**Dra det dit det skal**

<img src="Images/2022-03-20-08-48-42-image.png" title="" alt="" width="518">

<img src="Images/2022-03-20-08-49-20-image.png" title="" alt="" width="516">

#### Lagre

**Trykk disken** (Den kommer bare opp hvis dashboardet er endret)

![](Images\2022-03-20-08-54-57-image.png)

## Sette opp DHCP

**Gå inn på Services/DHCP Server**

<img src="Images/2022-03-16-19-01-44-image.png" title="" alt="" width="335">

**Se om DHCP er på**

<img src="Images/2022-03-16-19-05-39-image.png" title="" alt="" width="412">

**Sett opp innstillingene som du vil ha, kan f.eks. endre scopet**

<img src="Images/2022-03-16-19-04-03-image.png" title="" alt="" width="514">

**Trykk Save når du er ferdig**

## Lage brukere

**Gå inn på System/User Manager/Users**

<img src="Images/2022-03-16-19-07-36-image.png" title="" alt="" width="497">

**Trykk Add**

**Fyll ut informasjonen de skal ha**

**Trykk Save**

<img src="Images/2022-03-16-19-10-36-image.png" title="" alt="" width="497">

**Trykk pennen ved siden av den nye brukeren**

<img src="Images/2022-03-16-19-15-46-image.png" title="" alt="" width="496">

**Bla ned til Effective Privileges og trykke Add**

**Velg tilgangene denne brukeren skal ha**

**Trykk Save**

<img src="Images/2022-03-16-19-17-15-image.png" title="" alt="" width="492">

## Lage grupper

**Gå inn på System/User Manager/Groups**

<img src="Images/2022-03-16-19-12-22-image.png" title="" alt="" width="504">

**Trykk Add**

**Gi navn, beskrivelse og brukere**

<img src="Images/2022-03-16-19-14-20-image.png" title="" alt="" width="503">

**Trykk save**

**Trykk pennen ved siden av den nye gruppen**

<img src="Images/2022-03-16-19-19-49-image.png" title="" alt="" width="504">

**Bla ned til Assigned Privileges**

**Trykk Add**

**Velg tilgangene alle i gruppen skal ha**

<img src="Images/2022-03-16-19-21-07-image.png" title="" alt="" width="506">

**Trykk Save**

## Lage brannmur regler

**Gå inn på Firewall/Rules/** *interface*

<img src="Images/2022-03-20-08-16-42-image.png" title="" alt="" width="500">

**Trykk Add**

![](Images\2022-03-20-08-18-06-image.png)

**Lag en regel**

**Eksempel**

* <img title="" src="Images/2022-03-20-08-31-08-image.png" alt="" width="500">

* <img title="" src="Images/2022-03-20-08-30-51-image.png" alt="" width="498">

* <img src="Images/2022-03-20-08-23-30-image.png" title="" alt="" width="494">

**Trykk save**

**Trykk Apply Changes**

<img src="Images/2022-03-20-08-24-10-image.png" title="" alt="" width="522">

## Captive Portal

**Gå inn på Services/Captive Portal**

<img src="Images/2022-03-19-14-26-33-image.png" title="" alt="" width="503">

**Trykk Add**

**Fyll ut navn og beskrivelse**

**Trykk Save & Continue**

<img src="Images/2022-03-19-14-29-43-image.png" title="" alt="" width="497">

**Skru på Captive Portal-en**

**Velg interface**

<img src="Images/2022-03-19-14-31-00-image.png" title="" alt="" width="496">

**Velg innstillingen du vil ha**

**Eksempel:**

* <img src="Images/2022-03-19-14-32-11-image.png" title="" alt="" width="494">

* <img src="Images/2022-03-19-14-35-17-image.png" title="" alt="" width="495">

* <img src="Images/2022-03-19-15-15-28-image.png" title="" alt="" width="509">

**Velg autentifiseringsserver** (Velg Authentication method None, hvis du ikke skal ha autentifisering)

<img title="" src="Images/2022-03-19-15-24-19-image.png" alt="" width="526">

**Trykk Save**

<img src="Images/2022-03-19-15-05-46-image.png" title="" alt="" width="523">

**Se om du kan logge inn**

<img src="Images/2022-03-19-15-25-35-image.png" title="" alt="" width="518">

## Vidresending av port med NAT

**Gå inn på Firewall/NAT/Port Forward**

**Trykk Add**

<img src="Images/2022-03-19-15-32-43-image.png" title="" alt="" width="512">

**Velg innstillingen du vil ha**

**Eksempel**

<img src="Images/2022-03-20-14-07-18-image.png" title="" alt="" width="510">

**Lagre**

**Trykk Apply Changes**

<img src="Images/2022-03-19-15-42-14-image.png" title="" alt="" width="509">

## L2TP/IPsec

### L2TP

**Gå til VPN/L2TP/Configuration**

**Skru på L2TP**

<img src="Images/2022-03-20-14-10-17-image.png" title="" alt="" width="531">

**Velg konfigurasjon**

<img title="" src="Images/2022-03-20-14-14-03-image.png" alt="" width="525">

**Trykk Save**

#### Lage L2TP brukere

**Gå til VPN/L2TP/Users**

<img src="Images/2022-03-20-14-25-12-image.png" title="" alt="" width="519">

**Trykk Add**

**Fyll brukernavn, passord og IP-adresse**

**Trykk Save**

<img src="Images/2022-03-20-14-26-36-image.png" title="" alt="" width="520">

### IPsec

**Gå inn på VPN/IPsec/Tunnels**

**Trykk Add P1**

<img src="Images/2022-03-20-14-28-41-image.png" title="" alt="" width="509">

**...**
**Legger til mer senere**
