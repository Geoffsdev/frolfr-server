// For more information see: http://emberjs.com/guides/routing/

App.Router.reopen({
  location: 'auto',
  rootURL: '/'
});

App.Router.map(function() {
  this.resource('sessions', function() {
    this.route('login');
    this.route('logout');
  });
  this.resource('courses');
  this.resource('course', { path: '/courses/:id' });
});
