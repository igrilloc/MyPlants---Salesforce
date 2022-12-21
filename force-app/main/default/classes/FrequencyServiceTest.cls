@isTest
private with sharing class FrequencyServiceTest {
    
    // TODO: Mock System.today() - emular en el test en qué mes del año estoy.
    @isTest 
    static void getWateringDays_wateringFreqDailyAndWinter_oneDay() {

        // GIVEN - Creacion de datos, escenario...
        Species__c specie = new Species__c();
        specie.Winter_Watering_Frequency__c = 'Daily';


        // WHEN - Llamamos al metodo
        Integer days = FrequencyService.getWateringDays(specie);


        // THEN - Chequear resultado esperado
        Integer expectedDays = 1;
        System.assertEquals(expectedDays, days, 'Expected 1 day returned');
    }

    @isTest 
    static void getWateringDays_wateringFreqDailyAndWinter_threeDay() {

        // GIVEN - Creacion de datos, escenario...
        Species__c specie = new Species__c();
        specie.Winter_Watering_Frequency__c = 'Twice per week';


        // WHEN - Llamamos al metodo
        Integer days = FrequencyService.getWateringDays(specie);


        // THEN - Chequear resultado esperado
        Integer expectedDays = 3;
        System.assertEquals(expectedDays, days, 'Expected 3 day returned');
    }
}

