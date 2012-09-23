Ext.define('DBFruitVar.store.Locations', {
    extend: 'Ext.data.Store',
    
    model: 'DBFruitVar.model.Location',
    autoLoad: true,
    autoSync: false,

    listeners: {
    load: function() {
      console.log(arguments);
    },
    update: function() {
      console.log(arguments);
    },
    beforesync: function() {
      console.log(arguments);
    }
  }
 
});