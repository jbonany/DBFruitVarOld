
// Set valid ExtJS loading path (/vendor/assets/extjs4/src)
Ext.Loader.setPath('Ext', '/assets/extjs4/src');


Ext.Loader.setConfig({ enabled: true,
  paths: {'DBFruitVar': '/assets/app'
    }
});


// create a new instance of Application class
Ext.application({
  // the global namespace
    name: 'DBFruitVar',

    appFolder: '/assets/app',

  	controllers: ['Locations'],

    stores: ['Locations'],

    models: ['Location'],

    views: ['location.List', 'location.Edit']
  	
});




