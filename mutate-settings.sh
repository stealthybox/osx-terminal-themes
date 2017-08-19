#!/bin/zsh
for f in schemes/*.terminal; do
  echo "$(head -n4 $f && grep name -A1 $f && awk 'FNR==NR {a++;next} FNR<a-9 ' $f{,} | tail -n+5 && cat settings.suffix)" > "$f"
done
