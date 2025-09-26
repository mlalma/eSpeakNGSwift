# eSpeakNGSwift

A Swift wrapper for the eSpeakNG speech synthesizer amd grapheme-to-phoneme (G2P) library for converting English text to phonetic representations suitable for text-to-speech (TTS) engines.

## Supported Platforms

- iOS 18.0+
- macOS 15.0+
- (Other Apple platforms may work as well)

## Installation

Add eSpeakNGSwift to your Swift Package Manager dependencies:

```swift
dependencies: [
    .package(url: "https://github.com/mlalma/eSpeakNGSwift", from: "1.0.0")
]
```

## Features

- **Phonemization**: Convert text strings to phonetic representations
- **Language Support**: Currently supports English (US and UK variants)
- **Easy Integration**: Simple Swift API with comprehensive error handling
- **Pre-built Framework**: Includes pre-compiled eSpeakNG framework for easy integration

## Basic Usage

```swift
import eSpeakNGLib

do {
    // Create an instance of the eSpeakNG wrapper
    let espeak = try eSpeakNG()

    // Set the language (required before phonemizing)
    try espeak.setLanguage(language: .enUS)

    // Convert text to phonemes
    let phonemes = try espeak.phonemize(text: "Hello world!")
    print("Phonemes: \(phonemes)")

} catch {
    print("Error: \(error)")
}
```

## Language Options

Currently supported languages:

- `.enUS` - English (United States)
- `.enGB` - English (Great Britain)

```swift
try espeak.setLanguage(language: .enGB)
```

## License

This project is licensed under the GNU General Public License v3.0 - see the [LICENSE](LICENSE) file for details.

## Acknowledgments

This library is built on top of the excellent [eSpeakNG](https://github.com/espeak-ng/espeak-ng) speech synthesizer library, which is licensed under GPL v3.
