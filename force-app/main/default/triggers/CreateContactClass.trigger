trigger CreateContactClass on Account (after insert) {
    
            CreateContactUtility.CreateContacts(Trigger.new);
}