// For more information see: http://emberjs.com/guides/routing/

App.Router.reopen({
  location: 'auto',
  rootURL: '/'
});

App.Router.map(function() {
  this.resource('sessions', function() {
    this.route('login');
  });
  this.resource('courses', function() {
    this.route('new');
  });
  this.resource('course', { path: '/courses/:id' }, function() {
    this.resource('leaderboard');
  });
  this.resource('friends');
  this.resource('profile');
  this.resource('password', function() {
    this.route('reset');
  });
  this.resource('users', function() {
    this.route('new');
  });
  this.resource('user', { path: '/friends/:id' });
  this.resource('rounds', function() {
    this.route('new');
  });
  this.resource('round', { path: '/rounds/:id' }, function() {
    this.resource('turns', { path: '/holes/:hole_number' });
  });
});
