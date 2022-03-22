[**< Tilbake til forsiden**](index.md)

# Oppdrag

Databedriften AS har leid nye lokaler. Databedriften har til sammen 15 ansatte. En daglig leder, to kontormedarbeidere og 12 personer som arbeider med salg og kundeoppfølging. Dere skal bistå Databedriften AS med nettverk, maskinvare og programvare.
Hvis du er i tvil skal du ta egne forutsetninger for å kunne løse oppgavene.

**1.** Ta utgangspunkt i de opplysningene du har fått, og lag et forslag til behovsavklaring og kravdefinisjon som viser hvilket behov Databedriften AS har for maskinvare og programvare for å kunne bli en operativ bedrift.

**2.** Lag en nettverksdokumentasjon (nettverksskisse, IP-plan etc.) for Databedriften AS sitt nettverk. Beskriv også hva de enkelte komponentene sin oppgave i nettverksskissen er.

**3.** Databedriften AS har 15 personer ansatt og de har forskjellige behov. Sett opp Windows Server, nødvendige roller, opprett fellesområde, hjemmeområde, etc.
Det er et krav at du legger ved dokumentasjon til denne oppgaven.
Lag et forslag til rettigheter for forskjellige brukergrupper. Forklar og dokumenter eventuelle begrensninger.

**4.** Lag en brukerveiledning slik at Databedriften AS kan lage egne brukere når det kommer en ny ansatt.

**5.** Lag et forslag til regler/policy som Databedriften AS bør ha for å ivareta informasjonssikkerhet i sin virksomhet.

**Oppgave 6**

Sjefen din har hørt om Pfsense brannmur /Router  og vil at du skal sette opp en liten lab med Pfsense og windows 10 og forklare ham hvordan det helle fungere.

Lær deg følgende:

* Grunnleggende om pfSense

* pfSense-installasjon i et virtuelt miljø

* Klar forståelse av pfSense Web GUI

* Administrasjon i pfSense

* Grunnleggende om Brukerbehandling

* DHCP-konfigurasjon

* Brannmur regler - Baiscs

* VIDEREsending av NAT/port i pfSense

* Diagnostikk i pfSense – grunnleggende

* Captive Portal - Ikke godkjent og godkjent

* Typer VPN pfSense-støtte

* L2TP/IPSec VPN-konfigurasjon og -testing

* Kontrollere tjenester og logger

* Grunnleggende om Pakkebehandling

* Webfiltrering for HTTP og HTTPS

* Full sikkerhetskopiering, gjenoppretting og oppgradering av pfSense

**Oppgave 7**

Sjefen ber dere om å lage en rutine for hva bedriften skal gjøre med brukere som slutter. Han er også interessert i et script for å gjøre dette i PowerShell.  

# Løsninger

## Oppgave 1

> Ta utgangspunkt i de opplysningene du har fått, og lag et forslag til behovsavklaring og kravdefinisjon som viser hvilket behov Databedriften AS har for maskinvare og programvare for å kunne bli en operativ bedrift.

Databedriften AS sine krav er et nettverk, maskinvare og programvare, behovet deres er et lite nettverk, en server, femten klientmaskiner og et aksesspunkt så ansatte kan koble f.eks. mobilen til nettverket. Kontormedarbeiderne burde ha stasjonær imens daglig leder burde ha bærbar, salg kan også få bærbar så bedriften kan ha en mindre switch; nettverket har allerede aksesspunkt, så det reduserer bare prisen på switchen. De trenger også en Windows server lisens og femten Windows pro lisenser.

**Tabell over krav:**

| Antall | Hva                        | Viktighet      | Mulig endring       |
| ------ | -------------------------- | -------------- | ------------------- |
| 1      | Router                     | Nødvendig      |                     |
| 1      | Switch                     | Nødvendig      |                     |
| 1      | Aksesspunkt                | Fint å ha      |                     |
| 1      | Server                     | Nødvendig      |                     |
| 2      | Stajonære maskiner         | Burde være med | Kan være bærbare    |
| 13     | Bærbare maskiner           | Burde være med | Kan være stajonære  |
| 1      | Windows server 2019 lisens | Nødvendig      | Kan byttes med 2022 |
| 15     | Windows 10 Pro lisenser    | Burde være med | Kan byttes med 11   |

## Oppgave 2

> Lag en nettverksdokumentasjon (nettverksskisse, IP-plan etc.) for Databedriften AS sitt nettverk. Beskriv også hva de enkelte komponentene sin oppgave i nettverksskissen er.

Nettverksskissen og IP-plan kan også bli funnet under [Nettverk](nettverk.md){:target="_blank"}

![](images\network_diagram.png)

**Forklaring av nettverksskissen over:** Skissen viser en sentral switch med åtte porter som er koblet til en router for nett, en server for AD, DNS og DHCP, et aksesspunkt for trådløs tilkobling og et par stasjonære maskiner. Aksesspunktet er koblet til tretten bærbare maskiner. IPv4 adressen til routeren er 10.0.0.1, serveren er 10.0.0.2 og klientmaskinene er 10.0.0.100+, switchen og aksesspunktet har ingen IP-adresse.

### IP-plan

| -----------:| ------------------------ |
| Type        | IPv4                     |
| Adresse     | 10.0.0.0                 |
| Subnet      | 255.0.0.0                |
| GW          | 10.0.0.1                 |
| DC          | 10.0.0.2                 |
| DHCP scope  | 10.0.0.100 -> 10.0.0.255 |
| DHCP subnet | 255.0.0.0                |

## Oppgave 3

