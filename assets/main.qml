import bb.cascades 1.0
import bb.device 1.0

Page {
    id: mainPage
    attachedObjects:[
//        DisplayInfo{
//            id: deviceDisplayInfo
//        },
        HardwareInfo{
            id: deviceHardwareInfo
        },
        BatteryInfo{
            id: deviceBatteryInfo
        },
        DeviceInfo{
            id: deviceInfo
        },
        SdCardInfo{
            id: deviceSDCardInfo
        }
    ]
    Container {
        ListView {
            horizontalAlignment: HorizontalAlignment.Center
            verticalAlignment: VerticalAlignment.Center

            dataModel: GroupDataModel{
                id: listDataModel
                grouping: ItemGrouping.ByFullValue
                sortingKeys: ["key"]
                sortedAscending: true
            }
            listItemComponents:[
                ListItemComponent {
                    type: "item"
                    Container {
                        leftPadding: 5.0
                        bottomPadding: 5.0
                        layout: StackLayout{
                            orientation: LayoutOrientation.LeftToRight
                        }
                        Label {
                            text: ListItemData.title
                        }
                        Label{
                            text: ListItemData.value
                        }
                    }
                }
            ]
            onCreationCompleted:{
                listDataModel.insert({"key" : "Battery Info", "title" : ("Battery Temperature: " + deviceBatteryInfo.temperature)});
                listDataModel.insert({"key" : "Battery Info", "title" : ("Battery Cycle Count: " + deviceBatteryInfo.cycleCount)});
                listDataModel.insert({"key" : "Battery Info", "title" : ("Battery Charging: " + deviceBatteryInfo.chargingState)});
                listDataModel.insert({"key" : "Battery Info", "title" : ("Battery Level: " + deviceBatteryInfo.level + "%")});
                listDataModel.insert({"key" : "Battery Info", "title" : ("Battery Condition: " + deviceBatteryInfo.condition)});
                listDataModel.insert({"key" : "Battery Info", "title" : ("Battery Present: " + deviceBatteryInfo.present)});
                listDataModel.insert({"key" : "Device Info", "title" : ("Device Orientation: " + deviceInfo.orientation)});
                //                listDataModel.insert({"key" : "Display Info", "title" : ("Display ID: " + deviceDisplayInfo.displayId)});
                //                listDataModel.insert({"key" : "Display Info", "title" : ("Display Name: " + deviceDisplayInfo.displayName)});
                //                listDataModel.insert({"key" : "Display Info", "title" : ("Display Pixels: " + deviceDisplayInfo.pixelSize)});
                //                listDataModel.insert({"key" : "Display Info", "title" : ("Display Size: " + deviceDisplayInfo.physicalSize)});
                //                listDataModel.insert({"key" : "Display Info", "title" : ("Display Resolution: " + deviceDisplayInfo.resolution)});
                //                listDataModel.insert({"key" : "Display Info", "title" : ("Display Aspect Type: " + deviceDisplayInfo.aspectType)});
                //                listDataModel.insert({"key" : "Display Info", "title" : ("Display Attached: " + deviceDisplayInfo.attached)});
                //                listDataModel.insert({"key" : "Display Info", "title" : ("Display Detachable: " + deviceDisplayInfo.detachable)});
                //                listDataModel.insert({"key" : "Display Info", "title" : ("Display Aspect Type: " + deviceDisplayInfo.aspectType)});
                //                listDataModel.insert({"key" : "Display Info", "title" : ("Display Technology: " + deviceDisplayInfo.displayTechnology)});
                listDataModel.insert({"key" : "Hardware Info", "title" : ("Keyboard Attached: " + deviceHardwareInfo.isPhysicalKeyboardDevice)});
                listDataModel.insert({"key" : "Hardware Info", "title" : ("Model Number: " + deviceHardwareInfo.modelNumber)});
                listDataModel.insert({"key" : "Hardware Info", "title" : ("Model Name: " + deviceHardwareInfo.modelName)});
                listDataModel.insert({"key" : "Hardware Info", "title" : ("Device Name: " + deviceHardwareInfo.deviceName)});
                listDataModel.insert({"key" : "Hardware Info", "title" : ("Device ID: " + deviceHardwareInfo.hardwareId)});
                listDataModel.insert({"key" : "Hardware Info", "title" : ("Device MEID: " + deviceHardwareInfo.meid)});
                listDataModel.insert({"key" : "Hardware Info", "title" : ("Device IMEI: " + deviceHardwareInfo.imei)});
                listDataModel.insert({"key" : "Hardware Info", "title" : ("Serial#: " + deviceHardwareInfo.serialNumber)});
                listDataModel.insert({"key" : "Hardware Info", "title" : ("Device Pin: " + deviceHardwareInfo.pin)}); 
                listDataModel.insert({"key" : "SD Card Info", "title" : ("SD Card State: " + deviceSDCardInfo.state)}); 
                listDataModel.insert({"key" : "SD Card Info", "title" : ("SD Card Activity: " + deviceSDCardInfo.activity)});                  
            }
        }
    }
//    onCreationCompleted:{
////        Qt.mainPage = mainPage;
////        Qt.deviceInfo = deviceInfo;
////        Qt.deviceBatteryInfo = deviceBatteryInfo;
//    }
//    function stripString(valueToStrip){
//        console.log(valueToStrip)
//        var stripped = valueToStrip.split()
//        console.log(stripped)
//        stripped = stripped.join()
//        console.log(stripped)
//        return stripped;
//    }
}

