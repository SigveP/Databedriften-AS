[**< Tilbake til forsiden**](index.md)

## Server logg

* Satt opp en VM
  * Navn: `Databedriften AS`
  * Kjerner: `4`
  * Minne: `6 GB`
  * Harddisk 1: `50 GB`
  * Harddisk 2: `20 GB`
  * Nettverk: `databas` (Internt)
* Installasjon Windows server 2019 på VM
  * Startet VM
  * Valgte Norsk tastaturoppsett
  * Aktiverte Windows
  * Valgte desktop experience
  * Installerte Windows på Harddisk 1
* Basis oppsett av OS
  * Passord: `Passord123.`
  * Maskinnavn: `DC`
  * IPv4 adresse: `10.0.0.2/8`
* Installasjon av Active Directory Domain Services (AD DS)
  * Gikk inn på add roles and features
  * Trykket Server Selection
  * Trykket Server Roles
  * Hakket av Active Directory Domain Services
  * Trykket Confirmation
  * Trykket Install
  * Ventet til ferdig
  * Trykket Close
* Domenekontroller konfigurasjon
  * Trykket flagget
  * Trykket Promote this server to a domain controller
  * Valgte add a new forest
  * Skrev inn `databed.local`
  * Trykket Next
  * Skrev inn passord
  * Trykket Next til jeg nådde Prerequisites Check
  * Trykket Install
  * Ventet til ferdig med omstart
* Installasjon av Dynamic Host Configuration Protocol Server (DHCP Server)
  * Nesten det samme som installasjon av AD DS, hakket DHCP Server i stedet.
* Oppsett av Dynamic Host Configuration Protocol Server
  * Trykket flagget
  * Trykket Complete DHCP configuration
  * Trykket Next
  * Trykket Commit
* Oppsett av DHCP scope
  * Trykket Tools
  * Trykket DHCP
  * Trykket dc.databed.local
  * Trykket IPv4
  * Høyreklikket IPv4
  * Trykket New Scope…
  * Trykket Next
  * Scope navn: `Brukere`
  * Trykket Next
  * Start adresse: `10.0.0.100`
  * Slutt adresse: `10.0.0.255`
  * Lengde: `8`
  * Subnet maske: `255.0.0.0`
  * Trykket Next til jeg nådde slutten av Wizarden
  * Trykket Finish
* Installasjon av backup
  * Gikk inn på add roles and features
  * Trykket Server Selection
  * Trykket Features
  * Hakket av Windows Server Backup
  * Trykket Confirmation
  * Trykket Install
  * Ventet til ferdig
  * Trykket Close
* Oppsett av backup
  * Trykket Tools
  * Valgte Windows Server Backup
  * Trykket Local Backup
  * Trykket Backup Schedule…
  * Trykket Next to ganger
  * Byttet tidspunkt til kl 02:00
  * Trykket Next to ganger
  * Trykket Show All Available Disks…
  * Hakket av HDD 2
  * Trykket OK
  * Hakket av HDD 2
  * Trykket Next
  * Trykket Yes
  * Trykket Finish
  * Trykket Close
* Sette opp Active Directory Users and Computers med bedriftens behov
  * Trykket Tools
  * Valgte Active Directory Users and Computers
  * Trykket pilen ved siden av `databed.local`
  * Trykket `databed.local`
  * Trykket mappen (OU) på skape menyen
  * Lagde en ny Organizational Unit med navnet `Brukere`
  * Lagde tre under OU-er som heter `daglig_ledere`, `kontormedarbeidere` og `salg`
  * Lagde grupper for hver OU
  * Lagde en bruker under hver OU
* Lage Gruppe- og Hjemområder
  * Åpnet filutforskeren
  * Gikk til `C:\Users\`
  * Lagde mappen `home_folders`
  * Lagde mappen `group_folders`
  * Gikk til `C:\Users\group_folders` og lagde to undermapper, `kontormedarbeider` og `salg`
  * Høyreklikket begge og trykket properties
  * Trykket Sharing, så Advanced Sharing…
  * Hakket av Share this folder og trykket Permissions
  * Fjernet Everyone og la til `daglig_ledere` og dem mappen hører til
  * Ga `daglig_ledere` Read tillatelse og de andre Full control
  * Trykket OK
  * Trykket Apply
  * Trykket OK
  * Trykket Close
  * Gikk tilbake til `C:\Users\`
  * Gikk inn på samme området på `home_folders`
  * Fjernet Everyone
  * La til Domain Users
  * Ga Full control
  * Gikk ut
* Gi brukere tilgang til gruppemappene automatisk
  * Trykket Tools
  * Valgte Group Policy Management
  * Lagde en GPO for hver OU under `Brukere`
  * Høyreklikket og trykket edit på alle
  * Gikk til User `Configuration\Preferences\Drive Maps`
  * Lagde en ny Drive Map
  * Skrev inn banen til mappene
  * Valgte reconnect
  * Skrev inn banen på label med fjernet `\\DC\`
  * Valgte Drive Letter K på `kontormedarbeider`, S på `Salg`.
  * Trykket Apply
  * Trykket OK
* Gi brukere tilgang til hjemområdet
  * Gikk inn på Brukerne
  * Trykket Profile
  * Valgte Connect med Drive letter Z
  * Skrev inn `\\DC\home_folders\%username%`
  * Trykket Apply
  * Trykket Ok
* Begrense alle brukere med Group Policy
  * Gikk inn på Group Policy Management
  * Valgte Edit på Default Domain Policy
  * Valgte Enabled på Prohibit access to Control Panel and PC settings

## Klient logg

* Satt opp en VM
  * Navn: `Klient`
  * Kjerner: `1`
  * Minne: `4 GB`
  * Harddisk: `25 GB`
  * Nettverk: `databas` (internt. Kobler til etter oppsett, for offline konto)
* Installasjon av Windows 10 på VM
  * Startet VM
  * Valgte Norsk tastaturoppsett
  * Aktiverte Windows
  * Fikk feilmelding (Korrupt eller manglende fil)
  * Slettet VM
  * Prøvde å gjenbruke klientmaskinen til Billig Bil AS
  * Husket ikke brukernavn og passord til lokal bruker
  * Prøvde å lage klient VM på nytt
* Satt opp en ny VM
  * Navn: `Klient`
  * Kjerner: `2` (1 etter oppsett)
  * Minne: `5 GB` (2 GB etter oppsett)
  * Harddisk: `50 GB`
  * Nettverk: `databas` (internt. Kobler til etter oppsett, for offline konto)
* Installasjon av Windows 10 på ny VM
  * Forrige forsøk minus feil
* Bruker oppsett (skrevet ned tilfelle gjenbruk i fremtiden)
  * Navn: `klient`
  * Passord: `Passord123.`
  * Alle sikkerhetsspørsmål: `abc`
* Koble maskin til server
  * Koblet nettverket
  * Høyreklikket Windows
  * Valgte System
  * Trykket Rename this PC (advanced)
  * Trykket Change…
  * Maskinnavn: `klient`
  * Domain: `databed.local`
  * Trykket OK
  * Skrev inn logg inn informasjonen til administrator
* Tester (fet for virker)
  * **Koble til med bruker konman**
  * **Finne hjemområdet**
  * **Finne gruppeområdet**
  * **Kan ikke åpne kontrollpanel**