> Databedriften AS har 15 personer ansatt og de har forskjellige behov. Sett opp Windows Server, nødvendige roller, opprett fellesområde, hjemmeområde, etc.
> Det er et krav at du legger ved dokumentasjon til denne oppgaven.
> 
> Lag et forslag til rettigheter for forskjellige brukergrupper. Forklar og dokumenter eventuelle begrensninger.

Loggene til både server og klient kan bli funnet under [logg](logg.md){:target="_blank"}, de bruker mye plass så setter de ikke under her.

Serverens konfigurasjon finnes også under [Basis informasjon - Server konfigurasjon](info.html#server-konfigurasjon){:target="_blank"}

| --------------:| ------------------------ |
| Navn           | DC                       |
| Kjerner        | 4                        |
| Minne          | 6 GB                     |
| Harddisker     | 1: 50 GB; 2: 20 GB       |
| Operativsystem | Windows server 2019      |
| Tjenester      | AD DS; DNS; DHCP; backup |
| IPv4 adresse   | 10.0.0.2/8               |

### Forslag til rettighetene til brukergrupper

_Dette er bare forslag, serveren er ikke settet opp etter de._

**Salg**

* Tilgang til egen gruppemappe

* Ikke tilgang til kontrollpanel

* Kan ikke bytte bakgrunn

* Kan bare logge på i arbeidstid

**Kontormedarbeidere**

* Tilgang til egen gruppemappe

* Ikke tilgang til kontrollpanel

* Kan bare logge på i arbeidstid

**Daglig leder**

* Tilgang til alle gruppemapper

## Oppgave 4

> Lag en brukerveiledning slik at Databedriften AS kan lage egne brukere når det kommer en ny ansatt.

Brukerveiledningen for laging av brukere kan bli funnet [her](bruker.html#lage-bruker){:target="_blank"}

## Oppgave 5

> Lag et forslag til regler/policy som Databedriften AS bør ha for å ivareta informasjonssikkerhet i sin virksomhet.

| Policy/Regler              | Behandling                                                                                |
| -------------------------- | ----------------------------------------------------------------------------------------- |
| Nettverk                   | Skal ikke kunne besøke irrelevante sider og tjenester, som f.eks. spill sider og servere. |
| Nedlasting                 | Skal bare kunne laste ned fra bedriftens egene og betalte sider                           |
| Passord                    | Burde bruke fulle setninger som inneholder tall og tegn                                   |
| Ved virus (klientmaskin)   | Skal koble fra nettverket og kontakte hjelp                                               |
| Ved virus (tjenestemaskin) | Skal laste inn en backup                                                                  |
| Data                       | Skal bare lagre nødvendig data                                                            |
| Maskiner                   | Burde skrive ned navn, type, operativsystem og funksjon                                   |
| Tilgang til server         | Bare de i bedriften som kan og jobber med det                                             |
| Ved feil (liten)           | Burde skrives ned og fikset                                                               |
| Ved feil (stor)            | Skal skrives ned, sett på av flere og fikset                                              |

## Oppgave 6

> Sjefen din har hørt om Pfsense brannmur /Router og vil at du skal sette opp en liten lab med Pfsense og windows 10 og forklare ham hvordan det helle fungere.

Alle brukerveiledninger for pfsense [her](pfsense.md){:target="_blank"}

**Trinn for lab oppsettet:**

1. [Lag VM](vm.md){:target="_blank"}
2. [Installer pfsense på vm](pfsense.html#installasjon-p-virtuell-maskin){:target="_blank"}
3. [Sett opp pfsense](pfsense.html#oppsett-av-pfsense){:target="_blank"}
4. [Gjør alle innstillingene du vil ha](pfsense.md){:target="_blank"} (link til full pfsense side)
5. [Lag en ny VM](vm.md){:target="_blank"} (Klient)
6. Se om alt funker

## Oppgave 7

> Sjefen ber dere om å lage en rutine for hva bedriften skal gjøre med brukere som slutter. Han er også interessert i et script for å gjøre dette i PowerShell.

Alle rutiner kan bli funnet under [Basis informasjon - Rutiner](info.html#rutiner){:target="_blank"}

Rutinen for brukere som slutter i følge [Rutiner](info.html#rutiner){:target="_blank"} er å slette brukerne, brukerveiledningen til sletting av brukere kan du finne [her](bruker.html#slette-bruker){:target="_blank"}.

Scriptet til sletting av brukere er ikke inkludert på serveren men du kan trykke [her](download/delete_aduser_csv.ps1) for å laste det ned. Et bilde av scriptet er tilgjengelig på [slette siden](bruker.html#slette-bruker){:target="_blank"}.

# Oppsummering av arbeid

Lagde en [kravliste](#oppgave-1) fra informasjonen gitt og lagde et [nettverksdiagram](#oppgave-2) og en [IP-plan](#oppgave-2) fra listen.

Brukte [VirtualBox](https://virtualbox.org) til å lage et par virtuelle maskiner, den første er en server som er installert med Windows server 2019 og har tjenestene AD DS, DNS, DHCP og backup, den andre er en klientmaskin som er installert med Windows 10 og er koblet til domenet til serveren. De Virtuelle maskinene var [logget](logg.md){:target="_blank"} i samtid.

Lagde [brukerveiledninger](veiledning.md){:target="_blank"} på hvordan bedriften skal [lage](bruker.html#lage-bruker){:target="_blank"}, [slette](bruker.html#slette-bruker){:target="_blank"} brukere og hvordan kan sette opp en liten [pfsense](pfsense.md){:target="_blank"} lab i [VirtualBox](vm.md){:target="_blank"}.
