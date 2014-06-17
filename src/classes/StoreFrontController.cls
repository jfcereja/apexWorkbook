public class StoreFrontController {
	
	List<DisplayMerchandise> products;
	
	public list<DisplayMerchandise> getProducts(){
		if(products == null){
		
			products = new List<DisplayMerchandise>();
			for(Merchandise__c item : [SELECT Id, Name, Price__c, Quantity__c FROM Merchandise__c]){
				products.add(new DisplayMerchandise(item));
			}
		}		
		return products;
	}
	public class DisplayMerchandise {
	
		private Merchandise__c merchandise;
		public DisplayMerchandise(Merchandise__c item) {
			this.merchandise = item;
		}
	// Properties for use in the Visualforce view
		public String name {
			get { return merchandise.Name; }
		}
		public double quantity {
			get { return merchandise.Quantity__c; }
		}
		public Decimal price {
			get { return merchandise.Price__c; }
		}
		public Integer qtyToBuy { get; set; }
	}
}