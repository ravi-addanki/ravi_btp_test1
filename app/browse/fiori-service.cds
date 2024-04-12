annotate CatalogService.Books with @UI.Facets : 
[
    {
        $Type : 'UI.ReferenceFacet',
        Label : '{i18n>Details}',
        Target : '@UI.FieldGroup#Price'
    }
];

annotate CatalogService.Books with @UI.FieldGroup#Descr : 
{
    Data :
    [
        {
            $Type : 'UI.DataField',
            Value : descr
        }
    ]
};

annotate CatalogService.Books with @UI.FieldGroup#Price : 
{
    Data :
    [
        {
            $Type : 'UI.DataField',
            Value : price
        },
        {
            $Type : 'UI.DataField',
            Label : '{i18n>Currency}',
            Value : currency.symbol
        }
    ]
};

annotate CatalogService.Books with @UI.HeaderFacets : 
[
    {
        $Type : 'UI.ReferenceFacet',
        Label : '{i18n>Description}',
        Target : '@UI.FieldGroup#Descr'
    }
];

annotate CatalogService.Books with @UI.HeaderInfo : 
{
    TypeName : 'Book',
    TypeNamePlural : 'Books',
    Description :
    {
        $Type : 'UI.DataField',
        Value : author
    }
};

annotate CatalogService.Books with @UI.LineItem : 
[
    {
        $Type : 'UI.DataField',
        Label : '{i18n>Title}',
        Value : ID
    },
    {
        $Type : 'UI.DataField',
        Label : '{i18n>Author}',
        Value : author
    },
    {
        $Type : 'UI.DataField',
        Value : genre.name
    },
    {
        $Type : 'UI.DataField',
        Value : price
    },
    {
        $Type : 'UI.DataField',
        Value : currency.symbol
    }
];

annotate CatalogService.Books with @UI.SelectionFields : 
[
    ID,
    price,
    currency_code
];
