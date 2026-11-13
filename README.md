# PaceOS

**Sistema operativo Linux personalizzato, moderno e leggero, sviluppato a partire da AnduinOS 1.4.**

![Status](https://img.shields.io/badge/stato-in%20sviluppo-orange) ![Base](https://img.shields.io/badge/base-AnduinOS%201.4-blue) ![Visibility](https://img.shields.io/badge/repository-private-purple)

> PaceOS è in fase di sviluppo. Questa repository contiene la struttura iniziale e la documentazione; non contiene ancora una ISO pronta all'installazione.

## Visione
PaceOS mira a offrire un desktop moderno, familiare e accessibile, con approccio local-first e supporto multilingua.

Obiettivi:
- Branding PaceOS: logo, icone, wallpaper e schermata di avvio.
- Desktop personalizzato e menu contestuali intuitivi.
- Lingua italiana e supporto multilingua.
- Applicazioni e strumenti integrati.
- AI, sincronizzazione cloud, strumenti sviluppatore e collegamento Android come componenti pianificati.
- Modalità gaming e compatibilità applicativa da verificare caso per caso.
- Build ripetibile, test automatici e documentazione.

## Base tecnica
La base scelta è **AnduinOS 1.4**. Il codice upstream sarà integrato dopo aver verificato revisione esatta, licenze e modifiche già presenti nella copia locale. La directory originale non deve essere sovrascritta senza backup.

## Aree del progetto
| Percorso | Scopo |
|---|---|
| `branding/` | Loghi, icone, wallpaper e boot screen |
| `desktop/` | Personalizzazione desktop |
| `applications/` | Applicazioni PaceOS |
| `packages/` | Configurazioni pacchetti |
| `src/mods/` | Moduli di personalizzazione |
| `kernel/` | Configurazioni e note kernel |
| `scripts/` | Automazione e build |
| `tests/` | Test e verifiche |
| `docs/` | Documentazione tecnica |

## Stato
- [x] Repository privata e struttura iniziale.
- [ ] Importazione controllata della base AnduinOS 1.4.
- [ ] Inventario modifiche locali, dipendenze e licenze.
- [ ] Rebranding e desktop PaceOS.
- [ ] Applicazioni e servizi.
- [ ] Build ISO ripetibile e test in VM.

Consulta [architettura](docs/architecture/ARCHITECTURE.md), [roadmap](docs/roadmap/ROADMAP.md) e [sviluppo](docs/development/DEVELOPMENT.md).

## Sicurezza
Non committare password, token, chiavi API, certificati privati o dati personali. Non inserire ISO e artefatti di build nella cronologia Git. Testare kernel e installer in macchina virtuale prima dell'hardware.

La documentazione principale è in italiano. PaceOS è un progetto indipendente in sviluppo.
