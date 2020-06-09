// This file is automatically compiled by Webpack, along with any other files
// present in this directory. You're encouraged to place your actual application logic in
// a relevant structure within app/javascript and only use these pack files to reference
// that code so it'll be compiled.

require("@rails/ujs").start();
require("turbolinks").start();
require("@rails/activestorage").start();
require("channels");
import "bootstrap";
// Uncomment to copy all static images under ../images to the output folder and reference
// them with the image_pack_tag helper in views (e.g <%= image_pack_tag 'rails.png' %>)
// or the `imagePath` JavaScript helper below.  let dataf = function () {
//
// const images = require.context('../images', true)
// const imagePath = (name) => images(name, true)

document.addEventListener("DOMContentLoaded", init);

function init() {
  const targetNode = document.getElementById("notice-chat");
  console.log(targetNode);
  const config = { attributes: true, childList: true, subtree: true };
  let count = targetNode.childElementCount;
  let count2 = 0;
  let chatForm = document.getElementById("chat-form");
  let notification = document.getElementById("notification");
  let chatBtn = document.getElementById("chat-btn");
  if (chatBtn != null) {
    chatBtn.addEventListener("click", (e) => {
      notification.parentElement.parentElement.classList.remove("d-none");
    });
  }
  const callback = function (mutationsList, observer) {
    for (let mutation of mutationsList) {
      if (
        mutation.type === "childList" &&
        targetNode.childElementCount > count
      ) {
        notification.parentElement.parentElement.classList.remove("d-none");
        count += 1;
        count2 += count + 1 - targetNode.childElementCount;
        chatForm.action = "/managing_employees";
        document.querySelector(
          "#notification span"
        ).textContent = ` (${count2})`;
        console.log("A child node has been added or removed.");
      } else if (mutation.type === "attributes") {
        console.log(
          "The " + mutation.attributeName + " attribute was modified."
        );
      }
    }
  };

  const observer = new MutationObserver(callback);

  observer.observe(targetNode, config);
}
