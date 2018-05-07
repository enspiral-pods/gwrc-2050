define(['knockout', 'text!../../components/text.html', 'sizeChecker'], function(ko, html, SizeChecker){
  'use strict';

  var ViewModel = function() {

    SizeChecker.destroy();
    self.heading = 'The Wellington 2050 Energy Calculator';
    self.content = '<p>It is now clear that by the year 2050 we need to dramatically change the way we produce and consume energy across the globe.</p><p>Wellington City has set targets to reduce emissions by 30% of 2001 levels by 2020 and by 80% of 2001 levels by 2050.</p>';
    self.button = 'Start';
  };

  return {
    viewModel: ViewModel,
    template: html
  }
});

