import bb.cascades 1.0
import bb.device 1.0

Page {
    id: mainPage
    attachedObjects:[
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
        },
        CellularNetworkInfo{
            id: deviceCellNetworkInfo
        },
        CellularRadioInfo{
            id: deviceCellRadioInfo
        },
        SimCardInfo{
            id: deviceSIMInfo
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
                            multiline: true
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
                listDataModel.insert({"key" : "Display Info", "title" : ("Display Detachable: " + DisplayInfo.detachable)});
                listDataModel.insert({"key" : "Display Info", "title" : ("Display Attached: " + DisplayInfo.attached)});
                listDataModel.insert({"key" : "Display Info", "title" : ("Display Pixels: " + DisplayInfo.height + " x " + DisplayInfo.width)});
                listDataModel.insert({"key" : "Display Info", "title" : ("Display Secondary ID: " + DisplayInfo.secondaryID)});
                listDataModel.insert({"key" : "Display Info", "title" : ("Display Primary ID: " + DisplayInfo.primaryID)});
                listDataModel.insert({"key" : "Display Info", "title" : ("Display ID: " + DisplayInfo.id)});
                listDataModel.insert({"key" : "Display Info", "title" : ("Display Name: " + DisplayInfo.name)});
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
                listDataModel.insert({"key" : "Radio Info", "title" : ("Supported Technologies: " + deviceCellRadioInfo.technologies)});
                listDataModel.insert({"key" : "Radio Info", "title" : ("SIM IMSI: " + deviceSIMInfo.subscriberIdentifier)});
                listDataModel.insert({"key" : "Radio Info", "title" : ("SIM Serial#: " + deviceSIMInfo.serialNumber)});
                listDataModel.insert({"key" : "Radio Info", "title" : ("Local Area Code: " + deviceCellNetworkInfo.locationAreaCode)});
                listDataModel.insert({"key" : "Radio Info", "title" : ("Home Network Info: " + deviceSIMInfo.mobileCountryCode + "(" + deviceSIMInfo.mobileNetworkCode) + ")"});  
                listDataModel.insert({"key" : "Radio Info", "title" : ("Cellular Network: " + deviceCellNetworkInfo.name)});     
                listDataModel.insert({"key" : "Radio Info", "title" : ("SIM Card State: " + deviceSIMInfo.state)});
            }
        }
    }
}

