public class StoreFrontController {
	
	List<Merchandise__c> products;
	
	public list<Merchandise__c> getProducts(){
		if(products != null){
			products = [SELECT Id, Name, Price__c FROM Merchandise__c];
		}
		
		return products;
	}
	
}