({
    init: function (c, e, h) {
    c.set('v.Accountcolumns', [
                {label: 'Name', fieldName: 'Name', type: 'text'},
                {label: 'Phone', fieldName: 'Phone', type: 'Phone'},
                {label: 'Fax', fieldName: 'Fax', type: 'Fax'},
                {label: 'BillingAddress', fieldName: 'BillingAddress', type: 'Address'},                
            ]);
        /* cmp.set('v.mydata', [{
                id: 'a',
                opportunityName: 'Cloudhub',
                confidence: 0.2,
                amount: 25000,
                contact: 'jrogers@cloudhub.com',
                phone: '2352235235',
                trendIcon: 'utility:down'
            },
            {
                id: 'b',
                opportunityName: 'Quip',
                confidence: 0.78,
                amount: 740000,
                contact: 'quipy@quip.com',
                phone: '2352235235',
                trendIcon: 'utility:up'
            }]); */
    },
})