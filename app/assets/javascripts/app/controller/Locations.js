Ext.define('DBFruitVar.controller.Locations', {
    extend: 'Ext.app.Controller',

    views: ['location.List','location.Edit'],
  
    stores: ['Locations'],

    models: ['Location'],

    refs: [{
        ref: 'list',
        selector: 'locationlist'
    }],

 	init: function() {
        this.control({
            'locationlist': {
                itemdblclick: this.editLocation,
                selectionchange: this.SelectionChange
            },
            'locationedit button[action=save]': {
                click: this.updateLocation
            },
            'button[action=addLocation]': {
                click: this.addLocation
            },
            'button[action=editLocation]': {
                click: this.editLocation
            },
            'button[action=deleteLocation]': {
                click: this.deleteLocation
            }
        });
    },
    
    addLocation: function() {
    var view = Ext.widget('locationedit');
    view.show();
    },

    editLocation: function() {
    var record = this.getList().getSelectedLocation();
    var view = Ext.widget('locationedit');
    view.down('form').loadRecord(record);
    },

    updateLocation: function(button) {
    var win = button.up('window');
    var form = win.down('form');

    var store = this.getLocationsStore();
    var record = form.getRecord();
    var values = form.getValues();

    if (record) { // perform update
      var r = Ext.create('DBFruitVar.model.Location', values);

      var errors = r.validate();
      if (errors.isValid()) {
        record.set(values);

        store.sync();
        win.close();
      } else {
        console.log(errors);
        form.getForm().markInvalid(errors);
      }
    } else { // perform create
      store.add(values);

      store.sync();
      win.close();
    }

    },

    deleteLocation: function() {
    var record = this.getList().getSelectedLocation();

    if (record) {
      var store = this.getLocationsStore();
      store.remove(record);
      store.sync();
    }

    },

    selectionChange: function(selectionModel, selections) {
    var grid = this.getList();

    if (selections.length > 0) {
      grid.enableRecordButtons();
    } else {
      grid.disableRecordButtons();
    }
  }

});