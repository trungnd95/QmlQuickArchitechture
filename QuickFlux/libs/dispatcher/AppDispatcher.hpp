#ifndef APPDISPATCHER_HPP
#define APPDISPATCHER_HPP

#include <iostream>
#include <QObject>
#include <QJsonValue>

class AppDispatcher : public QObject {
    Q_OBJECT

    public:
        AppDispatcher() = default;
    signals:
        void dispatched(QString action, QJsonValue args);
    public slots:
        void dispatch(QString action, QJsonValue args) {
            emit dispatched(action, args);
        }
};
#endif // APPDISPATCHER_HPP
