/****************************************************************************
** Meta object code from reading C++ file 'FolderSenderReceiver.hpp'
**
** Created by: The Qt Meta Object Compiler version 63 (Qt 4.8.5)
**
** WARNING! All changes made in this file will be lost!
*****************************************************************************/

#include "../../../src/FolderSenderReceiver.hpp"
#if !defined(Q_MOC_OUTPUT_REVISION)
#error "The header file 'FolderSenderReceiver.hpp' doesn't include <QObject>."
#elif Q_MOC_OUTPUT_REVISION != 63
#error "This file was generated using the moc from 4.8.5. It"
#error "cannot be used with the include files from this version of Qt."
#error "(The moc has changed too much.)"
#endif

QT_BEGIN_MOC_NAMESPACE
static const uint qt_meta_data_FolderSenderReceiver[] = {

 // content:
       6,       // revision
       0,       // classname
       0,    0, // classinfo
       9,   14, // methods
       0,    0, // properties
       0,    0, // enums/sets
       0,    0, // constructors
       0,       // flags
       5,       // signalCount

 // signals: signature, parameters, type, tag, flags
      29,   22,   21,   21, 0x05,
      58,   22,   21,   21, 0x05,
      86,   22,   21,   21, 0x05,
     117,   22,   21,   21, 0x05,
     153,  145,   21,   21, 0x05,

 // slots: signature, parameters, type, tag, flags
     173,  168,   21,   21, 0x0a,
     216,  200,   21,   21, 0x0a,
     256,  168,   21,   21, 0x0a,
     291,  285,   21,   21, 0x0a,

       0        // eod
};

static const char qt_meta_stringdata_FolderSenderReceiver[] = {
    "FolderSenderReceiver\0\0folder\0"
    "folderEditReply(QVariantMap)\0"
    "folderAddReply(QVariantMap)\0"
    "folderRemoveReply(QVariantMap)\0"
    "folderGetReply(QVariantMap)\0message\0"
    "toast(QString)\0data\0onFolderAdded(QVariantMap)\0"
    "oldData,newData\0onFolderEdited(QVariantMap,QVariantMap)\0"
    "onFolderRemoved(QVariantMap)\0reply\0"
    "onReplyReceived(QNetworkReply*)\0"
};

void FolderSenderReceiver::qt_static_metacall(QObject *_o, QMetaObject::Call _c, int _id, void **_a)
{
    if (_c == QMetaObject::InvokeMetaMethod) {
        Q_ASSERT(staticMetaObject.cast(_o));
        FolderSenderReceiver *_t = static_cast<FolderSenderReceiver *>(_o);
        switch (_id) {
        case 0: _t->folderEditReply((*reinterpret_cast< QVariantMap(*)>(_a[1]))); break;
        case 1: _t->folderAddReply((*reinterpret_cast< QVariantMap(*)>(_a[1]))); break;
        case 2: _t->folderRemoveReply((*reinterpret_cast< QVariantMap(*)>(_a[1]))); break;
        case 3: _t->folderGetReply((*reinterpret_cast< QVariantMap(*)>(_a[1]))); break;
        case 4: _t->toast((*reinterpret_cast< QString(*)>(_a[1]))); break;
        case 5: _t->onFolderAdded((*reinterpret_cast< QVariantMap(*)>(_a[1]))); break;
        case 6: _t->onFolderEdited((*reinterpret_cast< QVariantMap(*)>(_a[1])),(*reinterpret_cast< QVariantMap(*)>(_a[2]))); break;
        case 7: _t->onFolderRemoved((*reinterpret_cast< QVariantMap(*)>(_a[1]))); break;
        case 8: _t->onReplyReceived((*reinterpret_cast< QNetworkReply*(*)>(_a[1]))); break;
        default: ;
        }
    }
}

const QMetaObjectExtraData FolderSenderReceiver::staticMetaObjectExtraData = {
    0,  qt_static_metacall 
};

const QMetaObject FolderSenderReceiver::staticMetaObject = {
    { &QObject::staticMetaObject, qt_meta_stringdata_FolderSenderReceiver,
      qt_meta_data_FolderSenderReceiver, &staticMetaObjectExtraData }
};

#ifdef Q_NO_DATA_RELOCATION
const QMetaObject &FolderSenderReceiver::getStaticMetaObject() { return staticMetaObject; }
#endif //Q_NO_DATA_RELOCATION

const QMetaObject *FolderSenderReceiver::metaObject() const
{
    return QObject::d_ptr->metaObject ? QObject::d_ptr->metaObject : &staticMetaObject;
}

void *FolderSenderReceiver::qt_metacast(const char *_clname)
{
    if (!_clname) return 0;
    if (!strcmp(_clname, qt_meta_stringdata_FolderSenderReceiver))
        return static_cast<void*>(const_cast< FolderSenderReceiver*>(this));
    return QObject::qt_metacast(_clname);
}

int FolderSenderReceiver::qt_metacall(QMetaObject::Call _c, int _id, void **_a)
{
    _id = QObject::qt_metacall(_c, _id, _a);
    if (_id < 0)
        return _id;
    if (_c == QMetaObject::InvokeMetaMethod) {
        if (_id < 9)
            qt_static_metacall(this, _c, _id, _a);
        _id -= 9;
    }
    return _id;
}

// SIGNAL 0
void FolderSenderReceiver::folderEditReply(QVariantMap _t1)
{
    void *_a[] = { 0, const_cast<void*>(reinterpret_cast<const void*>(&_t1)) };
    QMetaObject::activate(this, &staticMetaObject, 0, _a);
}

// SIGNAL 1
void FolderSenderReceiver::folderAddReply(QVariantMap _t1)
{
    void *_a[] = { 0, const_cast<void*>(reinterpret_cast<const void*>(&_t1)) };
    QMetaObject::activate(this, &staticMetaObject, 1, _a);
}

// SIGNAL 2
void FolderSenderReceiver::folderRemoveReply(QVariantMap _t1)
{
    void *_a[] = { 0, const_cast<void*>(reinterpret_cast<const void*>(&_t1)) };
    QMetaObject::activate(this, &staticMetaObject, 2, _a);
}

// SIGNAL 3
void FolderSenderReceiver::folderGetReply(QVariantMap _t1)
{
    void *_a[] = { 0, const_cast<void*>(reinterpret_cast<const void*>(&_t1)) };
    QMetaObject::activate(this, &staticMetaObject, 3, _a);
}

// SIGNAL 4
void FolderSenderReceiver::toast(QString _t1)
{
    void *_a[] = { 0, const_cast<void*>(reinterpret_cast<const void*>(&_t1)) };
    QMetaObject::activate(this, &staticMetaObject, 4, _a);
}
QT_END_MOC_NAMESPACE
