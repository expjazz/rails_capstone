import consumer from "./consumer";

consumer.subscriptions.create("NoticeChannel", {
  connected() {
    // Called when the subscription is ready for use on the server
  },

  disconnected() {
    // Called when the subscription has been terminated by the server
  },

  received(data) {
    document.getElementById("notice-container").innerHTML +=
      '<a href="#" class="dropdown-item">' + data.foo + "</a>";
  },
});