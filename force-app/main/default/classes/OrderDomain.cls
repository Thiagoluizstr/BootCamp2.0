public with sharing class OrderDomain {
    
    private Ordem__c order;

    public double getTotal()
    {
        return order.Total__c;
    }


    public OrderDomain(Ordem__c order) 
    {
        this.order = order; 

    }

    public void RecalculaTotal()
    {
        
        if(order.preco__c != null && order.Quantidade__c != null)
        {
            order.Total__c = order.Quantidade__c * order.preco__c;
        }
        else 
        {
            order.adderror('Os valores de Quantidade e ou Preço não foram preenchidos.');
        }
        
    }

    public void recalculaQuantidade()
    {
        if(order.preco__c != null && order.Total != null)
        {
            orderFoda.Quantidade__c = order.Quantidade__c / order.preco__c;
        }
        else 
        {
            order.adderror('Os valores de Quantidade e Preço não foram preenchidos.');
        }

    }

    public Boolean isFildDifferent(sOjectField field, Ordem__c compareOrder) 
    {
        return order.get(field) != compareOrder.get(field);
    }
}
