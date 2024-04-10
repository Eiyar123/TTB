*** Settings ***
Library    AppiumLibrary

*** Variables ***
${RemoteURL}               http://localhost:4723/wd/hub
${PlatformName}            Android
${PlatformVersion}         12.0
${Devicename}              emulator-5554
${appPackage}              com.avjindersinghsekhon.minimaltodo
${appActivity}             com.example.avjindersinghsekhon.toodle.MainActivity

${Locater_BtnAddtask}      id=com.avjindersinghsekhon.minimaltodo:id/addToDoItemFAB
${Locater_Addtitle}        id=com.avjindersinghsekhon.minimaltodo:id/userToDoEditText
${Locater_BtnSend}         id=com.avjindersinghsekhon.minimaltodo:id/makeToDoFloatingActionButton
${Locater_BtnRemind}       id=com.avjindersinghsekhon.minimaltodo:id/toDoHasDateSwitchCompat
${Locater_FirstItem}       xpath=/hierarchy/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.LinearLayout/android.view.ViewGroup/android.support.v7.widget.RecyclerView/android.widget.LinearLayout/android.widget.RelativeLayout
${Locater_BtnUndo}         id=com.avjindersinghsekhon.minimaltodo:id/snackbar_action
${Locater_BtnMenu}         xpath=//android.widget.ImageView[@content-desc="More options"]
${Locater_BtnSetting}      xpath=/hierarchy/android.widget.FrameLayout/android.widget.FrameLayout/android.widget.ListView/android.widget.LinearLayout[1]
${Locater_BtnNight}        id=android:id/checkbox
${Locater_BtnBack}         xpath=//android.widget.ImageButton[@content-desc="Navigate up"]