public class VFOrderController {
    
    public List<Ordem__c> ordemList {get; set;}
    public String currentValue {get; set;}

    public VFOrderController(){
        
    }

    public VFOrderController(ApexPages.StandardController controller){
        Mercado__c mercado = (Mercado__c) controller.getRecord();

        //mercad.Name
        //mecado.Id
        
        ordemList = [SELECT Id, Name, OperacaoMercado__c, Preco__c, Tipo__c, Status__c, Quantidade__c, Total__c, Validade__c 
                     FROM Ordem__c 
                     WHERE Mercado__c =:mercado.Id
                    ];
        currentValue = BinanceAPI.getPrice(mercado.Id);
    }
}
