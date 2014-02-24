Parse.initialize("vblIHzj1gSAMLQewZPWRFQzD8xCzUxowukVumVlO", "MHYRuTRsS2cjunBwbfS76KMLvknP5rqi5lXtHlvq");

var TestObject = Parse.Object.extend("TestObject");

var Lift = Parse.Object.extend({ 
  className: "Lift" 
});

var LiftView = Backbone.View.extend({
  render: function() {
    var html = "<h4>" + this.model.get('type') + "</h4>";
    $.each(this.model.get('sets'), function(i, set) {
      html += "<span>" + set.reps + " x " + set.weight + "</span><br>" 
    });
    this.$el.html(html);
    return this
  }  
});

var LiftList = Parse.Collection.extend({
  model: Lift
});

var LiftListView = Backbone.View.extend({
  initialize: function(){
    this.collection.on('add', this.addOne, this);
  },
  render: function(){
    this.collection.forEach(this.addOne(), this);
  },
  addOne: function(lift){
    var liftView = new LiftView({model:lift});
    this.$el.append(liftView.render().el);
  }
});

var liftList = new LiftList();
var liftListView = new LiftListView({ collection: liftList });


//////////////////
// begin execution
//////////////////

$(function(){
  $("#lifts").html(liftListView.render().el)
})