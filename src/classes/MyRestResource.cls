@RestResource(urlMapping='/Account/*')
global class MyRestResource {
    @HttpGet
    global static List<sObject> getRecord() {
        return null;
    }
}