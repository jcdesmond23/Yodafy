# Yodafy-2.0
DALI API Developer Challenge:

This iMessage was built as a part of my application to the DALI lab at Dartmouth College. The app idea was sparked by the API challenge on the application.

About the App:

Yodafy is iMessage app to translate english into Yoda speak. The app UI consists of a title with a short description under it and a user input form with a translate button under that. All the user has to do is to open the app, type in whatever they wish, and press translate. When the translate button is clicked, the user's input is stored and the app makes a call to an API from translations.com. The API returns a JSON and the app uses swift decodable objects to parse the JSON, find the translation, and insert the translation into the iMessage text field. From there, the user can press send and the translation will be sent.

Issues:

The app is fully functional however the user experience is not perfect. The main problem is that the user cannot type into the text box while the app is in compact view. In order to use the app, the user must swipe up and put the app in expanded view. In addition, there is nothing to let the user know there input was translated. In order to see the translation, they must swipe down into compact mode.

Future Plans:

In the future, I plan to update Yodafy to fix the UX issues described above. In addition, I will be creating an app icon. I am also considering adding translations for more Star Wars characters to the app.
