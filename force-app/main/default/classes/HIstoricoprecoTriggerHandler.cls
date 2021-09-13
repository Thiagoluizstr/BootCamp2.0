public with sharing class HIstoricoprecoTriggerHandler extends TriggerHandler
{
  public HistoricoprecoTriggerHandler() {}

  protected override void afterInsert()
  {
    this.atualizaprecosMercado();
  }

    private void atualiazaprecoMercado()
    {
      Map<id,Meccado__c> napPrecoMercado = new Map<id,Meccado__c>();
      for(Historicopreco__c hp :(List<HistoricoPreco__c) trigger.new)
      {
        napPrecoMercado.put(hp.mercado__c, new mercado__c(id = mercado__c, cotacaoAtual__c = hp.preco__c));
      }

      update napPrecoMercado.values();
    }
}
















