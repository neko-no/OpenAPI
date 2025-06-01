import "@typespec/http";
import "./controllers/notifications.tsp";

using Http;

@service(#{ title: "Notification API" })
@server("https://api.example.com", "本番サーバー")
@route("/api")
namespace MyCompany;
