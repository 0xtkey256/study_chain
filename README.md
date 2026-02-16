# StudyChain

A study management app combining the Pomodoro technique with blockchain-verified learning records.

## Overview

StudyChain helps students track study sessions using timed Pomodoro cycles, then logs completed sessions to the blockchain (Astar Network) for tamper-proof verification. Educational institutions and third parties can confirm a student's study time on-chain.

## Features

| Feature | Status | Description |
|---------|--------|-------------|
| Pomodoro Timer | Implemented | Customizable study/break cycles with countdown animation |
| Session Counter | Implemented | Tracks completed Pomodoro sessions |
| Token Wallet | Implemented | Virtual token balance display |
| Shop | Implemented | Browse items purchasable with earned tokens |
| Astar Integration | In Progress | On-chain session logging via Polkadot API |
| Ethereum Minting | Scripted | Token minting via Alchemy Web3 |

### Planned
- Study notes with secure storage
- Focus mode (notification silencing)
- Study group collaboration
- Daily/weekly/monthly goal tracking
- Web3Auth login

## Tech Stack

| Layer | Technology |
|-------|-----------|
| Framework | [Flutter](https://flutter.dev) (iOS, Android, Web) |
| Language | Dart |
| State Management | [BLoC](https://bloclibrary.dev) + Freezed |
| Timer UI | circular_countdown_timer |
| Blockchain | [Astar Network](https://astar.network) (Polkadot parachain) |
| Token Minting | Ethereum via [Alchemy Web3](https://www.alchemy.com) |

## Getting Started

```bash
# Install Flutter dependencies
flutter pub get

# Run code generation (BLoC/Freezed)
flutter pub run build_runner build

# Run on device/emulator
flutter run

# Build for web
flutter build web
```

## Project Structure

```
lib/
  main.dart                 # App entry point
  app.dart                  # Root widget with BLoC providers
  bloc/
    timer/                  # Pomodoro timer state
    wallet/                 # Token wallet state
    shop/                   # Shop/marketplace state
    section/                # Study session tracking
    bottom_navigation_bar/  # Navigation state
  view/
    home.dart               # Tab navigation hub
    timer.dart              # Pomodoro timer screen
    wallet.dart             # Token balance + Astar link
    shop.dart               # Item marketplace
  entity/
    commodity.dart          # Shop item model
  data_provider/
    mock_data_provider.dart # Test data
blockchain/
  mint.js                   # Ethereum token minting script
web/
  integration.js            # Astar Network integration
```

## Architecture

- **BLoC Pattern** — Separates business logic from UI via streams
- **Freezed** — Immutable state classes with code generation
- **Multi-platform** — Single codebase for iOS, Android, and Web

## License

MIT License - see [LICENSE](LICENSE) for details.
