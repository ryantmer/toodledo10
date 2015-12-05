#ifndef FILTERDATAMODEL_HPP_
#define FILTERDATAMODEL_HPP_

#include <QtNetwork>
#include <QtCore/QObject>
#include <bb/cascades/GroupDataModel>
#include <bb/cascades/QListDataModel>
#include "LoginManager.hpp"
#include "PropertiesManager.hpp"

using namespace bb::cascades;

class FilterDataModel: public GroupDataModel
{
    Q_OBJECT
    Q_PROPERTY(QString filter READ filter WRITE setFilter NOTIFY filterChanged FINAL)
    Q_PROPERTY(QString filterOn READ filterOn WRITE setFilterOn NOTIFY filterOnChanged FINAL)

public:
    static const QString getUrl;
    static const QString addUrl;
    static const QString editUrl;
    static const QString deleteUrl;

    FilterDataModel(QObject *parent = 0);
    virtual ~FilterDataModel();

    virtual QVariant data(const QVariantList& indexPath);

    void setFilter(QString filter);
    void setFilterOn(QString filterOn);
    QString filter();
    QString filterOn();
    Q_INVOKABLE
    void refresh();
    void get(QString type);

    bool isFiltered(const QVariantList& indexPath);

signals:
    void networkRequestStarted();
    void networkRequestFinished();
    void filterChanged(QString filter);
    void filterOnChanged(QString filterOn);
    void toast(QString message);

public slots:
    void onFinished(QNetworkReply *reply);
    void onLogOut();

private:
    QNetworkAccessManager *_netAccMan;
    QString _filter;
    QString _filterOn;
    LoginManager *_loginMan;
    PropertiesManager *_propMan;
    QMapListDataModel *_fullDM;
    int _count;
};

#endif /* FILTERDATAMODEL_HPP_ */