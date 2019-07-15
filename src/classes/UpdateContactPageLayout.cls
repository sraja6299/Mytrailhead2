public class UpdateContactPageLayout {
    public Metadata.Layout addLayoutItem(){
        List<Metadata.Metadata> layoutsList = 
            Metadata.Operations.retrieve(Metadata.MetadataType.Layout, 
                                         new List<String> {'Contact-Contact Layout'});
        System.debug('layoutsList--->>>' + layoutsList);
        Metadata.Layout layoutMetadata = (Metadata.Layout) layoutsList.get(0);
        System.debug('layoutMetadata--->>>' + layoutMetadata);
        Metadata.LayoutSection contactLayoutSection = null;
       // List<Metadata.LayoutSection> layoutSections = layoutMetadata.layoutSections;
        for (Metadata.LayoutSection section : layoutMetadata.layoutSections) {
            
                contactLayoutSection = section;
        }
        
        List<Metadata.LayoutColumn> contactColumns = contactLayoutSection.layoutColumns;     
        List<Metadata.LayoutItem> contactLayoutItems = contactColumns.get(0).layoutItems;
        
        // Create a new layout item for the custom field
        Metadata.LayoutItem newField = new Metadata.LayoutItem();
        newField.behavior = Metadata.UiBehavior.Edit;
        newField.field = 'AMAPI__Apex_MD_API_Twitter_name__c';
        contactLayoutItems.add(newField);
        
        
        return layoutMetadata;
    }
}