public class ParseLayoutJSON {
    public List<Metadata.Metadata> parseJson(String layoutJson) {
        try{
            
            if(String.isNotEmpty(layoutJson)){
                List<Metadata.Metadata> layoutmeta = (List<Metadata.Layout>) System.JSON.deserialize(layoutJson, List<Metadata.Layout>.class);
                return layoutmeta;
            }
            
        }catch(Exception ex){
            System.debug('Exception is-->>' + ex.getMessage() + 'In line number-->>' + ex.getLineNumber());
        }
        return null;
    }
}