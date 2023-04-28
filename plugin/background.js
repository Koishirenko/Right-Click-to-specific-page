chrome.commands.onCommand.addListener((command) => {
  if (command === "go-to-specific-page") {
    goToSpecificPage();
  }
});

function goToSpecificPage() {
  const specificUrl = "https://game.granbluefantasy.jp/#quest/supporter/510031/5"; // 替换为您想要跳转到的特定页面的 URL
  chrome.tabs.update({ url: specificUrl });
}
