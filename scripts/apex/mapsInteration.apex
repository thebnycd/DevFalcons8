map<string, decimal> currISOCodeAndExchangeRateMap = new map<string, decimal>();
currISOCodeAndExchangeRateMap.put('AUD', 0.73);
currISOCodeAndExchangeRateMap.put('CAD', 0.78);
currISOCodeAndExchangeRateMap.put('EUR', 1.13);
currISOCodeAndExchangeRateMap.put('NZD', 0.68);
currISOCodeAndExchangeRateMap.put('INR', 0.013);

system.debug(currISOCodeAndExchangeRateMap);

system.debug(currISOCodeAndExchangeRateMap.get('EUR'));

system.debug(currISOCodeAndExchangeRateMap.containsKey('SAD'));

set<string> above1Dol = new set<string>();
set<string> less1Dol = new set<String>();

for(String currISO: currISOCodeAndExchangeRateMap.keySet()){
    if(currISOCodeAndExchangeRateMap.get(currISO) >= 1){
        above1Dol.add(currISO);
    }else{
        less1Dol.add(currISO);
    }
}

system.debug('Above 1 DOl: ' + above1Dol);
system.debug('Less than 1 Dollar: ' + less1Dol);