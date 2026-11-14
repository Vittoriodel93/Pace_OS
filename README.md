# PaceOS

**Semplice. Veloce. Tuo.**  
Sistema operativo Linux personalizzato con desktop dedicato Pace Shell (Qt 6/QML).

![Status](https://img.shields.io/badge/versione-0.1.0-blue) ![Base](https://img.shields.io/badge/base-AnduinOS%201.4-orange) ![Repository](https://img.shields.io/badge/repository-private-purple)

> PaceOS 0.1.0 è una prima fondazione di progetto: documentazione tecnica, struttura repository e scaffold Qt/QML. Non è una ISO installabile e la shell non è ancora dichiarata compilata o pronta per l'uso quotidiano.

## Visione

PaceOS mira a offrire un desktop moderno, familiare e accessibile, con approccio local-first:
- Pace Shell in Qt 6/QML.
- Interfaccia desktop, taskbar, Start e gestione finestre.
- PaceAI, PaceCloud, PaceConnect e Game Mode come servizi pianificati.
- Localizzazione italiana e multilingua.
- Compatibilità Windows tramite Wine/Proton da verificare app per app.

## Base tecnica

La base di lavoro attuale resta **AnduinOS 1.4**. Il piano tecnico esplora Arch come possibile base finale, ma qualsiasi cambio richiede una decisione e una migrazione documentata. Il codice upstream AnduinOS non è ancora importato in questa repository: l'integrazione avverrà dopo inventario e backup della copia locale.

## Repository

| Percorso | Contenuto |
|---|---|
| `shell/` | Scaffold desktop Pace Shell Qt 6/QML |
| `docs/PaceOS_Piano_Tecnico.md` | Piano tecnico completo |
| `docs/architecture/` | Architettura |
| `docs/roadmap/` | Roadmap |
| `docs/development/` | Note sviluppo |
| `branding/` | Logo, wallpaper e boot splash |
| `src/mods/` | Moduli personalizzazione sistema |
| `services/` | Servizi Pace pianificati |
| `packaging/` | Packaging e ISO pianificati |
| `kernel/` | Note kernel |
| `.github/workflows/` | Controlli automatici repository |

## Build prototipo shell

Requisiti: CMake >= 3.20, Ninja, compilatore C++17 e Qt 6 Quick/Quick Controls 2.

```bash
cd shell
cmake -B build -GNinja -DCMAKE_BUILD_TYPE=RelWithDebInfo
cmake --build build
./build/paceshell
```

La build deve essere verificata sulla macchina di sviluppo. Eseguire prima in una sessione grafica esistente o VM; non sostituire la shell di sistema.

## Stato 0.1.0
- [x] Repository privata e struttura iniziale.
- [x] Piano tecnico inserito.
- [x] Scaffold Qt/QML inserito.
- [ ] Compilazione e test Qt verificati.
- [ ] Importazione controllata AnduinOS 1.4.
- [ ] Wallpaper e asset originali importati.
- [ ] Shell completa, servizi e ISO.

## Sicurezza e licenze

Non committare password, token, chiavi API, certificati privati o dati personali. Verificare le licenze di AnduinOS e di ogni componente prima della redistribuzione. Non è stata ancora dichiarata una licenza globale PaceOS.

Consulta [CHANGELOG](CHANGELOG.md), [ROADMAP](docs/roadmap/ROADMAP.md), [ARCHITECTURE](docs/architecture/ARCHITECTURE.md) e [UPSTREAM](docs/upstream/UPSTREAM.md).
