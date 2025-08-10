VitalCare - Final package (ready for GitHub + CI)

This package contains a ready-to-upload Flutter project for VitalCare with:
- Firebase scaffolding (add your config files)
- .github workflow to build signed APK (using secrets)
- codemagic.yaml for CodeMagic builds
- AI local FAQs in lib/services/ai_service.dart

Next steps:
1. Create a GitHub repo and push the files.
2. Add GitHub secrets as documented in ci/README_CI.md
3. Add Firebase config files to android/app/ and ios/Runner/
4. Trigger the Actions workflow or use CodeMagic to build the APK