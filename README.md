# StarCat

![GitHub CI](https://github.com/ivirtex/starcat/actions/workflows/main.yaml/badge.svg)
[![codecov](https://codecov.io/gh/ivirtex/starcat/branch/master/graph/badge.svg?token=924YWTBVPS)](https://codecov.io/gh/ivirtex/starcat)

Starcat is a Flutter app for tracking world-wide rocket launches featuring iOS Live Activities.

<img src="https://github.com/ivirtex/starcat/assets/57679865/46146bcf-82a3-48c0-af64-4112a4e27bf4" width="30%"/>
<img src="https://github.com/ivirtex/starcat/assets/57679865/aed3df11-1ce6-417c-bb65-ecd4ab59132c" width="30%"/>
<img src="https://github.com/ivirtex/starcat/assets/57679865/bc6ef033-d9a4-4f8d-b364-2cf514d63703" width="30%"/>

---


## Getting Started 🚀

This project contains 3 flavors:

- development
- staging
- production

To run the desired flavor either use the launch configuration in VSCode/Android Studio or use the following commands:

```sh
# Development
$ flutter run --flavor development --target lib/main_development.dart

# Staging
$ flutter run --flavor staging --target lib/main_staging.dart

# Production
$ flutter run --flavor production --target lib/main_production.dart
```

---

## Running Tests 🧪

To run all unit and widget tests use the following command:

```sh
$ flutter test --coverage --test-randomize-ordering-seed random
```

To view the generated coverage report you can use [lcov](https://github.com/linux-test-project/lcov).

```sh
# Generate Coverage Report
$ genhtml coverage/lcov.info -o coverage/

# Open Coverage Report
$ open coverage/index.html
```

---
