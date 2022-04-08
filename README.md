# Yodafy
Purpose:

This iMessage app was built in order to learn Swift. The app idea was sparked from the desire to text my friends effortlessly in a Yoda voice.

About the App:

Yodafy is iMessage app to translate english into Yoda speak. The app UI consists of a title with a short description under it and a user input form with a translate button under that. All the user has to do is to open the app, type in whatever they wish, and press translate. When the translate button is clicked, the user's input is stored and the app makes a call to an API from translations.com. The API returns a JSON and the app uses swift decodable objects to parse the JSON, find the translation, and insert the translation into the iMessage text field. From there, the user can press send and the translation will be sent.

Issues:

- Minor bugs with certain devices
- Have not considered landscape mode UI issues.

Future Plans:

- Building my own API for the translations.
- Continuing to perfect UI
