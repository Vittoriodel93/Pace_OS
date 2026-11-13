# Architettura PaceOS

Documento iniziale: descrive la separazione desiderata, non componenti già tutti implementati.

## Principi
- Base tracciabile: AnduinOS 1.4, con revisione upstream e modifiche locali documentate.
- Separazione tra branding, desktop, applicazioni, pacchetti e build.
- Procedure ripetibili e verificabili.
- Funzioni local-first quando tecnicamente possibile.
- Licenze e dipendenze documentate.

## Aree
- `src/mods/`: moduli di installazione e personalizzazione.
- `branding/`: loghi, icone, wallpaper e boot.
- `desktop/`: configurazioni desktop.
- `applications/`: app e integrazioni.
- `packages/`: manifest e configurazioni.
- `kernel/`: configurazioni e patch.
- `scripts/`: automazione.
- `tests/`: test statici e di integrazione.

## Flusso
1. Inventario sorgente, revisione, licenze e modifiche locali.
2. Integrazione controllata della base.
3. Personalizzazioni PaceOS separate ove possibile.
4. Controlli automatici.
5. Build ISO isolata.
6. Test di avvio, installazione, aggiornamento e ripristino in VM.
