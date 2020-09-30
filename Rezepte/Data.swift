//
//  Data.swift
//  Rezepte
//
//  Created by Natalie Wolf on 26.09.20.
//
import SwiftUI

struct Recipe: Hashable, Encodable, Identifiable {
    var id : String
    let title: String
    let subtitle: String
    let category: String
    let time: String
    let description: String
    let image: String
    //var favourited: Bool
}

struct Data {
    static let recipes = [
        Recipe(id: "0", title:"Veganes Bananenbrot", subtitle: "Mit Walnüssen verfeinert", category: "Amerikanisch", time: "20 Min.", description:"Ofen auf 170 Grad Umluft vorheizen. Eine Kastenform (ca. 30 cm x 10 cm) einfetten und über die lange Seite mit Backpapier auslegen. Lass das Papier etwas überhängen, damit du später das Bananenbrot leicht aus der Form heben kannst.\n\nWalnüsse hacken und in einer Pfanne trocken rösten, bis sie zu duften beginnen. Abkühlen lassen.\n\nEier mit Zucker sehr schaumig rühren (das dauert ca. 10 Minuten), die sehr weiche Butter zugeben und nochmals schaumig rühren.\n\nDie Bananen mit einer Gabel zerdrücken (es dürfen noch kleine Stückchen zu sehen sein) und mit Zitronensaft beträufeln. Bananenmus und Zimt zum Teig geben und unterrühren.\n\nJetzt das gesiebte Mehl mit Salz und Backpulver sowie die gehackten Walnüsse kurz unterrühren.\n\nDen Teig in die vorbereitete Kastenform gießen und ca. 50 Minuten backen. Sollte die Oberfläche zu dunkel werden, zum Ende der Backzeit ein Stück Alufolie darüber legen.\n\nStäbchenprobe machen. Wenn das Bananenbrot fertig ist, aus dem Ofen holen. Die kurze Seite, die nicht mit Papier ausgelegt ist, vorsichtig mit einem Messer vom Rand lösen. In der Form etwas abkühlen lassen, dann mittels des überhängenden Backpapiers das Bananenbrot aus der Form heben.", image: "Bananenbrot"),
        Recipe(id: "4",title:"Cinnamon Rolls", subtitle: "Einfach und lecker.", category: "Amerikanisch", time: "30 Min.", description: "220 ml Milch und 50 g Butter kurz erwärmen, bis die Butter geschmolzen ist. Zunächst 450 g Mehl, eine Prise Salz, 70 g Zucker und ein Ei in eine Schüssel geben. Eine Mulde in das Mehl drücken und die Hefe hineinbröseln. Die Mich hineingießen und alles von der Mulde aus nach außen zu einem glatten Teig verkneten. Wenn der Teig noch zu klebrig ist, nach und nach nur so viel Mehl hinzugeben, bis er sich gut verarbeiten lässt. Zugedeckt an einem warmen Ort 1 Stunde gehen lassen.\n\nDen Teig rechteckig ausrollen und mit der Butter bestreichen. Zucker und Zimt mischen und darüber streuen, keinen Rand lassen. Von der langen Seite her aufrollen und in 2 - 3 cm dicke Scheiben schneiden. Mit der Schnittfläche nach unten in eine gefettete Form (z.B. eine Auflaufform) setzen und zugedeckt weitere 30 Minuten gehen lassen.\n\nFür die Glausur 100 g Frischkäse, 30 g Butter und 100 g Puderzucker mit vier Trocken Vanillearoma verrühren. Wenn sie etwas zu dicklich erscheint, ein wenig Milch hinzugeben - sie sollte aber auf keinen Fall zu flüssig werden.\n\nNatürlich kann man nach Belieben auch eine normale Glasur aus Milch und Puderzucker zubereiten, diese hier verleiht dem Rezept aber einen besonderen Kick. Die Rollen im vorgeheizten Backofen bei 180 °C Ober-/Unterhitze ca. 15 - 20 backen.", image: "CinnaminBuns"),
        Recipe(id: "17",title:"American Sandwich", subtitle: "Praktisch für unterwegs", category: "Amerikanisch", time: "15 Min.", description: "Die Tomaten waschen, vierteln, entkernen und würfeln. Mit dem abgetropften Thunfisch und dem Quark vermengen und mit Zitronensaft, Salz und Pfeffer abschmecken.\n\nDie Salatblätter waschen, putzen und klein zupfen. Die Hälfte auf vier Scheiben Brot verteilen und mit der Thunfischcreme bestreichen. Den restlichen Salat darauf verteilen und die restlichen Brotscheiben darauf legen. Jeweils diagonal halbieren und servieren.", image: "Sandwich"),
        Recipe(id: "12", title:"Zimt Pancakes", subtitle: "Mit Äpfeln, Walnüssen und Erdnussbutter", category: "Amerikanisch", time: "20 Min.", description: "Zunächst ein Ei gmeinsam mit 90 ml Milch, einem Esslöffel flüssigem Kokosöl und ein bis zwei Esslöffel Zucker schumig mixen. Anschließend  40 ml Mineralwasser hinzugeben, damit die Kohlensäure enthalten bleibt.\n\nIn einer Schüssel 75 g Mehl, einem Teelöffel Zimt und einem Teelöffel Backpulver zunächst separat vermischen und dann zu Milchmischung geben. Alles kurz und schnell mixen. Der Teil sollte eine cremige und dickflüssige Konsistenz haben.\n\nDen Teig dann ca. 10 Minuten stehen lassen. Kokosöl in einer großen Pfanne auf mittlerer Stufe erhitzen. Nun ca. zwei Teelöffel Teil pro Pancake in die Pafanne geben und mit einer kreisenden Bewegung runde Pancakes formen. Sobald sich oben Bläschen bilden, die Pfannkuchen werden und für weitere zwei bis drei Minuten zuende backen. \n\nDie warmen Pankakes mit Erdnussbutter, Äpfeln und Walnüssen servieren.", image: "Pancakes"),
        Recipe(id: "1",title:"Baguettes", subtitle: "Französischen Klassier", category: "Französisch", time: "55 Min.", description: "400 g Mehl,  eineinhalb Teelöffel Salz und eine Prise Zucker in einer Schüssel vermischen. Ein viertel Würfel frische Hefe hinein bröckeln. 270ml lauwarmes Wasser zugeben. Alles verkneten, bis kein Mehl mehr zu sehen ist.\n\nDen Teig zugedeckt 2 Std. ruhen lassen.\n\nTeig auf eine stark bemehlte Arbeitsfläche schütten und mit Hilfe einer Teigkarte oder einem Messer in zwei Teile halbieren. Jedes Teigstück mit den Händen zu einem ca. 40 cm langen Strang formen und auf ein mit Backpapier belegtes Backblech legen. Mit etwas Mehl bestäuben und zugedeckt ruhen lassen bis der Ofen auf 230 Grad (Umluft: 210 Grad) vorgeheizt ist.", image: "Baguette"),
        Recipe(id: "2",title:"Granola Bowl mit Kokos", subtitle: "Nach Lust und Laune mit Obst servieren.", category: "Amerikanisch", time: "10 Min.", description: "Eine halbe Banane und die Hälfte der Beeren mit dem Quark und etwas Wasser mischen und mit dem My Smoothie Extractor zu Brei verarbeiten. Diesen anschließend in eine Schale geben.\n\nDie restliche Banane und Beeren sowie die Kokosraspeln, Leinsamen, Granola und etwas Honig als Topping anrichten.", image: "Bowl"),
        Recipe(id: "3",title:"Pekanuss-Schokokuchen", subtitle: "Leicht und schnell selbstgemacht", category: "Französisch", time: "55 Min.", description: "200 g Zartbitterschokolade und 100 g Vollmilchschokolade grob hacken und mit 110 g Butter über einem heißen Wasserbad schmelzen. Drei Teelöffel Crème fraîche unterrühren.\n\nWährenddessen eine Backform oder ein kleines tiefes Backblech mit Backpapier auslegen. 130 g Pekannüsse grob hacken. Drei Eier mit 100 g Zucker und einem halben Teelöffel Salz in einer Schüssel hell cremig aufschlagen, bis sich der Zucker gelöst hat. Nach und nach die abgekühlte Schokolade unter den Eier-Mix rühren.\n\n180 g Mehl mit Nüssen und 10 g Backpulver mischen und ebenfalls unterrühren. Teig in die Backform füllen und glatt streichen. Kuchen im vorgeheizten Backofen bei 180 °C (Umluft 160 °C; Gas: Stufe 2–3) etwa 25–30 Minuten backen - er sollen in der Mitte noch etwas weich sein, so dass bei der Stäbchenprobe noch ein wenig Teig kleben bleiben darf. Abkühlen lassen und in Stücke (ca. 5 x 6 cm) schneiden.", image: "Pecanut"),
        Recipe(id: "15",title:"Frühstücks-Quiche", subtitle: "Ein klassiker zum Frühstück.", category: "Französisch", time: "75 Min.", description: "Für den Boden 150 g Kartoffeln schälen, waschen, trocken tupfen und grob raspeln. Kartoffeln,  15 g Mehl, ein Ei gut vermengen, mit Salz, Pfeffer und Muskat würzen. Eine Tarteform (24 cm Ø) fetten und mit Mehl ausstäuben.\n\nKartoffelmasse in die Form geben und als Boden und Rand andrücken, dabei den Rand etwas höher drücken als der Formrand. Im vorgeheizten Backofen auf unterster Schiene ca. 15 Minuten backen. Inzwischen Zwiebel schälen und fein würfeln. Champignons putzen, säubern und vierteln. Zucchini waschen, putzen, trocken reiben und grob raspeln. Öl in einer Pfanne erhitzen, Champignons darin unter Wenden kräftig anbraten. Zwiebel und Zucchini zufügen, kurz mit anbraten. Mit Salz und Pfeffer würzen. Schinken untermengen. Käse fein reiben.\n\nFür den Guss Sahne und drei Eier verquirlen. Mit Salz, Pfeffer und Muskat abschmecken. Boden aus dem Ofen nehmen, Champignon-Zucchini-Schinkenmischung gleichmäßig darauf verteilen. Guss gleichmäßig darübergießen. Mit Käse bestreuen und bei gleicher Temperatur ebenfalls auf unterster Schiene ca. 30 Minuten backen.\n\nMajoran waschen, trocken schütteln, Blättchen von den Stielen zupfen. Quiche aus dem Ofen nehmen, ca. 10 Minuten ruhen lassen. Vorsichtig aus der Form lösen und mit Majoran bestreut auf einer Platte anrichten.", image: "Tarte"),
        Recipe(id: "6",title:"Pochierte Eier auf Brot", subtitle: "Serviert mit Räucherlachs und Holandaise", category: "Französisch", time: "30 Min.", description: "In einem großen Topf Wasser erhitzen. Die Eier in einer Metallschüssel aufschlagen. Die Schüssel sollte in den Topf passen. Das Wasser sollte die Schüssel nicht berühren die Butter in der Mikrowelle kurz schmelzen, dass sie flüssig ist. Sie sollte lauwarm sein. Die Schüssel in den Topf stellen und die Flamme klein stellen. Nun die Eier mit dem Schneebesen schaumig rühren und das Salz zugeben. Die Hollandaise Sauce gut mit dem Schneebesen wie bei einer Zabaione rühren und nicht aufhören. \n\nGanz langsam die flüssige Butter zu dem Eigelb geben und mit dem Senf und dem Zitronensaft aufschlagen bis sie eindickt. Die Eier einzeln in einer Schüssel aufschlagen und vorsichtig in das siedende aber nicht kochende Wasser gleiten lassen. Mit einem Löffel vorsichtig das Eiweiß um das Eigelb drehen. Die Eier im Essigwasser ca. vier Minuten pochieren.\n\nAuf eine getoastete Scheibe Brot der Rächerlachs legen. Die pochierten Eier mit einem Schöpflöffel entnehmen und zum Abtropfen auf Küchenpapier geben. Dann auf das Brot setzen und mit einem Löffel etwas Hollandaise darauf verteilen.", image: "EggBenedict"),
        Recipe(id: "8",title:"Burger mit Laugenbrötchen und Spiegelei", subtitle: "Burger mal anders", category: "Deutsch", time: "30 Min.", description: "Den Backofen vorheizen. Tomaten und Essiggurken in dünne Scheiben schneiden. Die Zwiebel schälen und in Ringe schneiden. \n\nDie Semmeln quer halbieren und im Ofen (Mitte) 5 Minuten rösten. Etwas Öl in zwei Pfannen erhitzen. In einer Pfanne die Burgerpatties von beiden Seiten in 10 Minuten braun braten. \n\nDie Eier in die zweite Pfanne aufschlagen und bei schwacher Hitze 2–3 Minuten stocken ­lassen. Dann wenden und die Spiegeleier von der zweiten Seite ebenfalls 2–3 Minuten braten. Mit Salz und Pfeffer würzen. \n\nDie Schnittflächen der Semmeln mit Senf bestreichen und die Salatblätter darauf verteilen. Auf die Böden jeweils ein Patty, ein Spiegelei, Tomaten, Gurken und Zwiebelringe schichten. \n\nWer möchte kann auch zusätzlich noch Bacon anbraten und diesen auf den Burger legen. Die Deckel auflegen und mit Holzstäbchen fixieren.", image: "Laugen"),
        Recipe(id: "7",title:"Apfelkuchen mit Streuseln", subtitle: "Küchen zum Frühstück", category: "Deutsch", time: "90 Min.", description: "Butter, Zucker und Vanillezucker schaumig schlagen, nach und nach die Eier unterrühren. Zum Schluss kommt eine Mischung aus Mehl und Backpulver dazu.\n\nDen Teig auf einem gefetteten Backblech verteilen. Die Äpfel vierteln und das Kerngehäuse entfernen. Jedes Apfelviertel mit einem kleinen Messer 3-4x einschneiden, aber nicht durch, dann den Teig dicht mit den Äpfeln belegen.\n\nDer Streuselteig besteht aus Butter, Zucker, Vanillezucker und Mehl. Alles miteinander verkneten und in grobe Brösel zupfen und gleichmäßig auf den Früchten verteilen.\n\nNun wird der Apfelkuchen im vorgeheizten Ofen bei 175 Grad O/U auf der 2.Schiene von unten etwa 45 Minuten gebacken.", image: "Apfelkuchen"),
        Recipe(id: "9",title:"Bauernfrühstück mit Spiegelei", subtitle: "Deftiges Frühstück", category: "Deutsch", time: "45 Min.", description: "700 g Kartoffeln ungeschält in einem großen Topf Salzwasser garen lassen. Anschließend mit kaltem Wasser abschrecken, abtropfen, pellen und auskühlen lassen. Danach in ca. ein Zentimeter dicke Scheiben schneiden. \n\nVier Zwiebeln abziehen und in halbe Ringe schneiden. Sparte vom Speck entfernen und 100 g Speck grob würfeln. Speck in einer Pfanne zerlassen. Sobald genügend Fett ausgetreten ist, 400 g Rindergulasch hinzufügen und beides durchbraten. Fleisch aus der Pfanne nehmen. \n\nButterschmalz zerlassen und Kartoffelscheiben in der Pfanne auslegen. Fünf Minuten anbraten lassen, dann Kartoffeln wenden. Zwiebeln sowie Fleisch-Speck-Mischung dazugeben. Auf mittlerer Hitze zehn Minuten braten lassen und mit Salz und Pfeffer abschmecken. In einer separaten Pfanne Olivenöl erhitzen und vier Spiegeleier braten. \n\nBauernfrühstück auf vier Tellern anrichten und mit je einem Spiegelei belegen. Frische Petersilie darüber streuen.", image: "Bratkartoffeln"),
        Recipe(id: "10",title:"Weißwürste mit süßem Senf und Brezeln", subtitle: "Schmeckt nicht nur in Bayern", category: "Deutsch", time: "20 Min.", description: "Einen großen Topf mit Wasser füllen und zum Kochen bringen. Die Hitze abschalten und die Weißwürste hineingeben. Zugedeckt ca. 10 Minuten ziehen lassen.\n\n Weißwürste nicht kochen lassen, sonst können sie platzen! \n\nDie Weißwürste in heißem Wasser (Topf oder Suppenterrine) servieren. Dazu Senf und Laugenbrezeln reichen. Und natürlich ein Weißbier mit oder ohne Alkohol.", image: "Weiswurst"),
        Recipe(id: "11",title:"Rührei", subtitle: "Einfach und lecker", category: "Deutsch", time: "10 Min.", description: "Eier aufschlagen und mit Milch verquirlen. Mit Salz würzen. \n\nDie Margarine in einer Pfanne scmelzen. Danach die Eiermischung auf einmal in die Pfanne gießen und einen Moment braten. \n\nMit einem Küchenfreund das Ei von außen nach innen schieben. Zum Schluss den Schnittlauch darüber schneiden.", image: "Ei"),
        Recipe(id: "13",title:"Croissants", subtitle: "Selbstgebacken", category: "Französisch", time: "300 Min.", description: "Ca. 1 Stunde vor Beginn, 25 g Hefe und 250 g Butter bei Zimmertemperatur aufwärmen lassen. \n\n500 g Mehl mit Salz vermischen. 200g Wasser, 125 g Milch und 40 g Zucker in der Mikrowelle erwärmen (Trinktemperatur). Danach die Hefe darin auflösen. Eine Vertiefung ins Mehl drücken und die Flüssigkeit unter Rühren langsam dazuschütten. Das Mehl von innen nach außen unterarbeiten, bis eine Teigkugel entsteht. Schüssel zudecken und den Teig 30 Minuten gehen lassen.\n\n Währenddessen 250g weiche Butter mit 50g Mehl verrühren. \n\nNach 30 Minuten:Teig noch einmal durchkneten, dann aus der Schüssel nehmen und in 4 Kugeln teilen. Butter ebenfalls in 4 gleiche Portionen aufteilen.\n\nEin Arbeitsbrett gut einmehlen und eine Teigportion darauf ausrollen - sollte ca. DIN A4-Größe ergeben - Zwischendurch immer wieder wenden und neu einmehlen. \n\nEine Portion Butter in die Mitte setzen und auf ca. Postkartengröße grob verstreichen. Danach die verstrichene Butter in den Teig einpacken. Dazu den Teig sehr leicht anfeuchten und zuerst die langen Kanten umschlagen und danach die kurzen Seiten übereinanderschlagen. Das verhindert, daß die Butter in den folgenden Arbeitsschritten aus dem Teig tritt. \n\nDas Teigpäckchen in Frischhaltefolie einwickeln und in den Kühlschrank verfrachten. Dasselbe für die anderen Portionen wiederholen. \n\nDer Teig muss mindestens(!) 4 Stunden im Kühlschrank bleiben. Vier Stunden ruhen lassen. Arbeitsplatte gut einmehlen, eine Portion Teig aus dem Kühlschrank holen und in eine längliche Form ausrollen.", image: "Croissant"),
        Recipe(id: "14",title:"Coffee-Brownie", subtitle: "Kuchen zum Wachwerden", category: "Amerikanisch", time: "60 Min.", description: "Ofen auf 180 Grad (Umluft 160 Grad) vorheizen. Form mit Backpapier auslegen. Schokolade mit Butter über einem heißen Wasserbad schmelzen. Kakao und Espressopulver untermischen. Masse in eine Schüssel geben, Zucker unterarbeiten, Eier nacheinander unterrühren.\n\nMehl mit 1 großen Prise Fleur de Sel mischen, ebenfalls unterrühren. Espresso und Wein unter den Teig mixen, dann in die Form geben. Gleichmäßig mit den Nüssen bestreuen. Auf mittlerer Schiene ca. 40 Minuten backen.\n\nBrownie in der Form auf einem Gitter vollständig auskühlen lassen. Aus der Form heben und in Stücke schneiden, mit Puderzucker und Kakao bestäubt servieren.", image: "CoffeeBrownie"),
        Recipe(id: "5",title:"Cookies au Beurre Salé", subtitle: "Schnell & einfach", category: "Französisch", time: "40 Min.", description: "Ofen auf 180 Grad (Umluft 160 Grad) vorheizen. Form mit Backpapier auslegen. Schokolade mit Butter über einem heißen Wasserbad schmelzen. Kakao und Espressopulver untermischen. Masse in eine Schüssel geben, Zucker unterarbeiten, Eier nacheinander unterrühren.\n\nMehl mit 1 großen Prise Fleur de Sel mischen, ebenfalls unterrühren. Espresso und Wein unter den Teig mixen, dann in die Form geben. Gleichmäßig mit den Nüssen bestreuen. Auf mittlerer Schiene ca. 40 Minuten backen.\n\nBrownie in der Form auf einem Gitter vollständig auskühlen lassen. Aus der Form heben und in Stücke schneiden, mit Puderzucker und Kakao bestäubt servieren.", image: "Cookies"),
        Recipe(id: "16",title:"Lebkuchenriegel", subtitle: "Gesund und schnell gemacht", category: "Deutsch", time: "40 Min.", description: "Den Ofen auf 175°C (Umluft: 160°C; Gas: Stufe 2) vorheizen. Butter in Stücke schneiden und mit Mehl, Zucker und einer Prise Salz vermischen. Mit Hilfe von Knethaken solange kneten bis feuchte Krümel entstehen. Anschließend die Krümel mit den Händen rasch zu einem glatten Teig verarbeiten.\n\nDen Teig in eine mit Backpapier ausgelegte Backform (22 x 22 cm) geben und mit den Händen leicht andrücken. Im vorgeheizten Ofen ca. 20 Minuten auf mittlerer Schiene goldbraun backen lassen. Zum Abkühlen herausnehmen.\n\n50 Gramm Walnüsse grob hacken und beiseitestellen. In einem Topf Zuckerrohrmelasse, Honig, Rum, Butter, Eier, Lebkuchengewürz und eine Prise Salz unter ständigem Rühren erhitzen bis die Masse einzudicken beginnt. Die gehackten Walnüsse unterrühren.\n\nDie Gewürz-Nuss-Masse auf den Teigboden gießen und gleichmäßig verteilen. Die restlichen Walnusskerne darauf verteilen und leicht eindrücken. Für weitere 25 Minuten backen, bis die Masse fest ist.\n\nDen Kuchen auf einem Kuchengitter auskühlen lassen, mit einem Messer vom Rand lösen und in gleichgroße Riegel teilen.", image: "Lebkuchenriegel")
    ]
}
