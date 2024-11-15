public class StoredXSSController {
    public String userInput { get; set; }

    // Method to save user input to the custom object
    public void saveInput() {
        XSS_Entry__c entry = new XSS_Entry__c();
        entry.Name = userInput;  // Store user input
        insert entry;  // Insert the entry into the database
    }

    // Method to retrieve all stored entries from the custom object
    public List<XSS_Entry__c> getStoredEntries() {
        return [SELECT Name FROM XSS_Entry__c];
    }
}
