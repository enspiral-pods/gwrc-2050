define(['knockout', 'text!../../components/text.html'], function(ko, html){
  'use strict';

  var ViewModel = function() {
    self.heading = 'Pathway not found';
    self.content = 'The pathway you are looking for does not exist';
    self.button = 'To the calculator!';
  };

  return {
    viewModel: ViewModel,
    template: html
  }
});

