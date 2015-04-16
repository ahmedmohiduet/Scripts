chrome.browserAction.onClicked.addListener(function(tab) {
  chrome.tabs.executeScript({
    code: '$(".topbar-flair").css("display","none");'
  });
});
