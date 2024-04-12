using { sap.capire.bookshop as my } from '../db/schema.cds';

@path : '/service/bookshop'
service bookshop
{
    @odata.draft.enabled
    entity Risks as
        projection on my.Risks;

    @odata.draft.enabled
    entity Mitigations as
        projection on my.Mitigations;
}

annotate bookshop with @requires :
[
    'authenticated-user'
];
