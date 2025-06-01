import "@typespec/http";
import "../models/notifications.tsp";
import "../errors/errorModels.tsp";

using Http;

namespace MyCompany.Notifications {
  @route("/notifications")
  interface NotificationsAPI {
    @get listNotifications(): {
      @body body: {
        notifications: Notification[];
      };
    };
    @get getNotification(@path notificationId: string): {
      @statusCode statusCode: 200;
      @body body: {
        notification: Notification;
      };
    } | {
      @statusCode statusCode: 404;
      @body body: NotFoundError;
    };
  }
}
