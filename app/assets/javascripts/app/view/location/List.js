Ext.define('DBFruitVar.view.location.List' ,{
    extend: 'Ext.grid.Panel',
    alias : 'widget.locationlist',
 
    title : 'Locations',

    store : 'Locations',

    plugins: [
        Ext.create('Ext.grid.plugin.RowEditing', {
            clicksToEdit: 1
        })
        ],

    initComponent: function() {
        this.columns = [
            {header: 'Name',  dataIndex: 'name',  flex: 1},
        ];

        this.addLocationButton = new Ext.Button({
            text: 'Add Location',
            action: 'addLocation'
        });
    
        this.editLocationButton = new Ext.Button({
            text: 'Edit Location',
            action: 'editLocation',
            disabled: true
        });

        this.deleteLocationButton = new Ext.Button({
            text: 'Delete Location',
            action: 'deleteLocation',
            disabled: true
        });

        this.bbar = [this.addLocationButton, this.editLocationButton, this.deleteLocationButton];

        this.callParent(arguments);
    },

    getSelectedLocation: function() {
        return this.getSelectionModel().getSelection()[0];
    },

    enableRecordButtons: function() {
        this.editLocationButton.enable();
        this.deleteLocationButton.enable();
    },

    disableRecordButtons: function() {
        this.editLocationButton.disable();
        this.deleteLocationButton.disable();
    }
    
});

