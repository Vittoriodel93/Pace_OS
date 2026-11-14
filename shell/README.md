# Pace Shell — Qt 6 / QML scaffold 0.1.0

Prima impalcatura nativa: desktop root, taskbar, orologio, menu Start dimostrativo e finestre trascinabili.

## Stato
È uno scaffold di prototipo, non una shell di sistema completa. Le app sono placeholder. Non sono ancora implementati resize a 8 direzioni, snap, gestione completa finestre, compositor, servizi DBus o sessione desktop dedicata.

## Requisiti
CMake >= 3.20, Ninja, compilatore C++17, Qt 6 Quick e Quick Controls 2.

## Build
Dalla directory shell:
```bash
cmake -B build -GNinja -DCMAKE_BUILD_TYPE=RelWithDebInfo
cmake --build build
./build/paceshell
```
Testare dentro una sessione grafica esistente o VM. La build non è stata ancora verificata in CI.

La risorsa wallpaper è dichiarata in resources.qrc: inserire wallpaper.jpg in questa directory prima della compilazione.
