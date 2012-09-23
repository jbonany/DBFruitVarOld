Ext.define('DBFruitVar.model.Location', {
    extend: 'Ext.data.Model',
    
    fields: [
    	{ name: 'name', type: 'string' },
    	],
    
    validations: [
    	{ type: 'presence', field: 'name' },
  		],

    idProperty: 'id',
  	proxy: {
        url: '/locations',
    	type: 'rest',
        format: 'json',
      	reader: {
            type: 'json',
            root: 'locations',
            record: 'location',
            successProperty: 'success'
        },
        writer: {
            // wrap user params for Rails
            getRecordData: function(record) {
            return { user: record.data };
            }
        }  
    }

});

