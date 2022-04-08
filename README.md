# Yodafy
Purpose:

This iMessage app was built in order to learn Swift. The app idea was sparked from the desire to text my friends effortlessly in a Yoda voice.

About the App:

Yodafy is iMessage app to translate english into Yoda speak. The app UI consists of a title with a short description under it and a user input form with a translate button under that. All the user has to do is to open the app, type in whatever they wish, and press translate. When the translate button is clicked, the user's input is stored and the app makes a call to an API from translations.com. The API returns a JSON and the app uses swift decodable objects to parse the JSON, find the translation, and insert the translation into the iMessage text field. From there, the user can press send and the translation will be sent.
<p align="center">
    <img src="https://user-images.githubusercontent.com/90418784/162547405-d56d60af-02a0-4867-9b91-77f282bd20a8.png" width="300">
    <img src="https://user-images.githubusercontent.com/90418784/162547411-83423658-c65a-4f25-a4c1-737f701f286e.png" width="300">
    <img src="https://user-images.githubusercontent.com/90418784/162547414-8b9d8c20-675a-45bc-9650-e19b5ce94899.png" width="300">
</p>

Issues:

- Minor bugs with certain devices
- Have not considered landscape mode UI issues.

Future Plans:

- Building my own API for the translations.
- Continuing to perfect UI
