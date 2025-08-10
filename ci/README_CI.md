CI / Signing instructions
=========================

1) GitHub Actions signing (recommended):
- Create a Java keystore (on your PC) and base64-encode it:
  keytool -genkey -v -keystore upload.keystore -alias YOUR_ALIAS -keyalg RSA -keysize 2048 -validity 10000
  base64 upload.keystore  # copy the base64 content
- In your GitHub repo settings -> Secrets -> Actions, add:
  - KEYSTORE_BASE64 (value: base64-encoded keystore)
  - KEYSTORE_PASSWORD
  - KEY_ALIAS
  - KEY_PASSWORD

The workflow will decode the keystore and sign the APK during the build.

2) Firebase files:
- Add google-services.json to android/app/ (do not commit to public repo)
- Add GoogleService-Info.plist to ios/Runner/ (do not commit)

3) CodeMagic:
- You can also use CodeMagic and add the keystore as a secure file / environment variable.
- See codemagic.yaml included in /ci for a simple workflow.