({
    handleOrder : function(component, event, helper) {

    },

    handledChange : function(component, event, helper){
        //console.log(event.getParam("checked")[0]);
        component.set("v.opMercado", !event.getParam("checked"));
    }
})
