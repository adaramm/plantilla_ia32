#!/bin/bash
set -e

echo "=== Ejecutando pruebas ==="
make test

echo "=== Verificando salidas ==="
./test | tee test_output.log

if grep -q "FAIL" test_output.log; then
  echo "❌ Algunas pruebas fallaron"
  exit 1
else
  echo "✅ Todas las pruebas pasaron"
  exit 0
fi
