# test-scheduleapp
 
Gruppövning på gränssnittstestning: ScheduleApp
star_outline
unfold_more
Övningen omfattar utforskande testning, användbarhetstestning och gränssnittstestning.

ScheduleApp är en schemaläggningsapplikation för undervisning. Den är under utveckling (delar av applikationen saknas eller är ofärdiga). Applikationen hanterar klasser, kurser, lärare, lektioner, visualisering av schema, lite statistik och början på ett faktureringssystem för att debitera undervisning.

Ni ska i grupp utforska, planera och genomföra gränssnittstestning och användbarhetstestning för ScheduleApp.
Utforska och dokumentera först applikationen. Var noga med att notera vilka typer av data och värden ni kommer att behöva testa. Skapa sedan BDD-testning med Gherkin och Cucumber utifrån befintlig funktionalitet.

När detta är gjort finns det två ofärdiga funktionsområden som ni kan skapa underlag för med hjälp av användbarhetstestning. Det finns idag inget sätt att faktiskt lägga till undervisningstillfällen i schemat och inget sätt att hantera fakturering av utförd undervisning.
Undersök och förklara / illustrera sedan hur dessa funktioner bäst skulle kunna utformas.

Att sätta upp applikationen
Applikationen finns publicerad online på flera domäner - ni kan välja att använda en av dem direkt:

https://scha1.nodehill.com/

https://scha2.nodehill.com/

https://scha3.nodehill.com/

https://scha4.nodehill.com/

Ni kan också sätta upp applikationen på er lokala dator, men det kräver att NodeJS kan köra “node gyp” (en process som använder Python för att kompliera kod) och detta kan ibland ta lite tid att få ordning på.
Prova gärna om det fungerar på er dator, men använd annars en av de publicerade domänerna.

Ni hittar git-repot för ScheduleApp här: https://github.com/WeeHorse/scheduleapp
Instruktioner för att komma igång finns i ReadMe-filen i repot.

När ni ska utforska ScheduleApp kan ni logga in med exempel@school.net och abc123

Att komma igång med testningen
Ni kan utgå från ett starter-projekt (samma testprojekt som för Lumia eller Willys): Ladda hem det här
Öppna mappen i VS Code.
Kör npm install i terminalen för att installera Cypress och Cucumber.
Förbered domänen (applikationen) som ni ska testa.
Ändra i baseUrl.js i testmallen till den domän ni använder (på localhost eller online).
Kör npm test för att köra testerna (alternativt npm run test-ui för att köra dem i det grafiska gränssnittet).
OBS! Tänk på att när ni testar att skapa, ändra och radera data så är det en bra idé att använda en ordning som gör att ni återställer efter varje test, alltså:
Först göra ett test som skapa ett nytt objekt .
Sedan göra ett test som läser objektet.
Sedan göra ett test som ändrar objektet.
Sist göra ett test som raderar objektet.
(Känner du att övningen är svår och att du inte kommer så långt gör det ingenting vad gäller ditt paper/inlämning. Skriv i så fall det. Det får du inga minuspoäng för. Men när ni arbetar tillsammans i grupp har ni möjlighet att hjälpa varandra och komma längre än på egen hand.)