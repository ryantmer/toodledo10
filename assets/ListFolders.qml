import bb.cascades 1.2
import bb.data 1.0
import bb.system 1.2

Page {
    id: foldersPage
    objectName: "foldersPage"
    
    titleBar: TitleBar {
        title: "Sync for Toodledo - Folders"
    }
    
    Container {
        ActivityIndicator {
            id: networkActivity
            objectName: "networkActivity"
            preferredWidth: 100
            horizontalAlignment: HorizontalAlignment.Center
        }
        Label {
            id: noItems
            text: "You don't have any folders!"
            visible: listView.dataModel.empty
            textStyle.fontSize: FontSize.XLarge
            horizontalAlignment: HorizontalAlignment.Center
            topMargin: 30
        }
        ListView {
            id: listView
            accessibility.name: "Folder list"
            layout: StackListLayout {}
            horizontalAlignment: HorizontalAlignment.Fill
            
            dataModel: app.folderDataModel
            
            listItemComponents: [
                ListItemComponent {
                    type: "item"
                    Container {
                        id: itemContainer
                        StandardListItem {
                            title: ListItemData.name
                            description: itemContainer.ListItem.view.description(
                                        ListItemData.private, ListItemData.archived)
                            
                            contextActions: [
                                ActionSet {
                                    DeleteActionItem {
                                        onTriggered: {
                                            deleteConfirmDialog.show();
                                        }
                                    }
                                }
                            ]
                            
                            attachedObjects: [
                                SystemDialog {
                                    id: deleteConfirmDialog
                                    title: "Delete Folder"
                                    body: "Are you sure you want to delete this folder?"
                                    confirmButton.label: "Delete"
                                    confirmButton.enabled: true
                                    cancelButton.label: "Cancel"
                                    cancelButton.enabled: true
                                    onFinished: {
                                        if (result == SystemUiResult.ConfirmButtonSelection) {
                                            var folderData = {"id": ListItemData.id}
                                            app.folderDataModel.remove(folderData);
                                        }
                                    }
                                }
                            ]
                        }
                    }
                }
            ]
            
            onTriggered: {
                var folder = dataModel.data(indexPath);
                var page = addEditFolderDefinition.createObject();
                page.data = folder;
                page.edit = true;
                page.setup();
                mainNavPane.push(page);
            }
            
            function description(isPrivate, isArchived) {
                if (isPrivate == 1 && isArchived == 1) {
                    return "Archived, Private";
                } else if (isPrivate == 1) {
                    return "Private, Not Archived";
                } else if (isArchived == 1) {
                    return "Archived, Not Private";
                } else {
                    return "Not Archived, Not Private";
                }
            }
        }
    }
    
    actions: [
        ActionItem {
            title: "Refresh"
            ActionBar.placement: ActionBarPlacement.OnBar
            imageSource: "asset:///images/ic_reload.png"
            onTriggered: {
                app.folderDataModel.refresh();
            }
        },
        ActionItem {
            title: "Add Folder"
            ActionBar.placement: ActionBarPlacement.OnBar
            imageSource: "asset:///images/ic_add.png"
            onTriggered: {
                var page = addEditFolderDefinition.createObject();
                page.edit = false;
                page.setup();
                mainNavPane.push(page);
            }
        }
    ]
    
    attachedObjects: [
        ComponentDefinition {
            id: addEditFolderDefinition
            content: AddEditFolder{}
        }
    ]
}
