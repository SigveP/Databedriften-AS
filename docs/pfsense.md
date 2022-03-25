[**< Tilbake til forsiden**](index.md)

# pfsense

<img title="" src="images/pfsense_overview.png" alt="" width="637">

## Installasjon på virtuell maskin

Her skal jeg vise hvordan man installerer pfsense på en virtuell maskin i VirtualBox. Hvis du ikke vet hvordan man setter opp en virtuell maskin i VirtualBox følg [denne siden](vm.md){:target="_blank"}

### Nedlasting av iso-fil

**Gå inn på [www.pfsense.org/](https://www.pfsense.org/)**

**Trykk Download**

<img src="images/pfsense_website.png" title="" alt="" width="573">

**Velg installasjons innstillingene du trenger**

**Trykk Download**

<img src="images/pfsense_website_download.png" title="" alt="" width="444">

**Velg installasjonsplassering**

### Lage virtuell maskin

**Lag en ny maskin med innstillingene i tabellen**

| ------------------- | -------------- |
| Operativsystem      | FreeBSD 64-bit |
| Internett adapter 1 | Bridge         |
| Internett adapter 2 | Internal       |

**Sett inn iso-filen og start maskinen**

**Vent til du kan se copyright siden** 

<img src="images/pfsense_copyright.png" title="" alt="" width="474">

**Trykk enter på Accept**

**Trykk enter på Install**

**Velg tastatur oppsett**

**Trykk enter på Continue with ? keymap**

**Velg Auto (UFS) BIOS**

<img src="images/pfsense_installation.png" title="" alt="" width="482">

**Vent til ferdig**

**Trykk enter på No**

**Trykk enter på Reboot**

**Skru av maskinen**

**Fjern iso-filen**

<img src="images/pfsense_rm_disk.png" title="" alt="" width="484">

### Oppsett av pfsense

**Start maskinen**

<img src="images/pfsense_terminal.png" title="" alt="" width="484">

**Se om du har nettilgang med å pinge**

<img src="images/pfsense_ping.png" title="" alt="" width="488">

**Lag en ny virtuell maskin med kobling til det interne nettveket**

<img src="images/client_vm.png" title="" alt="" width="488">

**Åpne en nettleser**

**Gå inn på 192.168.1.1** (hvis ikke endret)

<img src="images/pfsense_webconfig_0.png" title="" alt="" width="504">

**Trykk Advanced...**

**Trykk Accept the Risk and Continue**

<img src="images/pfsense_webconfig_1.png" title="" alt="" width="504">

**Logg inn med brukernavn "admin" og passord "pfsense"**

<img src="images/pfsense_webconfig_2.png" title="" alt="" width="502">

**Trykk Next et par ganger**

**Skriv inn et domenet**

<img src="images/pfsense_webconfig_3.png" title="" alt="" width="502">

**Trykk Next**

**Velg Tidsone**

**Trykk deg gjennom oppsettet**

<img src="images/pfsense_webconfig_4.png" title="" alt="" width="500">

### Endre dashboardet

**Gå inn på Status/Dashboard**

<img title="" src="images/pfsense_overview.png" alt="" width="560">

#### Legge inn

**Trykk Pluss**

<img src="images/pfsense_dashboard_0.png" title="" alt="" width="249">

**Velg hva du skal legge inn**

![](images\pfsense_dashboard_1.png)

#### Fjerne

**Trykk krysset i høyre hjørnet**

<img src="images/pfsense_dashboard_4.png" title="" alt="" width="519">

#### Flytte

**Hold venstreklikk på det du skal flytte**

**Dra det dit det skal**

<img src="images/pfsense_dashboard_2.png" title="" alt="" width="518">

<img src="images/pfsense_dashboard_3.png" title="" alt="" width="516">

#### Lagre

**Trykk disken** (Den kommer bare opp hvis dashboardet er endret)

![](images\pfsense_dashboard_5.png)

### Lese logg

**Gå inn på Status/System Logs**

<img src="images/pfsense_log_0.png" title="" alt="" width="541">

**Velg hvilken logg du vil lese**

**Sorter etter tid** (eller noe annet)

**Les**

<img src="images/pfsense_log_1.png" title="" alt="" width="543">

### Diagnostikk

**Gå inn på Diagnostics/** (hva du vil gjøre)

<img src="images/pfsense_diag_0.png" title="" alt="" width="538">

**Eksempel** (Authentication)

<img src="images/pfsense_diag_1.png" title="" alt="" width="543">

**Eksempel** (System Activity)

<img src="images/pfsense_diag_2.png" title="" alt="" width="546">

## System

### Sikkerhetskopiering

**Gå inn på Diagnosics/Backup & Restore/Backup & Restore**

<img src="images/pfsense_backup_and_restore.png" title="" alt="" width="545">

**Velg hva du vil sikkerhetkopiere**

**Trykk Download configuration as XML**

**Lagre filen et trygt sted**

<img src="images/pfsense_backup.png" title="" alt="" width="551">

### Gjennoppretting

#### webconfigurator

**Gå inn på Diagnosics/Backup & Restore/Backup & Restore**

<img src="images/pfsense_backup_and_restore.png" title="" alt="" width="545">

**Bla ned**

**Trykk Browse...**

**Velg en gjennopprettingsfil**

**Velg samme Restore area som filen**

**(Velg kryptering hvis filen er kryptert)**

**Trykk Restore Configuration**

<img src="images/pfsense_restore.png" title="" alt="" width="551">

**ISO**

**Sett inn pfsense iso-filen**

<img src="images/pfsense_recover_1.png" title="" alt="" width="514">

**Velg Recover config.xml**

<img src="images/pfsense_recover_0.png" title="" alt="" width="517">

**Velg en partisjon med en config.xml**

<img src="images/pfsense_recover_2.png" title="" alt="" width="510">

### Oppgradering

**Gå inn på System/Update/System Update**

<img src="images/pfsense_update_0.png" title="" alt="" width="403">

**Trykk Confirm** (hvis tilgjengelig)

<img src="images/pfsense_update_1.png" title="" alt="" width="513">

## Lage brukere

**Gå inn på System/User Manager/Users**

<img src="images/pfsense_user_0.png" title="" alt="" width="497">

**Trykk Add**

**Fyll ut informasjonen de skal ha**

**Trykk Save**

<img src="images/pfsense_user_1.png" title="" alt="" width="497">

**Trykk pennen ved siden av den nye brukeren**

<img src="images/pfsense_user_2.png" title="" alt="" width="496">

**Bla ned til Effective Privileges og trykke Add**

**Velg tilgangene denne brukeren skal ha**

**Trykk Save**

<img src="images/pfsense_user_3.png" title="" alt="" width="492">

## Lage grupper

**Gå inn på System/User Manager/Groups**

<img src="images/pfsense_group_0.png" title="" alt="" width="504">

**Trykk Add**

**Gi navn, beskrivelse og brukere**

<img src="images/pfsense_group_1.png" title="" alt="" width="503">

**Trykk save**

**Trykk pennen ved siden av den nye gruppen**

<img src="images/pfsense_group_2.png" title="" alt="" width="504">

**Bla ned til Assigned Privileges**

**Trykk Add**

**Velg tilgangene alle i gruppen skal ha**

<img src="images/pfsense_group_3.png" title="" alt="" width="506">

**Trykk Save**

## Sette opp DHCP

**Gå inn på Services/DHCP Server**

<img src="images/pfsense_dhcp_0.png" title="" alt="" width="335">

**Se om DHCP er på**

<img src="images/pfsense_dhcp_1.png" title="" alt="" width="412">

**Sett opp innstillingene som du vil ha**

**Eksempel**

* <img src="images/pfsense_dhcp_2.png" title="" alt="" width="550">

* <img src="images/pfsense_dhcp_3.png" title="" alt="" width="550">

* <img src="images/pfsense_dhcp_4.png" title="" alt="" width="552">

**Trykk Save**

## Lage brannmur regler

**Gå inn på Firewall/Rules/** *interface*

<img src="images/pfsense_firewall_0.png" title="" alt="" width="500">

**Trykk Add**

![](images\pfsense_firewall_1.png)

**Lag en regel**

**Eksempel**

* <img title="" src="images/pfsense_firewall_4.png" alt="" width="500">

* <img title="" src="images/pfsense_firewall_5.png" alt="" width="498">

* <img src="images/pfsense_firewall_2.png" title="" alt="" width="494">

**Trykk Save**

**Trykk Apply Changes**

<img src="images/pfsense_firewall_3.png" title="" alt="" width="522">

## Videresending av port med NAT

**Gå inn på Firewall/NAT/Port Forward**

**Trykk Add**

<img src="images/pfsense_nat_0.png" title="" alt="" width="512">

**Velg innstillingen du vil ha**

**Eksempel**

<img src="images/pfsense_nat_2.png" title="" alt="" width="510">

**Lagre**

**Trykk Apply Changes**

<img src="images/pfsense_nat_1.png" title="" alt="" width="509">

## Captive Portal

**Gå inn på Services/Captive Portal**

<img src="images/pfsense_captive_portal_0.png" title="" alt="" width="503">

**Trykk Add**

**Fyll ut navn og beskrivelse**

**Trykk Save & Continue**

<img src="images/pfsense_captive_portal_1.png" title="" alt="" width="497">

**Skru på Captive Portal-en**

**Velg interface**

<img src="images/pfsense_captive_portal_2.png" title="" alt="" width="496">

**Velg innstillingen du vil ha**

**Eksempel:**

* <img src="images/pfsense_captive_portal_3.png" title="" alt="" width="494">

* <img src="images/pfsense_captive_portal_4.png" title="" alt="" width="495">

* <img src="images/pfsense_captive_portal_6.png" title="" alt="" width="509">

**Velg autentifiseringsserver** (Velg Authentication method None, hvis du ikke skal ha autentifisering)

<img title="" src="images/pfsense_captive_portal_7.png" alt="" width="526">

**Trykk Save**

<img src="images/pfsense_captive_portal_5.png" title="" alt="" width="523">

**Se om du kan logge inn**

<img src="images/pfsense_captive_portal_8.png" title="" alt="" width="518">

## L2TP/IPsec

### L2TP

**Gå til VPN/L2TP/Configuration**

**Skru på L2TP**

<img src="images/pfsense_ltwotp_0.png" title="" alt="" width="531">

**Velg konfigurasjon**

<img title="" src="images/pfsense_ltwotp_1.png" alt="" width="525">

**Trykk Save**

#### Lage L2TP brukere

**Gå til VPN/L2TP/Users**

<img src="images/pfsense_ltwotp_2.png" title="" alt="" width="519">

**Trykk Add**

**Fyll brukernavn, passord og IP-adresse**

**Trykk Save**

<img src="images/pfsense_ltwotp_3.png" title="" alt="" width="520">

### IPsec

**Gå inn på VPN/IPsec/Tunnels**

**Trykk Add P1**

<img src="images/pfsense_ipsec_0.png" title="" alt="" width="509">

**Velg innstillingene du skal ha**

**Eksempel**

* <img src="images/pfsense_ipsec_1.png" title="" alt="" width="511">

* <img title="" src="images/pfsense_ipsec_3.png" alt="" width="532">

* <img src="images/pfsense_ipsec_2.png" title="" alt="" width="545">

**Trykk save**

**Trykk Apply Changes**

<img src="images/pfsense_ipsec_4.png" title="" alt="" width="577">

## Pakkebehandlig

**Gå inn på System/Package Manager**

<img src="images/pfsense_package_0.png" title="" alt="" width="566">

**Gå inn på Available Packages**

**Søk etter hva du skal ha**

**Trykk Install**

<img src="images/pfsense_package_1.png" title="" alt="" width="567">

**Vent til pakken blir installert**

<img src="images/pfsense_package_2.png" title="" alt="" width="566">

**Gå til Installed Packages**

**Se om pakken ligger der**

<img src="images/pfsense_package_3.png" title="" alt="" width="561">

## Webfiltrering

**Installer pakkene squid og squidGuard med [Package Manager](#pakkebehandling)**

**Gå inn på Services/Squid Proxy Server**

_Blir videresendt til Package/Proxy Server: General Settings/General_

<img src="images/pfsense_webfilter_0.png" title="" alt="" width="565">

**Velg Enable Squid Proxy**

**Velg Enable Access Logging**

<img src="images/pfsense_webfilter_1.png" title="" alt="" width="562">

**Trykk Save**

**Gå inn på Services/SquidGuard Proxy Filter/Blacklist**

_Blir videresendt til Package/SquidGuard/Blacklists_

**Legg til adressen til en liste** (Veldig vanskelig å finne en som er tilgjengelig)

**Trykk Download**

<img title="" src="images/pfsense_webfilter_2.png" alt="" width="565">

**Gå inn på Common ACL**

**Sett opp reglene du vil ha**

**Velg Log**

**Trykk Save**

<img src="images/pfsense_webfilter_3.png" title="" alt="" width="563">

**Gjør det samme inne på Group ACL** (hvis en gruppe skal ha andre tilattelser)

**Gå til General settings**

**Velg Enable**

<img src="images/pfsense_webfilter_4.png" title="" alt="" width="561">

**Skru på alle loggene og andre innstillinger du vil ha**

<img src="images/pfsense_webfilter_5.png" title="" alt="" width="561">

**Trykk Save**

**Trykk Apply**

<img src="images/pfsense_webfilter_6.png" title="" alt="" width="557">
