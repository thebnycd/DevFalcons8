public class AccConAndOppOperations {

    public static list<account> fetchacct() {
        List<Account> allAcc= [Select name, annualrevenue, type, accountsource from Account];
        System.debug('all accounts' + allAcc);
        return allAcc;
        }

    public static void pageAccount(String ldSource, string stname){
        list<opportunity> lst = [select name, stagename, id from Opportunity where leadsource =:ldSource and stagename =:stName];
            system.debug(lst);
    }

    public static void annualRev(){
        List<Account>listOfAcc = [select name, annualrevenue,(select name, amount from Opportunities where stageName = 'Closed Won') from Account WHERE type = 'Customer Direct'];
        for(Account acc: listOfAcc){
            system.debug('Account names are' + acc.name);
            For(Opportunity opp: acc.Opportunities){
                system.debug('Opportunities are ' + opp);
            }
        }
    }

    public static Account insertAcc (string name, Decimal annualRevenue, string type){
        Account acc = new Account();
        if(name != null){
        acc.name = name;
        acc.annualRevenue = annualRevenue;
        acc.type = type;
        insert acc;
        system.debug(acc);
        }else{
            system.debug('Account without name cannot be created');
        }
        return acc;

        
    }
}