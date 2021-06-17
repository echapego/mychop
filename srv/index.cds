using from './catalog-service';

annotate CatalogService.Products with @odata.draft.enabled;

annotate CatalogService.Products with @(
    UI: {
 Identification: [{Value: name}],
 SelectionFields: [name],
 LineItem: [
     {Value: ID},
     {Value: name},
     {Value: status},
     {Value: price},
     {Value: taxrate},
     {Value: currency},
     {Value: height},
     {Value: width},
     {Value: depth},
     {Value: sizeuom}
                  ],
 PresentationVariant : {SortOrder : 
       [{   $Type      : 'Common.SortOrderType',
            Property   : ID,
            Descending : false },
        {   $Type      : 'Common.SortOrderType',
            Property   : name,
            Descending : false }]},
           },
  UI  : { HeaderInfo : 
         { TypeName       : 'Product',
            TypeNamePlural : 'Products',
            Title          : {Value : name}, },
        HeaderFacets : [
        {   $Type             : 'UI.ReferenceFacet',
            Target            : '@UI.FieldGroup#Description',
            ![@UI.Importance] : #Medium },
        {   $Type             : 'UI.ReferenceFacet',
            Target            : '@UI.FieldGroup#Desc',
            ![@UI.Importance] : #Medium }
        ],
        FieldGroup #Description  : {Data : [
        {   $Type : 'UI.DataField',
            Value : ID },
        {   $Type : 'UI.DataField',
            Value : name }
        ]},
        FieldGroup #Desc        : {Data : [
        {   $Type : 'UI.DataField',
            Value : depth },
        {   $Type : 'UI.DataField',
            Value : width },
        {   $Type : 'UI.DataField',
            Value : height },
        {   $Type : 'UI.DataField',
            Value : sizeuom }
        ]},
            FieldGroup #Details  : {Data : [
        {   $Type : 'UI.DataField',
            Value : name  },
        {   $Type             : 'UI.DataField',
            Value             : ID,
            ![@UI.Importance] : #Medium },
        {   $Type             : 'UI.DataField',
            Value             : name,
            ![@UI.Importance] : #Medium },
        {   $Type : 'UI.DataField',
            Value : price },
        {   $Type : 'UI.DataField',
            Value : taxrate },
        {   $Type : 'UI.DataField',
            Value : currency },
        ]},
        FieldGroup #AdministrativeData : {Data : [
        {  $Type : 'UI.DataField',
            Value : createdBy },
        {  $Type : 'UI.DataField',
            Value : createdAt },
        {  $Type : 'UI.DataField',
            Value : modifiedBy },
        {  $Type : 'UI.DataField',
            Value : modifiedAt }
        ]}
    },
     UI.Facets : [
    {   $Type  : 'UI.CollectionFacet',
        ID     : 'PODetails',
        Label  : '{i18n>Price Info}',
        Facets : [{  $Type  : 'UI.ReferenceFacet',
                         Label  : '{i18n>Price Info}',
                         Target : '@UI.FieldGroup#Details' } ]
    },
      { $Type  : 'UI.CollectionFacet',
        ID     : 'POAdmininfo',
        Label  : '{i18n>Admin Information}',
        Facets : [{ $Type  : 'UI.ReferenceFacet',
                        Label  : '{i18n>Admin Information}',
                       Target : '@UI.FieldGroup#AdministrativeData'  } ]
    } ]
);
 
annotate CatalogService.Products with {
    ID @title: 'ID';
    name @title: 'Title';
    price @title: 'Price';
    taxrate @title: 'Tax Rate';
    currency @title: 'Currency';
    status @title: 'Status';
    height @title: 'Height';
    width @title: 'Width';
    depth @title: 'Depth';
    sizeuom @title: 'Unit of mesure';
}