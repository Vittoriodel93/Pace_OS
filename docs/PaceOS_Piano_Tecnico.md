# PaceOS — Piano Tecnico v1.0

> Semplice. Veloce. Tuo.

## Visione e strategia
PaceOS sarà una distribuzione Linux con base minimale e desktop proprietario Pace Shell scritto in Qt 6/QML. Non si riscriverà il kernel da zero. I servizi previsti sono PaceAI, PaceCloud, Game Mode e PaceConnect.

Il piano tecnico raccomanda Arch come base finale per controllo e leggerezza. Il lavoro già avviato su AnduinOS 1.4 resta la base corrente fino a una decisione e migrazione pianificata: non viene sostituito automaticamente.

## Requisiti e tecnologie
| Requisito | Tecnologia/approccio |
|---|---|
| Avvio rapido | Base minimale, systemd ottimizzato, initramfs zstd, UKI; obiettivo <5 s su SSD da misurare |
| Desktop | Pace Shell Qt 6/QML, pannelli acrylic |
| Finestre | KWin inizialmente; wlroots da valutare |
| Assistente | LLM locale via llama.cpp/Ollama e cloud API opzionale, integrazione DBus |
| File manager | Dolphin/KIO con skin Pace, oppure QML custom da valutare |
| Gaming | gamemode, MangoHud, overlay e test hardware |
| Cloud | Nextcloud self-hosted brandizzato PaceCloud |
| Android | KDE Connect con branding PaceConnect |
| Lingue | Qt i18n, file TS/QM; italiano e inglese iniziali |
| App Windows | Wine/Proton, Bottles/Lutris tramite PaceWin; compatibilità da verificare per singola app |

## Architettura
- App: File Explorer, Impostazioni, Terminale, PaceAI, Store e giochi.
- Pace Shell: compositor/window manager, taskbar, Start, notifiche, OSD e libreria paceui.
- Servizi DBus: paced, paceai-daemon, pacecloud-sync, pacemode-gamed.
- Base: kernel Linux LTS, systemd, PipeWire, Wayland, Mesa, NetworkManager e Flatpak.

## Roadmap
### Fase 0 — Prototipi
- [x] Prototipo web interattivo.
- [x] Piano tecnico.
- [x] Scaffold Qt/QML iniziale.

### Fase 1 — Shell minimale (stima 1–2 mesi)
- [ ] CMake + Qt 6 avviabile in sessione Wayland esistente.
- [ ] Desktop, wallpaper, icone, taskbar e orologio.
- [ ] Finestre: drag, resize a 8 direzioni, minimizza/massimizza/chiudi e snap.
- [ ] Tema chiaro/scuro, accent color e trasparenze.

### Fase 2 — App di sistema (stima 2–3 mesi)
- [ ] File manager, Impostazioni, Terminale.
- [ ] Centro notifiche e impostazioni rapide.
- [ ] Blocco note e visualizzatore immagini.
- [ ] Italiano e inglese.

### Fase 3 — Servizi (stima 2–3 mesi)
- [ ] paced: impostazioni persistenti e temi via DBus.
- [ ] PaceAI con azioni locali autorizzate.
- [ ] Game Mode e overlay FPS.
- [ ] PaceCloud basato su Nextcloud.
- [ ] PaceConnect basato su KDE Connect.

### Fase 4 — Compatibilità e release (stima 3+ mesi)
- [ ] PaceWin con Wine/Proton e Bottles.
- [ ] Installer Calamares brandizzato.
- [ ] ISO avviabile con archiso o mkosi e test dual-boot.
- [ ] Store Flatpak e beta.

## Ambiente di sviluppo
Dipendenze indicative: CMake >= 3.20, Ninja, compilatore C++17, Qt 6 Quick/Quick Controls 2, Qt Declarative e backend Wayland. Per testare la shell:
```bash
cmake -B build -GNinja -DCMAKE_BUILD_TYPE=RelWithDebInfo
cmake --build build
./build/paceshell
```
Eseguire prima in VM o sessione desktop esistente; non sostituire la shell di sistema durante lo sviluppo.

## Decisioni aperte
KWin per la prima versione; Dolphin/KIO come file manager; C++ per shell e Rust/Python da valutare per daemon; AI ibrida locale/cloud; Arch raccomandato dal piano come target futuro. AnduinOS 1.4 resta la base corrente finché non si approva una migrazione.

## Stima e rischi
Stima indicativa verso una beta usabile: 8–14 mesi per uno sviluppatore singolo nel tempo libero. Rischi: scope creep, compatibilità Windows non universale, manutenzione Qt/KDE e sostenibilità del ritmo. Procedere per milestone verticali funzionanti.

Documento guida fornito per PaceOS; tempi e scelte sono proposte da validare.
