// Default empty project template
#ifndef BB10DeviceInfo_HPP_
#define BB10DeviceInfo_HPP_

#include <QObject>

namespace bb { namespace cascades { class Application; }}

/*!
 * @brief Application pane object
 *
 *Use this object to create and init app UI, to create context objects, to register the new meta types etc.
 */
class BB10DeviceInfo : public QObject
{
    Q_OBJECT
public:
    BB10DeviceInfo(bb::cascades::Application *app);
    virtual ~BB10DeviceInfo() {}
};


#endif /* BB10DeviceInfo_HPP_ */
