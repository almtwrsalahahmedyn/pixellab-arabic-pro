#!/usr/bin/env bash
set -e

DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" >/dev/null 2>&1 && pwd )"
cd "$DIR"

echo "=========================================================="
echo "  PixelLab V8 Pro Arabic Studio - Automated Build Script"
echo "=========================================================="

mkdir -p build

echo "[1/4] Building APK with Apktool..."
if [ -f "/tmp/apktool.jar" ]; then
    java -jar /tmp/apktool.jar b . -o build/unsigned.apk
elif command -v apktool &> /dev/null; then
    apktool b . -o build/unsigned.apk
else
    echo "Error: apktool not found!"
    exit 1
fi

echo "[2/4] Zipaligning APK (4-byte alignment)..."
zipalign -f -p 4 build/unsigned.apk build/aligned.apk

echo "[3/4] Signing APK with Release Key..."
KEYSTORE="keystore/release.jks"
ALIAS="madd_release_key"
PASS="HackirMadd2026SecureKey!"

if [ -f "$KEYSTORE" ]; then
    apksigner sign --ks "$KEYSTORE" \
        --ks-key-alias "$ALIAS" \
        --ks-pass "pass:$PASS" \
        --key-pass "pass:$PASS" \
        --out build/PixelLab_V8_TG_Pro_Arabic_PSD.apk \
        build/aligned.apk
else
    echo "Warning: Keystore not found at $KEYSTORE, generating debug key..."
    keytool -genkey -v -keystore build/debug.keystore -storepass android -alias androiddebugkey -keypass android -keyalg RSA -keysize 2048 -validity 10000 -dname "CN=Android Debug,O=Android,C=US"
    apksigner sign --ks build/debug.keystore --ks-pass pass:android --key-pass pass:android --out build/PixelLab_V8_TG_Pro_Arabic_PSD.apk build/aligned.apk
fi

echo "[4/4] Verifying APK signature..."
apksigner verify -v build/PixelLab_V8_TG_Pro_Arabic_PSD.apk

echo "=========================================================="
echo "  Build successful! Output: build/PixelLab_V8_TG_Pro_Arabic_PSD.apk"
echo "=========================================================="
