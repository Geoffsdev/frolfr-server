App.RoundsNewController = Ember.ObjectController.extend({
  selectedPlayer: null,
  query: null,

  noPlayerSelected: function() {
    return Ember.isEmpty(this.get('selectedPlayer'));
  }.property('selectedPlayer'),

  actions: {
    addPlayer: function() {
      this.get('players').addObject(this.get('selectedPlayer'));
      this.set('selectedPlayer', null);
      this.set('query', null);
    },

    removePlayer: function(player) {
      this.get('players').removeObject(player);
    },

    createRound: function() {
      var _this = this;
      this.get('model').save().then(function(round) {
        _this.transitionToRoute('turns', round, 1);
      });
    }
  }
});