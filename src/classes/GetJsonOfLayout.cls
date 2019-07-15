public class GetJsonOfLayout {
    public String getLayoutJSON(String layoutName){
        if(String.isNotEmpty(layoutName) && String.isNotBlank(layoutName)){
            try{
                List<String> layoutNameList = new List<String>();
                layoutNameList.add(layoutName);
                List<Metadata.Metadata> sobjectlayouts = Metadata.Operations.retrieve(Metadata.MetadataType.Layout, layoutNameList);
                String sobjectlayouts_JSON = JSON.serialize(sobjectlayouts);
                System.debug('sobjectlayouts_JSON-->>>' + sobjectlayouts_JSON);
                
                if(String.isNotEmpty(sobjectlayouts_JSON) && String.isNotBlank(sobjectlayouts_JSON)){
                    return sobjectlayouts_JSON;
                }
                
            }catch(Exception ex){
                System.debug('Exception is-->>' + ex.getMessage() + 'In Line Number-->>' + ex.getLineNumber());
            }
        }    
        return null; 
    }
}