<div align="center>
 <img src="https://github.com/WillowSaysWhat/Enid-Tracker/assets/126318401/479de5a2-732e-4dc0-8c24-e2c7402a7a7a" alt="Image" height="300>
 
 </div>



# Enid Tracker
##### Medicine Consumption Tracker
## Table of Contents 
* [Description of the Application](#description-of-the-application)
* [Software Elements](#software-elements)
* [Understanding the user Interface](#understanding-the-user-interface)
* [Important Widgets](#important-widgets)
  * [Medicine panel](#medicine-panel)
  * [Adding a New Medicine](adding-a-new-medicine)
* [SoftwareDocumentation](#software-documentation)
  * [Software Stack](#software-stack)
  * [Widget Design](#widget-design)
## Description of the Application
Enid Tracker is a cross-platform mobile aplication that monitors medicine consumption.

Enid's user-friendly interface provides a hassle-free experience for users of all ages. The app allows individuals to effortlessly input and manage their medication schedules, setting reminders for each dosage to ensure timely and accurate intake. Leveraging Flutter's cross-platform capabilities, Enid Tracker offers a consistent and smooth experience on both Android and iOS devices.

#### Key Features
* **_Push Notifications_** to remind the user to take their medicine daily, morning, lunch, dinner, and bedtime. The alert will pop up in the same way a Instagram, Telegram, or any other app send push notifications to the user. This will give a familiar feel to Enid Tracker. All push notifications can be set by the user via the app. 
* **_Add New Medicine button_** will be a floating button on the home screen which will allow the user to ceate a new medicine notification/alarm for any new medication they have been prescribed. This option is always availble.
* **_Refil Notifications_** are prompts that remind the user that their medicine stock is getting low and that a visit to the pharmacy is required. This is symbolised by the change in widget color from the theme color to an amber when medicice is low, and red when the medicine is critically low. There will be a reset option for when the user has visited the pharmacy.
* **_Easily Edit Remiders_** so that updates to the user's medicine regime can be quickly adjusted on Edit tracker to reflect those changes. This will be done with a simple click on the medicine panel and the user will be given the option to edit.

_Enid Tracker is currently under construction and will be revealed in it's first iteration in March 2024._

# Software Elements

![image](https://github.com/WillowSaysWhat/Enid-Tracker/assets/126318401/f7ec722b-3418-428f-b868-e69dba35a6f0)


## Understanding the User Interface
The image above is the current famework for the home screen in its the current stage of production. It can be broken down into 2 sections. the circlular icon bar will hold filtering option in the first iteration, but can be changed to hold settings icons and/or other user options. The larger cards display the users medicine information and will have an onPressed action that will allow the user to make changes to the medicine information.
## Important Widgets
This is an overview of the main widgets used in Enid. Widget are separated into their own class if they are deemed to be to large or bulky to remain it the screen file. 
### Medicine Panel
![image](https://github.com/WillowSaysWhat/Enid-Tracker/assets/126318401/b1249396-aebc-457f-934f-ef8cb2f524f0)

The Medicine panel displays the user's medicine name, strength, image and the amount of medicine left. This data is streamed from a NoSQL database. The widget is then added to a ViewList using the the Build funtionality. This allows users to scrow the Medicine Panels and interact with icons on the panel. 

The panel was originally build using a Container that housed columns and rows. However, this caused interference between icons and labels. Instead, we implemented a Stack which allowed us to build the widget in an Adobe Photoshop-like image where different objects could be layered on top of each other. This prevented out-of-bound incidents.

A delete and edit icon also added at this time and while the delete button is working, the edit button is still under construction.

### Add a New Medicine
This was the most difficult screen to build. It was designed to build a small profile of the user's medication, which included an image, the name of the medicine, and the time of day that which the medicine would be taken (Morning, Lunch, Dinner). The profile would update as the user made chioces... The only problem was - the team had no understanding of State Management, so a pause was taken and a thorough investigation into Flutter Provider was made. After
### Mobile Development Concepts Used
<p align="center>
<img src="https://github.com/WillowSaysWhat/Enid-Tracker/assets/126318401/b1bb8ecb-01ee-46ee-8f16-cbf02cf70946" alt="Image" height="300"> </p>

#### State Management
Flutter state management is a crucial aspect of Enid Tracker and is used in the creation of a new medicine. As the user adjusts the name, strength, amount and time of day - the medicine profile will also change to reflect the user's input. It was also used to request updates from the database to populate the list view builder. 
This was something unknown to us at first, however, after some research we discovered Flutter Provider.  

#### Persistent User Data
Google's Firestore No-SQL database was used to fix the persistence of data from session to session. The database is initialised on start up and the app requests data whenever the user changes the state of the 

### Software Stack
Enid Tracker was built using Google's programming language Dart, Mobile development environment Flutter, and No-SQL non-relational database Firebase Firestore.
### Widget Design
The medicine card widget within the list View builder was first created using only rows and columns, howver after a few months of development, the stack feature was discovered and inplemented. this allowed for levels to be used to prevent adjacent text from pushing other elements out-of-bounds. 
<div align="center">
<img src="https://github.com/WillowSaysWhat/Enid-Tracker/assets/126318401/73e30ba2-ecd3-466c-a200-9901fb6db770" alt="Image" height="200">
</div>


### Page Design
### Medicine class
### Adding new pages
### Adding New Widgets

## Future Improvements


