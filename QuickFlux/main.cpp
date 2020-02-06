#include <QApplication>
#include <QQmlApplicationEngine>
#include <QQmlContext>
#include "libs/dispatcher/AppDispatcher.hpp"

int main(int argc, char *argv[])
{
    QApplication app(argc, argv);
    AppDispatcher dispatcher;

    QQmlApplicationEngine engine;


    engine.rootContext()->setContextProperty("AppDispatcher", QVariant::fromValue(&dispatcher));

    //--- Register singleton for actions, stores.
    qmlRegisterSingletonType(QUrl(QLatin1String("qrc:/actions/ActionTypes.qml")), "ActionTypes", 1, 0, "ActionTypes");
    qmlRegisterSingletonType(QUrl(QLatin1String("qrc:/actions/PageActions.qml")), "PageActions", 1, 0, "PageActions");
    qmlRegisterSingletonType(QUrl(QLatin1String("qrc:/stores/PageStore.qml")), "PageStore", 1, 0, "PageStore");

    engine.load(QUrl(QStringLiteral("qrc:/main.qml")));

    return app.exec();
}
