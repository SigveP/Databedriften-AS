[**< back to main**](index.md)

## Konfigurasjoner

#### Server konfigurasjon

|                |                          |
| --------------:| ------------------------ |
| Navn           | DC                       |
| Kjerner        | 4                        |
| Minne          | 6 GB                     |
| Harddisker     | 1: 50 GB; 2: 20 GB       |
| Operativsystem | Windows server 2019      |
| Tjenester      | AD DS; DNS; DHCP; backup |
| IPv4 adresse   | 10.0.0.2/8               |

#### IP-plan

|             |                          |
| -----------:| ------------------------ |
| Type        | IPv4                     |
| Adresse     | 10.0.0.0                 |
| Subnet      | 255.0.0.0                |
| GW          | 10.0.0.1                 |
| DC          | 10.0.0.2                 |
| DHCP scope  | 10.0.0.100 -> 10.0.0.255 |
| DHCP subnet | 255.0.0.0                |

## Standarder

#### Navnestandarder

|                    | Standard                                                           |
| ------------------:| ------------------------------------------------------------------ |
| Standard           | Hva det er med små bokstaver og underestrek i stedet for mellomrom |
| Virtuelle maskiner | Ingen navnestandard. Skal bare være gjenkjennelig                  |
| Servere            | Forkortelse av hovedfunksjonen, f.eks. DC for domenekontroller     |
| Brukere            | Første tre bokstavene i for- og etternavn                          |

## Rutiner

|                     | Rutine                                                      |
| -------------------:| ----------------------------------------------------------- |
| Brukere som slutter | Brukere som slutter skal bli [slettet fra AD DS](bruker.md) |
