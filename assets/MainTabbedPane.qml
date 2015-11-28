import bb.cascades 1.2
import bb.data 1.0
import bb.system 1.2

TabbedPane {
    id: mainTabbedPane
    objectName: "mainNavPane"
    Menu.definition: MenuDefinition {
        settingsAction: SettingsActionItem {
            onTriggered: {
                settingsSheetDefinition.createObject().open();
            }
        }
        actions: [
            ActionItem {
                title: "About"
                imageSource: "asset:///images/ic_info.png"
                onTriggered: {
                    aboutSheetDefinition.createObject().open();
                }
            }
        ]
        attachedObjects: [
            ComponentDefinition {
                id: settingsSheetDefinition
                content: Settings {
                }
            },
            ComponentDefinition {
                id: aboutSheetDefinition
                content: About {
                }
            }
        ]
    }

    Tab {
        title: "All Tasks"
        EditableListPage {
            listTitle: "All Tasks"
            backingDataType: "task"
            backingData: app.tasks
        }
    }

    Tab {
        title: "Hotlist"
        EditableListPage {
            listTitle: "Hotlist"
            backingDataType: "task"
            backingData: app.hotlist
        }
    }

    Tab {
        title: "Recently Completed"
        EditableListPage {
            listTitle: "Recently Completed"
            backingDataType: "task"
            backingData: app.completedTasks
        }
    }

    Tab {
        title: "Folders"
        ReadOnlyListPage {
            listTitle: "Folders"
            backingDataType: "folder"
            backingData: app.folders
        }
    }

    Tab {
        title: "Locations"
        ReadOnlyListPage {
            listTitle: "Locations"
            backingDataType: "location"
            backingData: app.locations
        }
    }

    Tab {
        title: "Contexts"
        ReadOnlyListPage {
            listTitle: "Contexts"
            backingDataType: "context"
            backingData: app.contexts
        }
    }

    Tab {
        title: "Goals"
        ReadOnlyListPage {
            listTitle: "Goals"
            backingDataType: "goal"
            backingData: app.goals
        }
    }
}