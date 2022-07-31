Set<string> uniqeNameSet = new Set<String>();
uniqeNameSet.add('Tom');
uniqeNameSet.add('Jerry');
uniqeNameSet.add('Donald');
system.debug(uniqeNameSet);
system.debug(uniqeNameSet.size());

Boolean cont = uniqeNameSet.contains('Esra');
System.debug(cont);
Boolean empt = uniqeNameSet.isEmpty();
System.debug(empt);

uniqeNameSet.clear();
