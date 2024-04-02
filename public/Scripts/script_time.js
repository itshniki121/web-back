window.onload = function () {
  var domLoadTime =
    window.performance.timing.domContentLoadedEventEnd -
    window.performance.timing.navigationStart;
  var serverResponseTime =
    window.performance.timing.responseEnd -
    window.performance.timing.requestStart;
  var totalTime = domLoadTime + serverResponseTime;

  document.getElementById('loadTime').innerHTML =
    'Страница запустилась за ' +
    totalTime +
    'ms (время сервера: ' +
    serverResponseTime +
    'ms, время генерации DOM: ' +
    domLoadTime +
    'ms)';
};
