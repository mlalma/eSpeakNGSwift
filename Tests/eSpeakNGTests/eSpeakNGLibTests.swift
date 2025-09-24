import Testing
@testable import eSpeakNGLib

@Test func example() async throws {
  let eSpeak = try! eSpeakNG()
  
  try! eSpeak.setLanguage(language: .enUS)
  let phonemizedText = try! eSpeak.phonemize(text: "Hello world!")
  
  #expect(phonemizedText == "h_ə_l_ˈɔʊ w_ˈɜɹ_l_d")
}
