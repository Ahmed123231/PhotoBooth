#include <QtQml/qqmlprivate.h>
#include <QtCore/qdir.h>
#include <QtCore/qurl.h>
#include <QtCore/qhash.h>
#include <QtCore/qstring.h>

namespace QmlCacheGeneratedCode {
namespace _qt_qml_PhotoBooth_Main_qml { 
    extern const unsigned char qmlData[];
    extern const QQmlPrivate::AOTCompiledFunction aotBuiltFunctions[];
    const QQmlPrivate::CachedQmlUnit unit = {
        reinterpret_cast<const QV4::CompiledData::Unit*>(&qmlData), &aotBuiltFunctions[0], nullptr
    };
}
namespace _qt_qml_PhotoBooth_ui_wcScreen_WcScreen_qml { 
    extern const unsigned char qmlData[];
    extern const QQmlPrivate::AOTCompiledFunction aotBuiltFunctions[];
    const QQmlPrivate::CachedQmlUnit unit = {
        reinterpret_cast<const QV4::CompiledData::Unit*>(&qmlData), &aotBuiltFunctions[0], nullptr
    };
}
namespace _qt_qml_PhotoBooth_ui_startButton_StartButton_qml { 
    extern const unsigned char qmlData[];
    extern const QQmlPrivate::AOTCompiledFunction aotBuiltFunctions[];
    const QQmlPrivate::CachedQmlUnit unit = {
        reinterpret_cast<const QV4::CompiledData::Unit*>(&qmlData), &aotBuiltFunctions[0], nullptr
    };
}
namespace _qt_qml_PhotoBooth_ui_appTitle_AppTitle_qml { 
    extern const unsigned char qmlData[];
    extern const QQmlPrivate::AOTCompiledFunction aotBuiltFunctions[];
    const QQmlPrivate::CachedQmlUnit unit = {
        reinterpret_cast<const QV4::CompiledData::Unit*>(&qmlData), &aotBuiltFunctions[0], nullptr
    };
}
namespace _qt_qml_PhotoBooth_ui_infoIcon_InfoButton_qml { 
    extern const unsigned char qmlData[];
    extern const QQmlPrivate::AOTCompiledFunction aotBuiltFunctions[];
    const QQmlPrivate::CachedQmlUnit unit = {
        reinterpret_cast<const QV4::CompiledData::Unit*>(&qmlData), &aotBuiltFunctions[0], nullptr
    };
}
namespace _qt_qml_PhotoBooth_ui_welcomeScreen_WelcomeScreen_qml { 
    extern const unsigned char qmlData[];
    extern const QQmlPrivate::AOTCompiledFunction aotBuiltFunctions[];
    const QQmlPrivate::CachedQmlUnit unit = {
        reinterpret_cast<const QV4::CompiledData::Unit*>(&qmlData), &aotBuiltFunctions[0], nullptr
    };
}
namespace _qt_qml_PhotoBooth_ui_mainScreen_MainScreen_qml { 
    extern const unsigned char qmlData[];
    extern const QQmlPrivate::AOTCompiledFunction aotBuiltFunctions[];
    const QQmlPrivate::CachedQmlUnit unit = {
        reinterpret_cast<const QV4::CompiledData::Unit*>(&qmlData), &aotBuiltFunctions[0], nullptr
    };
}

}
namespace {
struct Registry {
    Registry();
    ~Registry();
    QHash<QString, const QQmlPrivate::CachedQmlUnit*> resourcePathToCachedUnit;
    static const QQmlPrivate::CachedQmlUnit *lookupCachedUnit(const QUrl &url);
};

Q_GLOBAL_STATIC(Registry, unitRegistry)


Registry::Registry() {
    resourcePathToCachedUnit.insert(QStringLiteral("/qt/qml/PhotoBooth/Main.qml"), &QmlCacheGeneratedCode::_qt_qml_PhotoBooth_Main_qml::unit);
    resourcePathToCachedUnit.insert(QStringLiteral("/qt/qml/PhotoBooth/ui/wcScreen/WcScreen.qml"), &QmlCacheGeneratedCode::_qt_qml_PhotoBooth_ui_wcScreen_WcScreen_qml::unit);
    resourcePathToCachedUnit.insert(QStringLiteral("/qt/qml/PhotoBooth/ui/startButton/StartButton.qml"), &QmlCacheGeneratedCode::_qt_qml_PhotoBooth_ui_startButton_StartButton_qml::unit);
    resourcePathToCachedUnit.insert(QStringLiteral("/qt/qml/PhotoBooth/ui/appTitle/AppTitle.qml"), &QmlCacheGeneratedCode::_qt_qml_PhotoBooth_ui_appTitle_AppTitle_qml::unit);
    resourcePathToCachedUnit.insert(QStringLiteral("/qt/qml/PhotoBooth/ui/infoIcon/InfoButton.qml"), &QmlCacheGeneratedCode::_qt_qml_PhotoBooth_ui_infoIcon_InfoButton_qml::unit);
    resourcePathToCachedUnit.insert(QStringLiteral("/qt/qml/PhotoBooth/ui/welcomeScreen/WelcomeScreen.qml"), &QmlCacheGeneratedCode::_qt_qml_PhotoBooth_ui_welcomeScreen_WelcomeScreen_qml::unit);
    resourcePathToCachedUnit.insert(QStringLiteral("/qt/qml/PhotoBooth/ui/mainScreen/MainScreen.qml"), &QmlCacheGeneratedCode::_qt_qml_PhotoBooth_ui_mainScreen_MainScreen_qml::unit);
    QQmlPrivate::RegisterQmlUnitCacheHook registration;
    registration.structVersion = 0;
    registration.lookupCachedQmlUnit = &lookupCachedUnit;
    QQmlPrivate::qmlregister(QQmlPrivate::QmlUnitCacheHookRegistration, &registration);
}

Registry::~Registry() {
    QQmlPrivate::qmlunregister(QQmlPrivate::QmlUnitCacheHookRegistration, quintptr(&lookupCachedUnit));
}

const QQmlPrivate::CachedQmlUnit *Registry::lookupCachedUnit(const QUrl &url) {
    if (url.scheme() != QLatin1String("qrc"))
        return nullptr;
    QString resourcePath = QDir::cleanPath(url.path());
    if (resourcePath.isEmpty())
        return nullptr;
    if (!resourcePath.startsWith(QLatin1Char('/')))
        resourcePath.prepend(QLatin1Char('/'));
    return unitRegistry()->resourcePathToCachedUnit.value(resourcePath, nullptr);
}
}
int QT_MANGLE_NAMESPACE(qInitResources_qmlcache_appPhotoBooth)() {
    ::unitRegistry();
    return 1;
}
Q_CONSTRUCTOR_FUNCTION(QT_MANGLE_NAMESPACE(qInitResources_qmlcache_appPhotoBooth))
int QT_MANGLE_NAMESPACE(qCleanupResources_qmlcache_appPhotoBooth)() {
    return 1;
}
