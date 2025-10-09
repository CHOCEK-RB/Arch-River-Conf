#!/bin/sh
screenshot_dir="$HOME/Pictures/Screenshots"

_process_screenshot() {
  tmp_file=$(mktemp)
  if "$@" "$tmp_file"; then
    # Copiar la imagen al portapapeles especificando el tipo MIME
    wl-copy --type image/png <"$tmp_file"
    # Crear el directorio si no existe
    mkdir -p "$screenshot_dir"
    timestamp=$(date +'%Y%m%d_%Hh%Mm%Ss')
    mv "$tmp_file" "$screenshot_dir/shot_$timestamp.png"
  else
    rm "$tmp_file"
  fi
}

take_screenshot() {
  case "$1" in
  area)
    # Captura de área con grim y slurp
    _process_screenshot grim -g "$(slurp)"
    ;;
  full)
    # Captura completa de pantalla
    _process_screenshot grim
    ;;
  *)
    echo "Uso: $0 <area|full>"
    ;;
  esac
}

take_screenshot "$1"
