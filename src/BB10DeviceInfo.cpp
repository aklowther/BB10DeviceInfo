// Default empty project template
#include "BB10DeviceInfo.hpp"
#include <bb/device/DisplayInfo>

#include <bb/cascades/Application>
#include <bb/cascades/QmlDocument>
#include <bb/cascades/AbstractPane>

using namespace bb::cascades;
using namespace bb::device;

BB10DeviceInfo::BB10DeviceInfo(bb::cascades::Application *app)
: QObject(app)
{
	QmlDocument *qml = QmlDocument::create("asset:///main.qml").parent(this);

	DisplayInfo display;
    int width = display.pixelSize().width();
    int height = display.pixelSize().height();
    int id = display.displayId();
    int primaryId = display.primaryDisplayId();
    int secondaryId = display.secondaryDisplayId();
    bool attached = display.isAttached();
    bool detachable = display.isDetachable();
    QString name = display.displayName();
    //int displayTech = display.displayTechnology;

    QDeclarativePropertyMap* displayProperties = new QDeclarativePropertyMap;
    displayProperties->insert("width", QVariant(width));
    displayProperties->insert("height", QVariant(height));
    displayProperties->insert("id", QVariant(id));
    displayProperties->insert("primaryID", QVariant(primaryId));
    displayProperties->insert("secondaryID", QVariant(secondaryId));
    displayProperties->insert("name", QVariant(name));
    //displayProperties->insert("tech", QVariant(displayTech));
    displayProperties->insert("attached", QVariant(attached));
    displayProperties->insert("detachable", QVariant(detachable));

    qml->setContextProperty("DisplayInfo", displayProperties);

    AbstractPane *root = qml->createRootObject<AbstractPane>();
    app->setScene(root);
}

