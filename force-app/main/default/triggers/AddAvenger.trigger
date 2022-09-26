trigger AddAvenger on Contact (before insert) {
    for (Contact a: Trigger.New){
        a.Department = 'Avenger';
    }
        
}