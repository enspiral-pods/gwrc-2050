define(['knockout', 'text!../../components/text.html', 'utils', 'sizeChecker'],
  function(ko, html, Utils, SizeChecker){
  'use strict';

  var ViewModel = function(params) {
    var lastRoute = params.lastRoute || 'home';

    SizeChecker.checkBig(lastRoute);

    self.heading = 'That's tiny';
    self.content = '<p>The device you are using is too small to properly display this app.</p><p>The <a href="http://classic.2050.org.uk">classic version</a> might work.</p>';
    self.button = false;

  };

  return {
    viewModel: ViewModel,
    template: html
  }
});

