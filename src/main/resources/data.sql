DELETE FROM PLANT
WHERE
    plantID < 0;

INSERT INTO
    plant (
        common_Name,
        scientific_Name,
        description,
        is_Invasive,
        is_Native,
        color,
        image_FruitURL,
        image_LeafURL,
        image_Fruit_Source,
        image_Leaf_Source,
        wiki_Link,
        plantID
    )
VALUES
    (
        'Red Raspberry',
        'Rubus idaeus',
        'Rubus idaeus, commonly known as raspberries, are perennial plants with biennial stems that grow from a perennial root system. These plants produce edible red aggregate fruits consisting of numerous drupelets around a central core, with distinct growth patterns in their first and second years.',
        false,
        true,
        'Red',
        'fruitImages/Raspberries(F).jpg',
        'leafImages/Raspberries(L).jpg',
        'By Ivar Leidus - Own work, CC BY-SA 4.0, https://commons.wikimedia.org/w/index.php?curid=96641162',
        'By Tomwsulcer - Own work, CC0, https://commons.wikimedia.org/w/index.php?curid=19087683',
        'https://en.wikipedia.org/wiki/Rubus_idaeus',
        -1
    );

INSERT INTO
    plant (
        common_Name,
        scientific_Name,
        description,
        is_Invasive,
        is_Native,
        color,
        image_FruitURL,
        image_LeafURL,
        image_Fruit_Source,
        image_Leaf_Source,
        wiki_Link,
        plantID
    )
VALUES
    (
        'New Jersey Tea',
        'Ceanothus Americanus',
        'Ceanothus Americanus, a shrub reaching 18-42 inches (0.5-1m) in height, with thin branches and extensive root systems adapted to wildfires. It features clumps of white flowers on long peduncles and produces dry, dehiscent seed capsules.',
        false,
        true,
        'White',
        'fruitImages/New-Jersey-Tea(F).jpg',
        'leafImages/New-Jersey-Tea(L).jpg',
        'By unknown author, USFWS - United States Fish and Wildlife Service, Sherburne National Wildlife Refuge: Ceanothus americanus L., Public Domain, https://commons.wikimedia.org/w/index.php?curid=666534',
        'By Arieh Tal, https://gobotany.nativeplanttrust.org/species/ceanothus/americanus/',
        'https://en.wikipedia.org/w/index.php?title=Ceanothus_americanus&oldid=1157315821',
        -2
    );

INSERT INTO
    plant (
        common_Name,
        scientific_Name,
        description,
        is_Invasive,
        is_Native,
        color,
        image_FruitURL,
        image_LeafURL,
        image_Fruit_Source,
        image_Leaf_Source,
        wiki_Link,
        plantID
    )
VALUES
    (
        'Gray Dogwood',
        'Cornus Racemosa',
        'Cornus Racemosa, a shrub reaching 1.2-3 m (4-10 ft) in height, forming thickets through underground rhizomes. It bears small white flowers in rounded clusters, followed by white fruits, attracting various bird species. The plants gray bark, oppositely arranged leaves, and reddish or purplish fall foliage contribute to its appearance.',
        false,
        true,
        'White',
        'fruitImages/Grey-Dogwood(F).jpg',
        'leafImages/Grey-Dogwood(L).jpg',
        'By Mitternacht90 at English Wikipedia - Mitternacht90 (talk) (Uploads), Public Domain, https://commons.wikimedia.org/w/index.php?curid=19873364',
        'Lewisboro Field Guide, https://fieldguide.lewisborolandtrust.org/trees-and-shrubs/gray-dogwood/',
        'https://en.wikipedia.org/wiki/Cornus_racemosa',
        -3
    );

INSERT INTO
    plant (
        common_Name,
        scientific_Name,
        description,
        is_Invasive,
        is_Native,
        color,
        image_FruitURL,
        image_LeafURL,
        image_Fruit_Source,
        image_Leaf_Source,
        wiki_Link,
        plantID
    )
VALUES
    (
        'American Hazelnut',
        'Corylus americana',
        'Corylus americana is a medium to large shrub that grows anywhere from 2.5-5 m (8-16 ft) tall with a spreading crown. It blooms in early to mid-spring, featuring hanging male catkins and clusters of tiny female flowers. It produces edible nuts enclosed in leaf-like bracts that mature from July to October.',
        false,
        true,
        'Brown',
        'fruitImages/American-Hazelnut(F).jpg',
        'leafImages/American-Hazelnut(L).jpg',
        'Public Domain, https://commons.wikimedia.org/w/index.php?curid=655914',
        'Public Domain, https://commons.wikimedia.org/w/index.php?curid=655927',
        'https://en.wikipedia.org/wiki/Corylus_americana',
        -4
    );

INSERT INTO
    plant (
        common_Name,
        scientific_Name,
        description,
        is_Invasive,
        is_Native,
        color,
        image_FruitURL,
        image_LeafURL,
        image_Fruit_Source,
        image_Leaf_Source,
        wiki_Link,
        plantID
    )
VALUES
    (
        'Fragrant Sumac',
        'Rhus aromatica',
        'Rhus aromatica, a deciduous shrub in the Anacardiaceae family, is native to North America, thriving in a range of conditions from southern Canada to the lower 48 states. With a rounded form, it grows 2-5 ft tall and wide, producing small yellow flowers in clusters before its leaves emerge. The plants three-leaflet leaves, orange-red fall foliage, and lemon-scented crushed leaves make it a distinctive species.',
        false,
        true,
        'Yellow',
        'fruitImages/Fragrant-Sumac(F).jpg',
        'leafImages/Fragrant-Sumac(L).jpg',
        'By Salicyna - Own work, CC BY-SA 4.0, https://commons.wikimedia.org/w/index.php?curid=51291378',
        'By Krzysztof Ziarnek, Kenraiz - Own work, CC BY-SA 4.0, https://commons.wikimedia.org/w/index.php?curid=102127221',
        'https://en.wikipedia.org/wiki/Rhus_aromatica',
        -5
    );

INSERT INTO
    plant (
        common_Name,
        scientific_Name,
        description,
        is_Invasive,
        is_Native,
        color,
        image_FruitURL,
        image_LeafURL,
        image_Fruit_Source,
        image_Leaf_Source,
        wiki_Link,
        plantID
    )
VALUES
    (
        'Tree of Heaven',
        'Ailanthus altissima',
        'Ailanthus altissima is a medium-sized deciduous tree reaching 17-27 m (60-90 ft) in height with smooth gray bark and pinnately compound leaves. It produces yellowish-green to reddish flowers in large panicles and bears large, twisted samaras that aid in wind and water dispersal.',
        true,
        false,
        'Yellowish green to reddish',
        'fruitImages/Tree-of-Heaven(F).jpg',
        'leafImages/Tree-of-Heaven(L).jpg',
        'CC BY-SA 2.1 es, https://commons.wikimedia.org/w/index.php?curid=139593',
        'By Famartin - Own work, CC BY-SA 4.0, https://commons.wikimedia.org/w/index.php?curid=36997369',
        'https://en.wikipedia.org/wiki/Ailanthus_altissima',
        -6
    );

INSERT INTO
    plant (
        common_Name,
        scientific_Name,
        description,
        is_Invasive,
        is_Native,
        color,
        image_FruitURL,
        image_Fruit_Source,
        wiki_Link,
        plantID
    )
VALUES
    (
        'Garlic Mustard',
        'Alliaria petiolata',
        'Alliaria petiolata is an herbaceous biennial plant with triangular to heart-shaped leaves, producing clusters of small white flowers with an unpleasant aroma in spring and summer. It develops slender, erect seed capsules containing shiny black seeds. The plant can self-fertilize or be cross-pollinated by insects and is associated with various herbivores and fungi.',
        true,
        false,
        'White',
        'fruitImages/Garlic-Mustard(F).jpg',
        'By O. Pichard - Own work, CC BY-SA 3.0, https://commons.wikimedia.org/w/index.php?curid=6156271',
        'https://en.wikipedia.org/wiki/Alliaria_petiolata',
        -7
    );

INSERT INTO
    plant (
        common_Name,
        scientific_Name,
        description,
        is_Invasive,
        is_Native,
        color,
        image_FruitURL,
        image_LeafURL,
        image_Fruit_Source,
        image_Leaf_Source,
        wiki_Link,
        plantID
    )
VALUES
    (
        'Porcelain-berry',
        'Ampelopsis glandulosa',
        'Ampelopsis glandulosa, also known as Porcelain berry, is a deciduous climbing vine with palmately lobed leaves, opposite flowers, and tendrils that reach 4-6m (15-20 ft) in height. Its small green-white flowers form in umbels opposite the leaves, giving rise to multicolored berries in late summer and fall, which are dispersed by birds.',
        true,
        false,
        'Multi-colored: blueish to pink',
        'fruitImages/Porcelain-Berry(F).jpg',
        'leafImages/Porcelain-Berry(L).jpg',
        'By Olivier Vanpé - Own work, CC BY-SA 3.0, https://commons.wikimedia.org/w/index.php?curid=7964726',
        'By Pancrat - Own work, CC BY-SA 3.0, https://commons.wikimedia.org/w/index.php?curid=7106725',
        'https://en.wikipedia.org/wiki/Ampelopsis_glandulosa',
        -8
    );

INSERT INTO
    plant (
        common_Name,
        scientific_Name,
        description,
        is_Invasive,
        is_Native,
        color,
        image_LeafURL,
        image_Leaf_Source,
        wiki_Link,
        plantID
    )
VALUES
    (
        'Mosquito-fern',
        'Azolla pinnata',
        'Azolla pinnata is an aquatic fern native to Africa, Asia, and parts of Australia. It features small, velvety leaves that float on the waters surface, forming dense mats. It is known for its nitrogen-fixing ability, invasive tendencies, and its use in rice paddies for fertilizer and pollution absorption.',
        true,
        false,
        'Green, blue-green, or dark red',
        'leafImages/Mosquito-fern(L).jpg',
        'By Tpa2067 - Own work, CC BY-SA 3.0, https://commons.wikimedia.org/w/index.php?curid=11994712',
        'https://en.wikipedia.org/wiki/Azolla_pinnata',
        -9
    );

INSERT INTO
    plant (
        common_Name,
        scientific_Name,
        description,
        is_Invasive,
        is_Native,
        color,
        image_FruitURL,
        image_LeafURL,
        image_Fruit_Source,
        image_Leaf_Source,
        wiki_Link,
        plantID
    )
VALUES
    (
        'Common Barberry',
        'Berberis vulgaris',
        'Berberis vulgaris is a deciduous shrub that reaches up to 4 meters in height and bears small oval leaves with serrated edges in clusters of 2-5, accompanied by three-branched spines. Yellow flowers about 4-6 mm across appear on 3-6 cm long panicles in late spring, leading to the development of red oblong berries, 7-10 mm long, in late summer or autumn.',
        true,
        false,
        'Flower is yellow, fruit is red',
        'fruitImages/Common-Barberry(F).jpg',
        'leafImages/Common-Barberry(L).jpg',
        'By Arnstein Rønning - Own work, CC BY-SA 3.0, https://commons.wikimedia.org/w/index.php?curid=16499955',
        'By Sten, CC BY-SA 3.0, https://commons.wikimedia.org/w/index.php?curid=302410',
        'https://en.wikipedia.org/wiki/Berberis_vulgaris',
        -10
    );

INSERT INTO
    plant (
        common_Name,
        scientific_Name,
        description,
        is_Invasive,
        is_Native,
        color,
        image_FruitURL,
        image_LeafURL,
        image_Fruit_Source,
        image_Leaf_Source,
        wiki_Link,
        plantID
    )
VALUES
    (
        'Flowering Rush',
        'Butomus umbellatus',
        'Butomus umbellatus is a perennial which spreads primarily from rhizomes. This aquatic plant invades along the margins of slow moving waterways. This plant can reach from 1-5 ft. (0.3-1.5 m) in height and can survive in water of up to 9.8 ft. (3 m) deep. It does not tolerate salt water.',
        true,
        false,
        'White outer flower with red center',
        'fruitImages/Flowering-Rush(F).jpg',
        'leafImages/Flowering-Rush(L).jpg',
        'By Ivar Leidus - Own work, CC BY-SA 3.0, https://commons.wikimedia.org/w/index.php?curid=27558951',
        'Public Domain, https://commons.wikimedia.org/w/index.php?curid=8955',
        'https://en.wikipedia.org/wiki/Butomus',
        -11
    );

INSERT INTO
    plant (
        common_Name,
        scientific_Name,
        description,
        is_Invasive,
        is_Native,
        color,
        image_FruitURL,
        image_Fruit_Source,
        wiki_Link,
        plantID
    )
VALUES
    (
        'Oriental Bittersweet',
        'Celastrus orbiculatus',
        'Celastrus orbiculatus\' defining feature is its thin, spindly vines with silver to reddish-brown bark, ranging from 1 to over 10 cm in diameter. These vines can encircle trees up to 40 feet high, leading to strangulation or branch breakage, and the plant bears toxic round leaves, small green flowers, and distinctive red seeds within yellow pods.',
        true,
        false,
        'Red',
        'fruitImages/Oriental-Bittersweet(F).jpg',
        'Public Domain, https://commons.wikimedia.org/w/index.php?curid=586390',
        'https://en.wikipedia.org/wiki/Celastrus_orbiculatus',
        -12
    );

INSERT INTO
    plant (
        common_Name,
        scientific_Name,
        description,
        is_Invasive,
        is_Native,
        color,
        image_FruitURL,
        image_LeafURL,
        image_Fruit_Source,
        image_Leaf_Source,
        wiki_Link,
        plantID
    )
VALUES
    (
        'Spotted Knapweed',
        'Centaurea stoebe',
        'Centaurea stoebe, a biennial or short-lived perennial plant, displays deeply-lobed leaves with fine short hairs, forming a basal rosette in its first year and an erect, branching stem up to 0.91 meters (3 feet) tall in the second year. Its vibrant pink to lavender disc flowers with five narrow lobes bloom from July to September, followed by achene fruit dispersed primarily by wind, aided by its tumbleweed mode.',
        true,
        false,
        'Purple',
        'fruitImages/Spotted-Knapweed(F).jpg',
        'leafImages/Spotted-Knapweed(L).jpg',
        'By Matt Lavin from Bozeman, Montana, USA - Centaurea maculosa, CC BY-SA 2.0, https://commons.wikimedia.org/w/index.php?curid=14711862',
        'By Thayne Tuason - Own work, CC BY-SA 4.0, https://commons.wikimedia.org/w/index.php?curid=66337967',
        'https://en.wikipedia.org/wiki/Centaurea_stoebe',
        -13
    );

INSERT INTO
    plant (
        common_Name,
        scientific_Name,
        description,
        is_Invasive,
        is_Native,
        color,
        image_FruitURL,
        image_LeafURL,
        image_Fruit_Source,
        image_Leaf_Source,
        wiki_Link,
        plantID
    )
VALUES
    (
        'Common Teasel',
        'Dipsacus fullonum',
        'The genus name refers to cup-like formations formed by merging sessile leaves at the stem, potentially preventing sap-sucking insects. Teasels are recognized by prickly stems, lanceolate leaves, and an inflorescence of purple to lavender flowers atop the stem. A 2011 study hints at potential carnivorous behavior, but 2019 experiments suggest increased seed production may be due to poor soil conditions rather than true carnivory.',
        true,
        false,
        "Purple",
        'fruitImages/Common-Teasel(F).jpg',
        'leafImages/Common-Teasel(L).jpg',
        'By MPF - Own work, CC BY-SA 3.0, https://commons.wikimedia.org/w/index.php?curid=294179',
        'By Blokenearexeter - Own work, CC0, https://commons.wikimedia.org/w/index.php?curid=20294085',
        'https://en.wikipedia.org/wiki/Dipsacus_fullonum',
        -14
    );

INSERT INTO
    plant (
        common_Name,
        scientific_Name,
        description,
        is_Invasive,
        is_Native,
        color,
        image_FruitURL,
        image_Fruit_Source,
        wiki_Link,
        plantID
    )
VALUES
    (
        'Cutleaf Teasel',
        'Dipsacus laciniatus',
        'Dipsacus laciniatus, commonly known as cutleaf teasel, is a perennial herb native to Europe and Asia, now invasive in North America. It features hollow, prickly stems, oppositely arranged leaves forming cups, and egg-shaped flower heads containing up to 1500 flowers. The plant is monocarpic, reproducing only by seed, and poses invasive threats in various habitats due to a lack of native predators.',
        true,
        false,
        'White',
        'fruitImages/Cutleaf-Teasel(F).jpg',
        'By Simon Eugster -- Simon / ?! 07:03, 9 September 2007 (UTC) - Own work, CC BY-SA 3.0, https://commons.wikimedia.org/w/index.php?curid=2707701',
        'https://en.wikipedia.org/wiki/Dipsacus_laciniatus',
        -15
    );

INSERT INTO
    plant (
        common_Name,
        scientific_Name,
        description,
        is_Invasive,
        is_Native,
        color,
        image_FruitURL,
        image_LeafURL,
        image_Fruit_Source,
        image_Leaf_Source,
        wiki_Link,
        plantID
    )
VALUES
    (
        'Brazilian Waterweed',
        'Egeria densa',
        'Egeria densa is an aquatic plant with trailing stems that can reach 2 meters in length, producing leaves in whorls of 4-8, and dioecious flowers with three white petals on separate male and female plants. It forms dense surface canopies, inhibiting light penetration to lower plants.',
        true,
        false,
        'Green',
        'fruitImages/Brazilian-Waterweed(F).jpg',
        'leafImages/Brazilian-Waterweed(L).jpg',
        'By Lara Gudmundsdottir - Own work, CC BY-SA 4.0, https://commons.wikimedia.org/w/index.php?curid=35008391',
        'CC BY-SA 2.5, https://commons.wikimedia.org/w/index.php?curid=3492981',
        'https://en.wikipedia.org/wiki/Egeria_densa',
        -16
    );

INSERT INTO
    plant (
        common_Name,
        scientific_Name,
        description,
        is_Invasive,
        is_Native,
        color,
        image_FruitURL,
        image_Fruit_Source,
        wiki_Link,
        plantID
    )
VALUES
    (
        'Anchored Water Hyacinth',
        'Pontederia azurea',
        'The anchored water hyacinth is a free-floating aquatic perennial with distinctive thick, waxy green leaves and lavender blue flowers resembling lilacs. It grows both underwater and above water on long stems, producing up to 5 flowers per stem, and can reach three feet above the waters surface while being rooted underwater.',
        true,
        false,
        'White outer flower with reddish center',
        'fruitImages/Anchored-Water-Hyacinth(F).jpg',
        'By I, KENPEI, CC BY-SA 3.0, https://commons.wikimedia.org/w/index.php?curid=4456920',
        'https://en.wikipedia.org/wiki/Pontederia_azurea',
        -17
    );

INSERT INTO
    plant (
        common_Name,
        scientific_Name,
        description,
        is_Invasive,
        is_Native,
        color,
        image_FruitURL,
        image_LeafURL,
        image_Fruit_Source,
        image_Leaf_Source,
        wiki_Link,
        plantID
    )
VALUES
    (
        'Russian Olive',
        'Elaeagnus angustifolia',
        'Elaeagnus angustifolia is a thorny tree reaching 35 feet in height, characterized by silvery to rusty scaled stems, lanceolate leaves, and aromatic clusters of creamy yellow flowers followed by small orange-red cherry-like fruit covered in silvery scales. The species reproduces mainly by seed, with thorny branches up to 7 cm long.',
        true,
        false,
        'Yellow',
        'fruitImages/Russian-Olive(F).jpg',
        'leafImages/Russian-Olive(L).jpg',
        'By Walter Siegmund (talk) - Own work, CC BY-SA 4.0, https://commons.wikimedia.org/w/index.php?curid=94274330',
        'By Katrin Schneider, korina.info CC-BY-SA-4.0, CC BY-SA 4.0, https://commons.wikimedia.org/w/index.php?curid=100034738',
        'https://en.wikipedia.org/wiki/Elaeagnus_angustifolia',
        -18
    );

INSERT INTO
    plant (
        common_Name,
        scientific_Name,
        description,
        is_Invasive,
        is_Native,
        color,
        image_FruitURL,
        image_LeafURL,
        image_Fruit_Source,
        image_Leaf_Source,
        wiki_Link,
        plantID
    )
VALUES
    (
        'Autumn Olive',
        'Elaeagnus umbellata',
        'Elaeagnus umbellata is a deciduous shrub or small tree, reaching up to 3.5 meters in height, known for its dense crown and thorny spur branches. It produces fragrant white to yellow flowers in clusters, characterized by their four-lobed structure, and features alternate leaves with wavy margins that start silvery in spring, gradually turning greener as the scales wear off during summer.',
        true,
        false,
        'Red',
        'fruitImages/Autumn-Olive(F).jpg',
        'leafImages/Autumn-Olive(L).jpg',
        'By VoDeTan2Dericks-Tan - Own workEigenes Werk, CC BY-SA 3.0, https://commons.wikimedia.org/w/index.php?curid=9637135',
        'By Jaknouse at English Wikipedia - Transferred from en.wikipedia to Commons by Premeditated Chaos using CommonsHelper., Public Domain, https://commons.wikimedia.org/w/index.php?curid=18674726',
        'https://en.wikipedia.org/wiki/Elaeagnus_umbellata',
        -19
    );

INSERT INTO
    plant (
        common_Name,
        scientific_Name,
        description,
        is_Invasive,
        is_Native,
        color,
        image_FruitURL,
        image_LeafURL,
        image_Fruit_Source,
        image_Leaf_Source,
        wiki_Link,
        plantID
    )
VALUES
    (
        'Hairy Willowherb',
        'Epilobium hirsutum',
        'This tall perennial plant can grow up to 2 meters in height, featuring hairy stems and leaves with toothed edges. Its large flowers, usually 10-16 mm long, exhibit four notched purple-pink petals and a white, four-lobed stigma, accompanied by green sepals.',
        true,
        false,
        'Pink',
        'fruitImages/Hairy-Willowherb(F).jpg',
        'leafImages/Hairy-Willowherb(L).jpg',
        'By Ivar Leidus - Own work, CC BY-SA 3.0, https://commons.wikimedia.org/w/index.php?curid=27184927',
        'By Jeffdelonge, CC BY-SA 3.0, https://commons.wikimedia.org/w/index.php?curid=2263428',
        'https://en.wikipedia.org/wiki/Epilobium_hirsutum',
        -20
    );

INSERT INTO
    plant (
        common_Name,
        scientific_Name,
        description,
        is_Invasive,
        is_Native,
        color,
        image_FruitURL,
        image_LeafURL,
        image_Fruit_Source,
        image_Leaf_Source,
        wiki_Link,
        plantID
    )
VALUES
    (
        'Japanese Knotweed',
        'Reynoutria japonica',
        'Japanese knotweed produces small cream or white flowers in erect racemes during late summer and early autumn. It features hollow stems resembling bamboo with raised nodes, growing up to 3-4 meters each season. Its leaves are broad oval with a truncated base, typically 7-14 cm long and 5-12 cm broad, forming dense thickets in mature stands.',
        true,
        false,
        'White',
        'fruitImages/Japanese-Knotweed(F).jpg',
        'leafImages/Japanese-Knotweed(L).jpg',
        'By W.carter - Own work, CC0, https://commons.wikimedia.org/w/index.php?curid=87826184',
        'By Ancatdubh43 at English Wikipedia - Transferred from en.wikipedia to Commons by Flamenc., Public Domain, https://commons.wikimedia.org/w/index.php?curid=20654299',
        'https://en.wikipedia.org/wiki/Reynoutria_japonica',
        -21
    );

INSERT INTO
    plant (
        common_Name,
        scientific_Name,
        description,
        is_Invasive,
        is_Native,
        color,
        image_FruitURL,
        image_LeafURL,
        image_Fruit_Source,
        image_Leaf_Source,
        wiki_Link,
        plantID
    )
VALUES
    (
        'Lesser Celandine',
        'Ficaria verna',
        'Lesser celandine is a hairless perennial plant growing up to 25 cm high in clumps of short stems. Its cordate leaves are dark green above with variegated patterns, pale green below, often weakly lobed, and accompanied by clusters of tubers and fibrous roots. The plant produces large radially symmetrical yellow flowers, around 3 cm in diameter, with glossy petals and numerous stamens and carpels. It blooms between March and May in the UK.',
        true,
        false,
        'Yellow',
        'fruitImages/Lesser-Celandine(F).jpg',
        'leafImages/Lesser-Celandine(L).jpg',
        'By Michal Osmenda from Brussels, Belgium - https://www.flickr.com/photos/michalo/2425723494/, CC BY-SA 2.0, https://commons.wikimedia.org/w/index.php?curid=46945738',
        'By SiGarb - Own work, CC BY-SA 4.0, https://commons.wikimedia.org/w/index.php?curid=77846647',
        'https://en.wikipedia.org/wiki/Ficaria_verna',
        -22
    );

INSERT INTO
    plant (
        common_Name,
        scientific_Name,
        description,
        is_Invasive,
        is_Native,
        color,
        image_FruitURL,
        image_LeafURL,
        image_Fruit_Source,
        image_Leaf_Source,
        wiki_Link,
        plantID
    )
VALUES
    (
        'Winged Sumac',
        'Rhus copallinum',
        'Shining sumac is a valuable ornamental plant known for its dense, shrubby cover with lustrous dark green foliage that turns brilliant orange-red in fall, attracting wildlife. It features showy yellow flowers in summer, followed by persistent red berries, and requires pruning for optimal growth and canopy clearance.',
        false,
        true,
        'Red',
        'fruitImages/Winged-Sumac(F).jpg',
        'leafImages/Winged-Sumac(L).jpg',
        'By Riverbanks Outdoor Store from New Port Richey, FL, United States - Candy Coated Winged Sumac Berries, CC BY 2.0, https://commons.wikimedia.org/w/index.php?curid=8770573',
        'Public Domain, https://commons.wikimedia.org/w/index.php?curid=606675',
        'https://en.wikipedia.org/wiki/Rhus_copallinum',
        -23
    );

INSERT INTO
    plant (
        common_Name,
        scientific_Name,
        description,
        is_Invasive,
        is_Native,
        color,
        image_FruitURL,
        image_LeafURL,
        image_Fruit_Source,
        image_Leaf_Source,
        wiki_Link,
        plantID
    )
VALUES
    (
        'Smooth Sumac',
        'Rhus glabra',
        'Smooth sumac (Rhus glabra), a North American native in the Anacardiaceae family, is recognized for its open growth reaching up to 3 m (9.8 ft) tall, with compound leaves turning scarlet in autumn. Its spring flowers, green and tiny, mature into edible crimson berries that persist into winter. This species also occasionally forms harmless galls due to the sumac leaf gall aphid.',
        false,
        true,
        'Crimson',
        'fruitImages/Smooth-Sumac(F).jpg',
        'leafImages/Winged-Sumac(L).jpg',
        'Public Domain, https://commons.wikimedia.org/w/index.php?curid=647560',
        'By Eric Hunt - Own work, CC BY-SA 4.0, https://commons.wikimedia.org/w/index.php?curid=77692462',
        'https://en.wikipedia.org/wiki/Rhus_glabra',
        -24
    );

INSERT INTO
    plant (
        common_Name,
        scientific_Name,
        description,
        is_Invasive,
        is_Native,
        color,
        image_FruitURL,
        image_LeafURL,
        image_Fruit_Source,
        image_Leaf_Source,
        wiki_Link,
        plantID
    )
VALUES
    (
        'Staghorn Sumac',
        'Rhus typhina',
        'Staghorn sumac (Rhus typhina) is a deciduous shrub or small tree, reaching up to 5 m (16 ft) tall and 6 m (20 ft) broad. Its compound leaves with serrated leaflets are velvety due to rust-colored hairs, and its distinctive branching pattern has earned it the name "stags horn sumac." It produces greenish-white to yellowish flowers and small drupes, with brilliant red, orange, and yellow fall foliage. The plant spreads through seeds and rhizomes, often forming clones, and is not closely related to poison sumac.',
        false,
        true,
        'Red',
        'fruitImages/Staghorn-Sumac(F).jpg',
        'leafImages/Staghorn-Sumac(L).jpg',
        'By AnRo0002 - Own work, CC0, https://commons.wikimedia.org/w/index.php?curid=39864762',
        'By Katya from Moscow, Russia - Сумах оленерогий (Сумах пушистый, Уксусное дерево) / Rhus typhina / Staghorn sumac / Влакнест шмак / Essigbaum, CC BY-SA 2.0, https://commons.wikimedia.org/w/index.php?curid=45504388',
        'https://en.wikipedia.org/wiki/Rhus_typhina',
        -25
    );

INSERT INTO
    plant (
        common_Name,
        scientific_Name,
        description,
        is_Invasive,
        is_Native,
        color,
        image_FruitURL,
        image_Fruit_Source,
        wiki_Link,
        plantID
    )
VALUES
    (
        'Prairie Rose',
        'Rosa arkansana',
        'Rosa arkansana, commonly known as prairie rose or wild prairie rose, is a North American rose species found between the Appalachian and Rocky Mountains, from Alberta to Texas. It thrives in various habitats, attracting butterflies and birds, and shares its common name with Rosa blanda, a similar species more northernly distributed.',
        false,
        true,
        'Pink',
        'fruitImages/Prairie-Rose(F).jpg',
        'By I, Alexwcovington, CC BY-SA 3.0, https://commons.wikimedia.org/w/index.php?curid=2280101',
        'https://en.wikipedia.org/wiki/Rosa_arkansana',
        -26
    );

INSERT INTO
    plant (
        common_Name,
        scientific_Name,
        description,
        is_Invasive,
        is_Native,
        color,
        image_FruitURL,
        image_LeafURL,
        image_Fruit_Source,
        image_Leaf_Source,
        wiki_Link,
        plantID
    )
VALUES
    (
        'Black Raspberry',
        'Rubus occidentalis',
        'Rubus occidentalis, a deciduous shrub, reaches 2 to 3 meters tall with pinnate leaves. It produces distinct flowers with long sepals and edible round fruit containing anthocyanins and ellagic acid. Its canes, growing up to 1.8 meters long, feature sharp thorns and arching growth. This black raspberry is related to red raspberries, sharing leaf characteristics and easily detachable fruit.',
        false,
        true,
        'Red to Black',
        'fruitImages/Black-Raspberry(F).jpg',
        'leafImages/Black-Raspberry(L).jpg',
        'By Alina Zienowicz Ala z - Own work, CC BY-SA 3.0, https://commons.wikimedia.org/w/index.php?curid=4349078',
        'By Prestele, William Henry, 1838-1895 - http://usdawatercolors.nal.usda.gov/pom/catalog.xhtml?id=POM00007255, Public Domain, https://commons.wikimedia.org/w/index.php?curid=43160453',
        'https://en.wikipedia.org/wiki/Rubus_occidentalis',
        -27
    );

INSERT INTO
    plant (
        common_Name,
        scientific_Name,
        description,
        is_Invasive,
        is_Native,
        color,
        image_FruitURL,
        image_LeafURL,
        image_Fruit_Source,
        image_Leaf_Source,
        wiki_Link,
        plantID
    )
VALUES
    (
        'Giant Hogweed',
        'Heracleum Mantegazzianum',
        'The giant hogweed plant grows to 2-5 meters, sometimes even 5.5 meters tall. It has large leaves, a green stem with dark reddish-purple spots and coarse white hairs, and an umbrella-shaped inflorescence up to 100 cm wide. Its flowers are white or greenish white, and it produces schizocarp fruits containing flattened oval seeds about 1 cm in length.',
        true,
        false,
        'White',
        'fruitImages/Giant-Hogweed.jpg',
        'leafImages/Giant-Hogweed.jpg',
        'By Fritz Geller-Grimm - Own work, CC BY-SA 3.0, https://commons.wikimedia.org/w/index.php?curid=5595612',
        'By Derek Harper, CC BY-SA 2.0, https://commons.wikimedia.org/w/index.php?curid=13471101',
        'https://en.wikipedia.org/wiki/Heracleum_mantegazzianum',
        -28
    );

INSERT INTO
    plant (
        common_Name,
        scientific_Name,
        description,
        is_Invasive,
        is_Native,
        color,
        image_FruitURL,
        image_LeafURL,
        image_Fruit_Source,
        image_Leaf_Source,
        wiki_Link,
        plantID
    )
VALUES
    (
        'Dames Rocket',
        'Hesperis Matronlis',
        'Hesperis matronalis, also known as dames rocket, grows over 100 cm tall with upright, hairy stems. It is typically a biennial plant, flowering in the second year, but can sometimes act as a short-lived perennial. The leaves are lanceolate-shaped with toothed margins and short hairs, and the showy, fragrant flowers appear in spring in terminal racemes. Each large flower has four petals, often in shades of lavender or purple, with some variations in color, and is accompanied by four erect sepals. The plant produces thin fruits containing oblong seeds, which can be confused with native Phlox species in North America due to similar flower clusters, but they can be distinguished by their foliage and petal count.',
        true,
        false,
        'Pink',
        'fruitImages/dames-rocket.png',
        'leafImages/dames-rocket.jpg',
        'By Huw Williams (Huwmanbeing) - Own work, Public Domain, https://commons.wikimedia.org/w/index.php?curid=3645242',
        'By Raffi Kojian - http://Gardenology.org, CC BY-SA 3.0, https://commons.wikimedia.org/w/index.php?curid=12734849',
        'https://en.wikipedia.org/wiki/Hesperis_matronalis',
        -29
    );

INSERT INTO
    plant (
        common_Name,
        scientific_Name,
        description,
        is_Invasive,
        is_Native,
        color,
        image_FruitURL,
        image_LeafURL,
        image_Fruit_Source,
        image_Leaf_Source,
        wiki_Link,
        plantID
    )
VALUES
    (
        'Hydrilla',
        'Hydrilla Verticillata',
        'Hydrilla is a plant with stems growing up to 1-2 meters long, featuring leaves arranged in whorls of two to eight along the stem. The leaves are 5-20 mm long, 0.7-2 mm wide, and have serrations or small spines on the margins. The plant produces small male and female flowers separately, with transparent petals bearing red streaks. It primarily reproduces through fragmentation and rhizomes, with rare flowering. Hydrilla is notable for its resistance to salinity in comparison to other freshwater aquatic plants.',
        true,
        false,
        'Green',
        'fruitImages/Hydrilla-fruit.jpg',
        'leafImages/Hydrilla.jpg',
        'By No machine-readable author provided. Michael Lo~commonswiki assumed (based on copyright claims). - No machine-readable source provided. Own work assumed (based on copyright claims)., CC BY 2.5, https://commons.wikimedia.org/w/index.php?curid=739341',
        'Public Domain, https://commons.wikimedia.org/w/index.php?curid=2728025',
        'https://en.wikipedia.org/wiki/Hydrilla#',
        -30
    );

INSERT INTO
    plant (
        common_Name,
        scientific_Name,
        description,
        is_Invasive,
        is_Native,
        color,
        image_FruitURL,
        image_LeafURL,
        image_Fruit_Source,
        image_Leaf_Source,
        wiki_Link,
        plantID
    )
VALUES
    (
        'European Frog-Bit',
        'Hydrocharis Morsus-Ranae',
        'The European frogbit is a small floating plant that resembles a miniature water lily, with kidney-shaped leaves forming rosettes on the water surface. It produces small white flowers with three petals and spreads quickly through stolons. During winter, it forms dormant turions at the bottom of water bodies, reemerging in spring. While native to Europe and parts of Asia, it became invasive in Canada and the northeastern United States after its introduction in the 1930s, particularly around the Great Lakes. Its rapid growth and dense surface coverage pose a threat to local biodiversity in this region, although it is less dominant in its native habitats.',
        true,
        false,
        'White',
        'fruitImages/european-frogbit.jpg',
        'leafImages/europeanfrogbit.jpg',
        'By Christian Fischer, CC BY-SA 3.0, https://commons.wikimedia.org/w/index.php?curid=1042515',
        'By Christian Fischer, CC BY-SA 3.0, https://commons.wikimedia.org/w/index.php?curid=6729105',
        'https://en.wikipedia.org/wiki/Hydrocharis_morsus-ranae',
        -31
    );

INSERT INTO
    plant (
        common_Name,
        scientific_Name,
        description,
        is_Invasive,
        is_Native,
        color,
        image_FruitURL,
        image_LeafURL,
        image_Fruit_Source,
        image_Leaf_Source,
        wiki_Link,
        plantID
    )
VALUES
    (
        'Miramar Weed',
        'Hygrophila Polysperma',
        'Stem/Roots: Hygrophila polysperma is a spiny dicotyledon plant. It is primarily a submersed rooted plant, but can be emersed in shallow areas with smaller, darker leaves (Cuda and Sutton 2000). Stems are creeping ascendant, brittle, and easily fragmented, and are 6 feet or longer',
        true,
        false,
        'Green',
        'fruitImages/miramar.jpg',
        'leafImages/miramar-weedf.JPG',
        'Shaun Winterton, Aquarium and Pond Plants of the World, Edition 3, USDA APHIS PPQ, Bugwood.org',
        'CC BY-SA 3.0, https://commons.wikimedia.org/w/index.php?curid=550261',
        'https://en.wikipedia.org/wiki/Hygrophila_polysperma',
        -32
    );

INSERT INTO
    plant (
        common_Name,
        scientific_Name,
        description,
        is_Invasive,
        is_Native,
        color,
        image_FruitURL,
        image_LeafURL,
        image_Fruit_Source,
        image_Leaf_Source,
        wiki_Link,
        plantID
    )
VALUES
    (
        'Yellow Iris',
        'Iris Pseudacorus',
        'The herbaceous flowering perennial plant Iris pseudacorus grows up to 2 meters tall, with erect leaves up to 90 cm long. Its bright yellow iris-like flowers are 7-10 cm across, and it produces dry capsules containing pale brown seeds. This plant thrives in wet conditions, particularly wetlands, and can tolerate submersion, low pH, and anaerobic soils. It spreads rapidly through rhizomes and water-dispersed seeds, often growing alongside Typha in shallower water. It serves as an important habitat for the endangered corncrake. While primarily aquatic or marginal, its rhizomes can endure dry periods. Both the petals and stem of I. pseudacorus are toxic to animals and plants.',
        true,
        false,
        'Yellow',
        'fruitImages/iris-pseudacorus.jpg',
        'leafImages/Iris_pseudacorus_Flower_.jpg',
        'CC BY-SA 3.0, https://commons.wikimedia.org/w/index.php?curid=213664',
        'By Photo by and (c)2007 Derek Ramsey (Ram-Man) - Self-photographed, GFDL 1.2, https://commons.wikimedia.org/w/index.php?curid=2459934',
        'https://en.wikipedia.org/wiki/Iris_pseudacorus',
        -33
    );

INSERT INTO
    plant (
        common_Name,
        scientific_Name,
        description,
        is_Invasive,
        is_Native,
        color,
        image_FruitURL,
        image_LeafURL,
        image_Fruit_Source,
        image_Leaf_Source,
        wiki_Link,
        plantID
    )
VALUES
    (
        'Common Privet',
        'Ligustrum Vulgare',
        'This shrub is semi-evergreen or deciduous, reaching heights of 3 meters (occasionally 5 meters). It features stiff, erect stems with gray-brown bark marked by small brown lenticels. Its leaves grow in opposite pairs, are narrow oval to lanceolate, measuring 2–6 cm long and 0.5–1.5 cm wide. Creamy-white tubular flowers with four-lobed corollas appear in mid-summer on 3–6 cm long panicles. The flowers emit a strong, pungent fragrance that some find unpleasant. The plant produces small glossy black berries (6–8 mm diameter) containing toxic seeds for humans but eaten by thrushes that disperse the seeds. In warmer regions, a more evergreen variation exists, sometimes referred to as Ligustrum vulgare var. italicum.',
        true,
        false,
        'Yellow',
        'fruitImages/Ligustrum_vulgare-Berries.jpg',
        'leafImages/Ligustrum-vulgare.jpg',
        'By User:Nino Barbieri - Own work, CC BY-SA 2.5, https://commons.wikimedia.org/w/index.php?curid=1786129',
        'Robert Vidéki, Doronicum Kft., Bugwood.org',
        'https://en.wikipedia.org/wiki/Ligustrum_vulgare',
        -34
    );

INSERT INTO
    plant (
        common_Name,
        scientific_Name,
        description,
        is_Invasive,
        is_Native,
        color,
        image_FruitURL,
        image_LeafURL,
        image_Fruit_Source,
        image_Leaf_Source,
        wiki_Link,
        plantID
    )
VALUES
    (
        'Asian Marshweed',
        'Limnophila Sessiliflora',
        'This species resembles Cabomba caroliniana but has whorls of leaves about 1.2 inches (3 cm) in diameter. The pinnate leaves are bright green and can turn reddish under strong light. The leaves close and the plant "sleeps" after receiving enough light. It can grow over 16 inches (40 cm) tall, often emerging from the waters surface for better access to light and carbon dioxide. Submersed leaves are darker green and lance-shaped due to lower light, while the fruit are elliptical capsules, measuring 3.5-5.5 mm long, green-brown when submerged and dark brown when emerged.',
        true,
        false,
        'Green to Brown',
        'fruitImages/Limnophila_sessiliflora.jpg',
        'leafImages/Limnophila_sessiliflora-.jpg',
        'By kajuko - Own work, CC BY-SA 3.0, https://commons.wikimedia.org/w/index.php?curid=2860688',
        'By J.M.Garg - Own work, CC BY-SA 4.0, https://commons.wikimedia.org/w/index.php?curid=5688358',
        'https://en.wikipedia.org/wiki/Limnophila_sessiliflora',
        -35
    );

INSERT INTO
    plant (
        common_Name,
        scientific_Name,
        description,
        is_Invasive,
        is_Native,
        color,
        image_FruitURL,
        image_LeafURL,
        image_Fruit_Source,
        image_Leaf_Source,
        wiki_Link,
        plantID
    )
VALUES
    (
        'Japanese Honeysuckle',
        'Lonicera Japonica',
        'Lonicera japonica is a climbing vine that can grow up to 10 meters or more in trees. It features oval leaves that are 3–8 cm long and 2–3 cm wide. Young stems are slightly red and fuzzy, while older ones are brown with peeling bark and may be hollow. The flowers are double-tongued, starting white and turning yellow with a sweet vanilla scent. In the fall, it produces black spherical berries (3–4 mm in diameter) containing a few seeds. While human consumption of flower nectar is safe, all other parts of the plant have the potential to be toxic.',
        true,
        false,
        'White to Pale Yellow',
        'fruitImages/Lonicera_japonica,_Fruit.JPG',
        'leafImages/Lonicera_japonica_leaf.jpg',
        'By Qwert1234 - Qwert1234&#039;s file, Public Domain, https://commons.wikimedia.org/w/index.php?curid=8324330',
        'By Ragnhild&amp;Neil Crawford from Sweden - Lonicera japonica -4375, CC BY-SA 2.0, https://commons.wikimedia.org/w/index.php?curid=75687236',
        'https://en.wikipedia.org/wiki/Lonicera_japonica',
        -36
    );

INSERT INTO
    plant (
        common_Name,
        scientific_Name,
        description,
        is_Invasive,
        is_Native,
        color,
        image_FruitURL,
        image_LeafURL,
        image_Fruit_Source,
        image_Leaf_Source,
        wiki_Link,
        plantID
    )
VALUES
    (
        'Amur Honeysuckle',
        'Lonicera Maackii',
        'The plant is a deciduous shrub reaching up to 6 meters in height, with stems up to 10 centimeters in diameter. Its leaves are opposite, measuring 5–9 centimeters in length and 2–4 centimeters in width, featuring an entire margin and some rough pubescence. The flowers, produced in pairs, are 2 centimeters long with two lips, initially white and later turning yellow or pale orange. Flowering occurs from middle spring to early summer. The plant bears bright red to black, semi-translucent berries that are 2–6 millimeters in diameter. These berries contain small seeds and mature in autumn, providing food for birds that disperse the seeds through their droppings.',
        true,
        false,
        'Red to Yellow to White',
        'fruitImages/Lonicera maackii-fruit.jpg',
        'leafImages/Lonicera_maackii_leaf.jpg',
        'By Photo taken by Fanghong - Own work, CC BY-SA 3.0, https://commons.wikimedia.org/w/index.php?curid=424662',
        'By Eric Hunt - Own work, CC BY-SA 4.0, https://commons.wikimedia.org/w/index.php?curid=72970624',
        'https://en.wikipedia.org/wiki/Lonicera_maackii',
        -37
    );

INSERT INTO
    plant (
        common_Name,
        scientific_Name,
        description,
        is_Invasive,
        is_Native,
        color,
        image_FruitURL,
        image_LeafURL,
        image_Fruit_Source,
        image_Leaf_Source,
        wiki_Link,
        plantID
    )
VALUES
    (
        'Morrows Honeysuckle',
        'Lonicera Morrowii',
        'Lonicera morrowii, or Morrows honeysuckle, is a deciduous shrub native to Japan, Korea, and Northeast China. It grows up to 2.5 meters with oblong leaves and early spring foliage. Its white to pale yellow flowers develop into dark red berries, which are toxic to humans but eaten by birds. Often called "bush honeysuckle," it is invasive in the United States and can hybridize with other Lonicera species, forming invasive hybrids like L. × bella when crossed with L. tatarica.',
        true,
        false,
        'Red to Yellow to White',
        'fruitImages/Lonicera_Morrowii_fruit.jpg',
        'leafImages/lonicera-morrowii-leaf.jpg',
        'By Sixflashphoto - Own work, CC BY-SA 4.0, https://commons.wikimedia.org/w/index.php?curid=63125414',
        'Leslie J. Mehrhoff, University of Connecticut, Bugwood.org',
        'https://en.wikipedia.org/wiki/Lonicera_morrowii',
        -38
    );

INSERT INTO
    plant (
        common_Name,
        scientific_Name,
        description,
        is_Invasive,
        is_Native,
        color,
        image_FruitURL,
        image_LeafURL,
        image_Fruit_Source,
        image_Leaf_Source,
        wiki_Link,
        plantID
    )
VALUES
    (
        'Tatarian Honeysuckle',
        'Lonicera Tatarica',
        'Lonicera tatarica is a bushy shrub that can reach around 3 meters in height. It features oval or rounded simple leaves measuring 3 to 6 centimeters long, with egg-shaped, hairless, and toothless characteristics. The inflorescence displays colors ranging from deep rose to light pink, occasionally white, with petals about 2–2.5 cm long and a slender tube. The flowers emit a sweet fragrance resembling honeysuckle. The shiny orange or red berries, up to 1 cm wide, are attractive to wildlife and aid in the plants spread through consumption by animals.',
        true,
        false,
        'White to Pink to Crimson',
        'fruitImages/Tatarian_Honeysuckle_.jpg',
        'leafImages/Tatarian_honeysuckle_-.jpg',
        'By Shadowmeld Photography - Own work, CC BY-SA 4.0, https://commons.wikimedia.org/w/index.php?curid=75728699',
        'By Matt Lavin - https://www.flickr.com/photos/35478170@N08/51892967732/, CC BY-SA 2.0, https://commons.wikimedia.org/w/index.php?curid=118321828',
        'https://en.wikipedia.org/wiki/Lonicera_tatarica',
        -39
    );

INSERT INTO
    plant (
        common_Name,
        scientific_Name,
        description,
        is_Invasive,
        is_Native,
        color,
        image_FruitURL,
        image_LeafURL,
        image_Fruit_Source,
        image_Leaf_Source,
        wiki_Link,
        plantID
    )
VALUES
    (
        'Purple Loosestrife',
        'Lythrum Salicaria',
        'Lythrum salicaria is a tall plant that can grow 1-2 meters, forming colonies from a single root mass. It has reddish-purple square stems, lanceolate leaves that are 3–10 cm long, and reddish-purple flowers, 10–20 mm in diameter. The flowers come in different types with varying stamen and style lengths to ensure cross-pollination. The fruit is a small capsule containing tiny seeds, and flowering lasts through the summer. In autumn, leaves often turn bright red. The plant is variable in leaf shape and hairiness, with subspecies and varieties described but considered non-significant. It is also referred to as Lythrum intermedium.',
        true,
        false,
        'reddish purple',
        'fruitImages/LythrumSalicaria.jpg',
        'leafImages/loosestrife-leaf.jpg',
        'By Christian Fischer, CC BY-SA 3.0, https://commons.wikimedia.org/w/index.php?curid=1043852',
        'Norman E. Rees, USDA Agricultural Research Service - Retired, Bugwood.org',
        'https://en.wikipedia.org/wiki/Lythrum_salicaria',
        -40
    );

INSERT INTO
    plant (
        common_Name,
        scientific_Name,
        description,
        is_Invasive,
        is_Native,
        color,
        image_FruitURL,
        image_LeafURL,
        image_Fruit_Source,
        image_Leaf_Source,
        wiki_Link,
        plantID
    )
VALUES
    (
        'Wand Loosestrife',
        'Lythrum Virgatum',
        'Lythrum virgatum, the wand loosestrife, is a species of flowering plant in the family Lythraceae, native to wet areas of the Eurasian steppes, and introduced to France, Germany, and the United States. The unimproved species and a number of cultivars are available from commercial suppliers. It is considered an invasive species in some jurisdictions.',
        true,
        false,
        'Purple',
        '',
        'leafImages/Lythrum_virgatum_.jpg',
        '',
        'By Stefan.lefnaer - Own work, CC BY-SA 4.0, https://commons.wikimedia.org/w/index.php?curid=73914930',
        'https://en.wikipedia.org/wiki/Lythrum_virgatum',
        -41
    );

INSERT INTO
    plant (
        common_Name,
        scientific_Name,
        description,
        is_Invasive,
        is_Native,
        color,
        image_FruitURL,
        image_LeafURL,
        image_Fruit_Source,
        image_Leaf_Source,
        wiki_Link,
        plantID
    )
VALUES
    (
        'European Water-Clover',
        'Marsilea Quadrifolia',
        'Aquatic fern bearing 4 parted leaf resembling Four-leaf clover (Trifolium). Leaves floating in deep water or erect in shallow water or on land. Leaflets obdeltoid, to 3/4" long, glaucous, petioles to 8" long; Sporocarp (ferns) ellipsoid, to 3/16" long, dark brown, on stalks to 3/4" long, attached to base of petioles.',
        true,
        false,
        'Green',
        '',
        'leafImages/european-water-clover.jpg',
        '',
        'Leslie J. Mehrhoff, University of Connecticut, Bugwood.org',
        'https://en.wikipedia.org/wiki/Marsilea_quadrifolia',
        -42
    );

INSERT INTO
    plant (
        common_Name,
        scientific_Name,
        description,
        is_Invasive,
        is_Native,
        color,
        image_FruitURL,
        image_LeafURL,
        image_Fruit_Source,
        image_Leaf_Source,
        wiki_Link,
        plantID
    )
VALUES
    (
        'Japanese Stiltgrass',
        'Microstegium Vimineum',
        'Japanese stiltgrass typically reaches heights of 40 to 100 cm and can root at each node. It flowers in late summer, followed by seed formation in caryopsis. Distinguished by its silver-striped leaf center, it resembles North American grass Leersia virginica, which lacks this stripe and flowers earlier. Japanese stiltgrass is a common tick habitat, notably the lone star tick, often carried by browsing deer to new areas.',
        true,
        false,
        'Green',
        '',
        'leafImages/Microstegium_vimineum.JPG',
        '',
        'By Bcbaker2390 - Own work, CC BY-SA 3.0, https://commons.wikimedia.org/w/index.php?curid=7897217',
        'https://en.wikipedia.org/wiki/Microstegium_vimineum',
        -43
    );

INSERT INTO
    plant (
        common_Name,
        scientific_Name,
        description,
        is_Invasive,
        is_Native,
        color,
        image_FruitURL,
        image_LeafURL,
        image_Fruit_Source,
        image_Leaf_Source,
        wiki_Link,
        plantID
    )
VALUES
    (
        'Heartshape False Pickerelweed',
        'Monochoria Vaginalis',
        'Native to Asia and the Pacific Islands, this plant is introduced in various regions and often considered an invasive weed, even listed on the US Federal Noxious Weed List. It thrives in water bodies, particularly invasive in rice paddies. This herb, annual or perennial, grows from a small rhizome. It features shiny green leaves about 12 cm long, on rigid, hollow petioles. The inflorescence carries 3 to 25 underwater-opening flowers simultaneously, each with purple-blue tepals over a centimeter long. Its capsule-like fruit, about a centimeter long, contains numerous small winged seeds.',
        true,
        false,
        'Purple',
        '',
        'leafImages/Monochoria_vaginalis_.jpg',
        '',
        'By © 2010 Jee & Rani Nature Photography (License: CC BY-SA 4.0), CC BY-SA 4.0, https://commons.wikimedia.org/w/index.php?curid=30789950',
        'https://en.wikipedia.org/wiki/Pontederia_vaginalis',
        -44
    );

INSERT INTO
    plant (
        common_Name,
        scientific_Name,
        description,
        is_Invasive,
        is_Native,
        color,
        image_FruitURL,
        image_LeafURL,
        image_Fruit_Source,
        image_Leaf_Source,
        wiki_Link,
        plantID
    )
VALUES
    (
        'White Mulberry',
        'Morus Alba',
        'The white mulberry tree has variable leaf sizes and deciduous habit in temperate regions but can be evergreen in tropical areas. It produces single-sex catkin flowers and sweet, but mild, fruit that changes color. Birds disperse its seeds. The tree is scientifically notable for its extremely rapid pollen release from its catkins, achieved through catapult-like stamens, reaching speeds of around 380 miles per hour, making it the fastest known plant movement.',
        true,
        false,
        'White to Pink to Red',
        'fruitImages/Morus-alba.jpg',
        'leafImages/Morus_alba-leaves.jpg',
        'By GerardM - Luis Fernández García L. Fdez. / 2005-06-05 / Parque Ana Tutor, Madrid., CC BY-SA 2.1 es, https://commons.wikimedia.org/w/index.php?curid=178195',
        'By Jaknouse - Own work, CC BY 3.0, https://commons.wikimedia.org/w/index.php?curid=8640180',
        'https://en.wikipedia.org/wiki/Morus_alba',
        -45
    );

INSERT INTO
    plant (
        common_Name,
        scientific_Name,
        description,
        is_Invasive,
        is_Native,
        color,
        image_FruitURL,
        image_LeafURL,
        image_Fruit_Source,
        image_Leaf_Source,
        wiki_Link,
        plantID
    )
VALUES
    (
        'Parrots-Feather',
        'Myriophyllum aquaticum',
        'Parrot feather is a perennial plant known for its feather-like leaves arranged in whorls of four to six. Its emergent stems resemble small fir trees and can grow over a foot above water. Pinkish-white flowers attach to the plant, which reproduces mainly through fragments. It thrives as water warms in spring, with most plants being female and seeds uncommon in North America. The leaves are blue-green to gray-green and deeply cut into narrow lobes.',
        true,
        false,
        'Bluish-Green to Green',
        '',
        'leafImages/Myriophyllum_aquaticum.jpg',
        '',
        'By André Karwath aka Aka - Own work, CC BY-SA 2.5, https://commons.wikimedia.org/w/index.php?curid=305652',
        'https://en.wikipedia.org/wiki/Myriophyllum_aquaticum',
        -46
    );

INSERT INTO
    plant (
        common_Name,
        scientific_Name,
        description,
        is_Invasive,
        is_Native,
        color,
        image_FruitURL,
        image_LeafURL,
        image_Fruit_Source,
        image_Leaf_Source,
        wiki_Link,
        plantID
    )
VALUES
    (
        'Eurasian Watermilfoil',
        'Myriophyllum spicatum',
        'Eurasian watermilfoil is a plant with long, thin stems up to 250 cm in length. Its underwater leaves grow in groups of four with thread-like leaflets, while inconspicuous orange-red flowers appear on a spike above the waters surface. It has 12-21 pairs of leaflets, distinct from the 5-9 pairs of northern watermilfoil. Hybrids of these species can cause confusion due to intermediate leaf characteristics.',
        true,
        false,
        'Light Green to Yellowish to Reddish',
        '',
        'leafImages/_Myriophyllum_spicatum.jpg',
        '',
        'CC BY-SA 3.0, https://commons.wikimedia.org/w/index.php?curid=451399',
        'https://en.wikipedia.org/wiki/Myriophyllum_spicatum',
        -47
    );

INSERT INTO
    plant (
        common_Name,
        scientific_Name,
        description,
        is_Invasive,
        is_Native,
        color,
        image_FruitURL,
        image_LeafURL,
        image_Fruit_Source,
        image_Leaf_Source,
        wiki_Link,
        plantID
    )
VALUES
    (
        'Brittle Waternymph',
        'Najas minor',
        'Najas minor forms dense clusters with branched stems that break easily, allowing propagation from fragments or small seeds along the stem. Small flowers grow in clusters along leaf axils. Its opposite, unbranched strap-shaped leaves, about 4.5 cm long, feature visible serrations. It shares morphological similarities with coontail and slender naiad.',
        true,
        false,
        'Green to Greenish Brown',
        '',
        'leafImages/Najas-minor.jpg',
        '',
        'Leslie J. Mehrhoff, University of Connecticut, Bugwood.org',
        'https://en.wikipedia.org/wiki/Najas_minor',
        -48
    );

INSERT INTO
    plant (
        common_Name,
        scientific_Name,
        description,
        is_Invasive,
        is_Native,
        color,
        image_FruitURL,
        image_LeafURL,
        image_Fruit_Source,
        image_Leaf_Source,
        wiki_Link,
        plantID
    )
VALUES
    (
        'Yellow Floating Heart',
        'Nymphoides peltata',
        'Nymphoides peltata is an aquatic perennial with creeping stolons up to 2 meters long. It features heart-shaped floating leaves (3-15 cm wide) in green to yellow-green shades with purple undersides. The leaves support loose clusters of 2-5 yellow flowers on peduncles above the water. Each flower forms a beaked capsule holding flat seeds with stiff hairs. It resembles Nuphar variegata and Nymphaea species but differs in leaf size and flower shape, with flowers crucial for species identification.',
        true,
        false,
        'Green to Yellow-Green',
        '',
        'leafImages/NymphoidesPeltata.jpg',
        '',
        'By Challiyil Eswaramangalath Pavithran Vipin - https://www.flickr.com/photos/challiyan/3038172072/, CC BY-SA 2.0, https://commons.wikimedia.org/w/index.php?curid=107817535',
        'https://en.wikipedia.org/wiki/Nymphoides_peltata',
        -49
    );

INSERT INTO
    plant (
        common_Name,
        scientific_Name,
        description,
        is_Invasive,
        is_Native,
        color,
        image_FruitURL,
        image_LeafURL,
        image_Fruit_Source,
        image_Leaf_Source,
        wiki_Link,
        plantID
    )
VALUES
    (
        'Duck Lettuce',
        'Ottelia alismoides',
        'Ottelia alismoides is a submersed aquatic herbaceous plant that is native to Africa, Asia, Australia, and the Pacific. The plant is entirely submersed except for the flower. Its common name, duck lettuce, comes from the strong resemblance the leaves of O. alismoides bears to lettuce leaves.',
        true,
        false,
        'White to Yellow',
        '',
        'leafImages/Ottelia_alismoides_.jpg',
        '',
        'By Fan Wen - Own work http://www.flowersview.com/Ottelia-alismoides/IMG_8623.jpg.html, CC BY-SA 4.0, https://commons.wikimedia.org/w/index.php?curid=44116644',
        'https://en.wikipedia.org/wiki/Nymphoides_peltata',
        -50
    );

INSERT INTO
    plant (
        common_Name,
        scientific_Name,
        description,
        is_Invasive,
        is_Native,
        color,
        image_FruitURL,
        image_LeafURL,
        image_Fruit_Source,
        image_Leaf_Source,
        wiki_Link,
        plantID
    )
VALUES
    (
        'Princess Tree',
        'Paulownia Tomentosa',
        'This tree grows to 10-25 meters in height with large heart-shaped to five-lobed leaves that can be 15-40 cm across. Leaves are often in opposite pairs but can appear in groups of three on young growth. Fragrant violet-blue flowers bloom before leaves in spring, resembling foxglove flowers, on 10–30 cm panicles. The dry egg-shaped capsules contain small winged seeds that disperse via wind and water. The tree prefers full sun, can tolerate various soils, pollution, and even grow in cracks. It is resilient to fires due to its regenerative roots.',
        true,
        false,
        'Green to Pale Purple',
        'fruitImages/PaulowniaTomentosaFruit.jpg',
        'leafImages/Paulownia_tomentosa_.JPG',
        'By Chhe (talk) - Own work (Original text: I created this work entirely by myself.), Public Domain, https://commons.wikimedia.org/w/index.php?curid=18213079',
        'By Marija Gajić - Own work, CC BY-SA 4.0, https://commons.wikimedia.org/w/index.php?curid=45091074',
        'https://en.wikipedia.org/wiki/Paulownia_tomentosa',
        -51
    );

INSERT INTO
    plant (
        common_Name,
        scientific_Name,
        description,
        is_Invasive,
        is_Native,
        color,
        image_FruitURL,
        image_LeafURL,
        image_Fruit_Source,
        image_Leaf_Source,
        wiki_Link,
        plantID
    )
VALUES
    (
        'Mile-A-Minute',
        'Persicaria perfoliata',
        'Persicaria perfoliata, also known as Mile-a-Minute Vine, features reddish stems armed with downward-pointing hooks, present on leaf undersides too. The light green equilateral triangle leaves alternate on delicate stems, enclosed by circular leafy structures called ochreas. Flowers and fruits emerge from within these ochreas, appearing white and inconspicuous. The edible metallic blue segmented fruits each hold a glossy black or reddish-black seed.',
        true,
        false,
        'Light Green',
        'fruitImages/Persicaria_perfoliata_.JPG',
        'leafImages/mile-a-minute.jpg',
        'By Qwert1234 at ja.wikipedia, CC BY-SA 3.0, https://commons.wikimedia.org/w/index.php?curid=7087071',
        'Leslie J. Mehrhoff, University of Connecticut, Bugwood.org',
        'https://en.wikipedia.org/wiki/Persicaria_perfoliata',
        -52
    );

INSERT INTO
    plant (
        common_Name,
        scientific_Name,
        description,
        is_Invasive,
        is_Native,
        color,
        image_FruitURL,
        image_LeafURL,
        image_Fruit_Source,
        image_Leaf_Source,
        wiki_Link,
        plantID
    )
VALUES
    (
        'Reed Canary Grass',
        'Phalaris Arundinacea',
        'This grass can grow up to 2 meters tall, featuring green or variegated leaves, and panicles up to 30 centimeters long. The spikelets are light green, occasionally streaked with darker shades. It Is a perennial grass that spreads through thick rhizomes beneath the ground.',
        true,
        false,
        'Greenish-White to Purple',
        'fruitImages/Phalaris_arundinacea_1.jpg',
        'leafImages/phalaris arundiacea.jpg',
        'By Franz Xaver - Own work, CC BY-SA 3.0, https://commons.wikimedia.org/w/index.php?curid=7997933',
        'Leslie J. Mehrhoff, University of Connecticut, Bugwood.org',
        'https://en.wikipedia.org/wiki/Phalaris_arundinacea',
        -53
    );

INSERT INTO
    plant (
        common_Name,
        scientific_Name,
        description,
        is_Invasive,
        is_Native,
        color,
        image_FruitURL,
        image_LeafURL,
        image_Fruit_Source,
        image_Leaf_Source,
        wiki_Link,
        plantID
    )
VALUES
    (
        'Common Reed',
        'Phragmites Australis',
        'Phragmites Australis, commonly known as reed, forms extensive reed beds that can cover large areas. It spreads rapidly through horizontal runners, establishing roots along the way. It thrives in various wet environments, growing up to 2-4 meters tall. The leaves are 18-60 cm long, and it produces dark purple flowers in late summer, followed by spikelets with long silky hairs that aid seed dispersal.',
        true,
        false,
        'Greenish-White to Pink',
        'fruitImages/common reed.jpg',
        'leafImages/common-reed.jpg',
        'Leslie J. Mehrhoff, University of Connecticut, Bugwood.org',
        'Leslie J. Mehrhoff, University of Connecticut, Bugwood.org',
        'https://en.wikipedia.org/wiki/Phragmites_australis',
        -54
    );

INSERT INTO
    plant (
        common_Name,
        scientific_Name,
        description,
        is_Invasive,
        is_Native,
        color,
        image_FruitURL,
        image_LeafURL,
        image_Fruit_Source,
        image_Leaf_Source,
        wiki_Link,
        plantID
    )
VALUES
    (
        'Water Lettuce',
        'Pistia Stratiotes',
        'Pistia stratiotes, or water lettuce, is a floating aquatic plant with thick leaves forming rosettes. Its leaves are light green, 2-15 cm long, featuring parallel veins and wavy edges with air-trapping white hairs. It reproduces through stolons and berries. This plant thrives in warm, slightly acidic waters and prefers slow-moving rivers, lakes, and ponds. It does not tolerate colder temperatures beyond the tropics.',
        true,
        false,
        'Light Green',
        '',
        'leafImages/water-lettuce.jpg',
        '',
        'Troy Evans, Great Smoky Mountains National Park, Bugwood.org',
        'https://en.wikipedia.org/wiki/Pistia',
        -55
    );

INSERT INTO
    plant (
        common_Name,
        scientific_Name,
        description,
        is_Invasive,
        is_Native,
        color,
        image_FruitURL,
        image_LeafURL,
        image_Fruit_Source,
        image_Leaf_Source,
        wiki_Link,
        plantID
    )
VALUES
    (
        'Curly Pondweed',
        'Potamogeton Crispus',
        'Curly-leaf pondweed is a perennial herb with rhizomatous growth, featuring flattened, branching stems up to a meter long. Its alternately arranged submerged leaves are sessile and linear or oblong, measuring 25–95 mm long and 5–12 mm wide. These leaves vary in color, from bright green to olive green, even turning fibrous and brownish later in the season. Notably, they have serrated margins, distinguishing them from other pondweeds, and may display wavy edges. The plants inflorescence is a short spike of flowers emerging above the water surface, blooming from May to October.',
        true,
        false,
        'Green to Brown',
        '',
        'leafImages/curly-leaf-pondweed.jpg',
        '',
        'Chris Evans, University of Illinois, Bugwood.org',
        'https://en.wikipedia.org/wiki/Potamogeton_crispus',
        -56
    );

INSERT INTO
    plant (
        common_Name,
        scientific_Name,
        description,
        is_Invasive,
        is_Native,
        color,
        image_FruitURL,
        image_LeafURL,
        image_Fruit_Source,
        image_Leaf_Source,
        wiki_Link,
        plantID
    )
VALUES
    (
        'Kudzu Vine',
        'Pueraria Montana Var. Lobata',
        'climbing, semi-woody, perennial vine that can reach up to 100 feet in length. Leaves: alternately arranged and compound with three broad leaflets up to 4 inches across. Leaflets may be entire or deeply 2-3 lobed with hairy margins. Flowers: ½ inch long, purple, highly fragrant and borne in long hanging clusters.',
        true,
        false,
        'Pink to Purple',
        '',
        'leafImages/Pueraria_montana_var._lobata.jpg',
        '',
        'By Forest & Kim Starr, CC BY 3.0, https://commons.wikimedia.org/w/index.php?curid=6120749',
        'https://en.wikipedia.org/wiki/Pueraria_montana_var._lobata',
        -57
    );

INSERT INTO
    plant (
        common_Name,
        scientific_Name,
        description,
        is_Invasive,
        is_Native,
        color,
        image_FruitURL,
        image_LeafURL,
        image_Fruit_Source,
        image_Leaf_Source,
        wiki_Link,
        plantID
    )
VALUES
    (
        'Callery pear',
        'Pyrus calleryana',
        'The Callery pear (Pyrus calleryana) is a deciduous tree reaching 5-8 meters in height. It features glossy dark green oval leaves with paler undersides that flutter in the breeze. It produces small white flowers in early spring before fully leafing out. The fruit, initially hard and inedible due to cyanide-laced seeds, softens after frost, becoming a food source for birds that spread the seeds. Its leaves turn vibrant colors in autumn. While resistant to disease, some cultivars like Bradford are vulnerable to storm damage due to rapid growth. Named after Joseph-Marie Callery, who brought specimens from China to Europe.',
        true,
        false,
        'Pink to Purple to Yellow to Orange to White',
        'fruitImages/callery-pear.jpg',
        'leafImages/Pear_foliage.JPG',
        'James H. Miller, USDA Forest Service, Bugwood.org',
        'By Famartin - Own work, CC BY-SA 4.0, https://commons.wikimedia.org/w/index.php?curid=36997364',
        'https://en.wikipedia.org/wiki/Pyrus_calleryana',
        -58
    );

INSERT INTO
    plant (
        common_Name,
        scientific_Name,
        description,
        is_Invasive,
        is_Native,
        color,
        image_FruitURL,
        image_LeafURL,
        image_Fruit_Source,
        image_Leaf_Source,
        wiki_Link,
        plantID
    )
VALUES
    (
        'European Buckthorn',
        'Rhamnus Cathartica',
        'Rhamnus cathartica is a deciduous shrub or small tree, up to 10 meters tall, with thorny branches and grey-brown bark. Its leaves are elliptic to oval, green and turn yellow in autumn, arranged in pairs or alternately. The yellowish-green flowers have four petals and are insect pollinated. The fruit is a black drupe, 6–10 mm across, containing two to four seeds. Initially named Rhamnus catharticus by Linnaeus, the correct spelling is Rhamnus cathartica due to the gender of the genus name.',
        true,
        false,
        'Dark Green',
        'fruitImages/Rhamnus_cathartica_.jpg',
        'leafImages/_Rhamnus_catharticus_.png',
        'By Matt Lavin from Bozeman, Montana, USA - Rhamnus catharticaUploaded by Tim1357, CC BY-SA 2.0, https://commons.wikimedia.org/w/index.php?curid=22749525',
        'By Köhler, F. E. (Franz Eugen) - Köhler&#039;s Medizinal-Pflanzen in naturgetreuen Abbildungen mit kurz erläuterndem Texte: Atlas zur Pharmacopoea germanica, Volume 1 of 3, Public Domain, https://commons.wikimedia.org/w/index.php?curid=6362135',
        'https://en.wikipedia.org/wiki/Rhamnus_cathartica',
        -59
    );

INSERT INTO
    plant (
        common_Name,
        scientific_Name,
        description,
        is_Invasive,
        is_Native,
        color,
        image_FruitURL,
        image_LeafURL,
        image_Fruit_Source,
        image_Leaf_Source,
        wiki_Link,
        plantID
    )
VALUES
    (
        'Multiflora Rose',
        'Rosa Multiflora',
        'This scrambling shrub can climb over other plants, reaching 3-5 meters in height. It has stout stems with curved prickles and leaves that are compound, with 5-9 leaflets and feathered stipules, measuring 5-10 cm in length. Its small flowers, white or pink, appear in large corymbs during early summer. The reddish to purple hips, about 6-8 mm in diameter, develop afterward.',
        true,
        false,
        'White to Light Pink',
        'fruitImages/Multiflora_Rose.jpg',
        'leafImages/Multiflora_Rose.JPG',
        'By Famartin - Own work, CC BY-SA 4.0, https://commons.wikimedia.org/w/index.php?curid=90501378',
        'By Broly0 - Own work, CC0, https://commons.wikimedia.org/w/index.php?curid=40552847',
        'https://en.wikipedia.org/wiki/Rosa_multiflora',
        -60
    );

INSERT INTO
    plant (
        common_Name,
        scientific_Name,
        description,
        is_Invasive,
        is_Native,
        color,
        image_FruitURL,
        image_LeafURL,
        image_Fruit_Source,
        image_Leaf_Source,
        wiki_Link,
        plantID
    )
VALUES
    (
        'Arrowhead',
        'Sagittaria Sagittifolia',
        'Sagittaria sagittifolia, known as arrowhead due to its leaf shape, is a flowering plant found in wetlands across Europe, including Russia, Ukraine, Asia, and Australia. It is also cultivated for food in some places. In the UK, it is the only native Sagittaria species. This herbaceous perennial grows in water, with arrowhead-shaped leaves above water and linear submerged leaves. Its flowers have three small sepals, three white petals, and several purple stamens.',
        true,
        false,
        'White and Purple',
        'fruitImages/Sagittaria.jpg',
        'leafImages/SagittariaSagittifoliaLeaves.jpg',
        'By Christian Fischer, CC BY-SA 3.0, https://commons.wikimedia.org/w/index.php?curid=4437547',
        'By Christian Fischer, CC BY-SA 3.0, https://commons.wikimedia.org/w/index.php?curid=2508501',
        'https://en.wikipedia.org/wiki/Sagittaria_sagittifolia',
        -61
    );

INSERT INTO
    plant (
        common_Name,
        scientific_Name,
        description,
        is_Invasive,
        is_Native,
        color,
        image_FruitURL,
        image_LeafURL,
        image_Fruit_Source,
        image_Leaf_Source,
        wiki_Link,
        plantID
    )
VALUES
    (
        'Crack Willow',
        'Salix x Fragilis',
        'Salix x fragilis is a rapid-growing deciduous tree, reaching 10-20 meters (rarely 29 meters) tall. Its bark is dark gray-brown and coarsely fissured. Lanceolate leaves are initially hairy, later becoming hairless, measuring 9-15 cm long. Catkin flowers emerge in early spring, pollinated by insects. The tree is dioecious, with separate male and female catkins. Small cotton-tufted seeds are released from fruit capsules in late spring, dispersing easily by wind and water and germinating upon contact with soil.',
        true,
        false,
        'Green',
        '',
        'leafImages/Salix_fragilis_001.jpg',
        '',
        'By Willow - Own work, CC BY 2.5, https://commons.wikimedia.org/w/index.php?curid=2653825',
        'https://en.wikipedia.org/wiki/Salix_%C3%97_fragilis',
        -62
    );

INSERT INTO
    plant (
        common_Name,
        scientific_Name,
        description,
        is_Invasive,
        is_Native,
        color,
        image_FruitURL,
        image_LeafURL,
        image_Fruit_Source,
        image_Leaf_Source,
        wiki_Link,
        plantID
    )
VALUES
    (
        'Common Salvinia',
        'Salvinia Minima',
        'Salvinia minima is a fern with small oval leaves, 0.4 to 2 centimeters in length. Its rhizomes float near the surface and bear sets of leaves that branch horizontally. Each set has three leaves: two float on the surface, while one hangs below, resembling roots. The leaves have uniform fine white hairs that repel water, growing in groups of four without touching at the tips. Longer brown hairs are found underneath. The leaves vary in color from bright green to brown, often turning brown with age and sunlight exposure.',
        true,
        false,
        'Bright Green to Brown',
        '',
        'leafImages/salvinia minima.jpg',
        '',
        'Barry Rice, sarracenia.com, Bugwood.org',
        'https://en.wikipedia.org/wiki/Salvinia_minima#References',
        -63
    );

INSERT INTO
    plant (
        common_Name,
        scientific_Name,
        description,
        is_Invasive,
        is_Native,
        color,
        image_FruitURL,
        image_LeafURL,
        image_Fruit_Source,
        image_Leaf_Source,
        wiki_Link,
        plantID
    )
VALUES
    (
        'Giant Salvinia',
        'Salvinia Molesta',
        'Salvinia molesta is a group of closely related floating ferns that can be hard to tell apart. Originally an ornamental plant, it has become an invasive pest in many places globally. It exhibits different growth forms, from small flat leaves in its invading stage to large, crowded, folded leaves in the mat form. Under optimal conditions, it can create thick mats up to two feet deep, causing disruptions to water activities. This fern has been used to extract nutrients and pollutants from water and can be used as mulch when dried.',
        true,
        false,
        'Green to Gold to Brown',
        '',
        'leafImages/Salvinia_molesta.jpg',
        '',
        'By No machine-readable author provided. Marshman~commonswiki assumed (based on copyright claims). - No machine-readable source provided. Own work assumed (based on copyright claims)., CC BY 2.5, https://commons.wikimedia.org/w/index.php?curid=332981',
        'https://en.wikipedia.org/wiki/Salvinia_molesta',
        -64
    );

INSERT INTO
    plant (
        common_Name,
        scientific_Name,
        description,
        is_Invasive,
        is_Native,
        color,
        image_FruitURL,
        image_LeafURL,
        image_Fruit_Source,
        image_Leaf_Source,
        wiki_Link,
        plantID
    )
VALUES
    (
        'Branched Bur-Reed',
        'Sparganium Erectum',
        'Sparganium erectum is a perennial wetland or aquatic herbaceous plant that is native to North America. It grows from slender rhizomes with slender terete stems. S. erectum grows from 3-8 ft.',
        true,
        false,
        'Light Green',
        'fruitImages/Sparganium_erectum(Fruit).JPG',
        'leafImages/sparganium erectum.JPG',
        'By Show_ryu - Own work, CC BY 3.0, https://commons.wikimedia.org/w/index.php?curid=7801372',
        'By Hugo.arg - Own work, CC BY-SA 4.0, https://commons.wikimedia.org/w/index.php?curid=7314401',
        'https://en.wikipedia.org/wiki/Sparganium_erectum',
        -65
    );

    INSERT INTO
    plant (
        common_Name,
        scientific_Name,
        description,
        is_Invasive,
        is_Native,
        color,
        image_FruitURL,
        image_LeafURL,
        image_Fruit_Source,
        image_Leaf_Source,
        wiki_Link,
        plantID
    )
VALUES
    (
        'Water Soldiers',
        'Stratiotes Aloides',
        'Stratiotes aloides has a rosette of serrated leaves, lanceolate, up to 30 cm long in tufts. White flowers are up to 45 mm across with many stamens in the male plants are produced in the summer.',
        true,
        false,
        'White and Green',
        '',
        'leafImages/Stratiotes_aloides.jpg',
        '',
        'By Jörg Hempel, CC BY-SA 3.0 de, https://commons.wikimedia.org/w/index.php?curid=19179398',
        'https://en.wikipedia.org/wiki/Stratiotes_aloides',
        -66
    );

    INSERT INTO
    plant (
        common_Name,
        scientific_Name,
        description,
        is_Invasive,
        is_Native,
        color,
        image_FruitURL,
        image_LeafURL,
        image_Fruit_Source,
        image_Leaf_Source,
        wiki_Link,
        plantID
    )
VALUES
    (
        'Water Chestnut',
        'Trapa Natans',
        'The water caltrop is an aquatic plant with submerged stems up to 4.6 meters long. It has divided submerged leaves along the stem and undivided floating leaves in a rosette. These leaves are saw-toothed and ovoid or triangular, with inflated petioles for buoyancy. White four-petaled flowers appear in early summer, and its fruit is a nut with four barbed spines. Seeds can stay viable for up to 12 years. The plant spreads when rosettes and fruits detach, floating to new areas via currents or clinging to objects and animals. Another unrelated plant called Eleocharis dulcis is also called water chestnut, used in Chinese cuisine for its edible corms.',
        true,
        false,
        'Olive-Green',
        'fruitImages/Trapa_natans_seeds.jpg',
        'leafImages/Trapa_natans1.jpg',
        'By TheDarkCurrent - Own work, CC BY-SA 3.0, https://commons.wikimedia.org/w/index.php?curid=16377601',
        'By Prof. Dr. Otto Wilhelm Thomé - Original book source:Prof. Dr. Otto Wilhelm Thomé Flora von Deutschland, Österreich und der Schweiz1885, Gera, GermanySource: www.biolib.de, Public Domain, https://commons.wikimedia.org/w/index.php?curid=4101439',
        'https://en.wikipedia.org/wiki/Water_caltrop',
        -67
    );

    INSERT INTO
    plant (
        common_Name,
        scientific_Name,
        description,
        is_Invasive,
        is_Native,
        color,
        image_FruitURL,
        image_LeafURL,
        image_Fruit_Source,
        image_Leaf_Source,
        wiki_Link,
        plantID
    )
VALUES
    (
        'Narrow-Leaved Cattail',
        'Typha Angustifolia',
        'The plant features flat, narrow leaves measuring ¼"–½" wide and 3–6 tall when mature. Each vegetative shoot produces 12–16 leaves. The leaves have distinct stalks as tall as the leaves themselves and are crowned with brown, fluffy, sausage-shaped flowering heads. The plant has robust rhizomatous roots that can grow up to 27" in length and ¾"–1½" in diameter.',
        true,
        true,
        'Green and Brown',
        'fruitImages/Typha_angustifolia_nf.jpg',
        'leafImages/Typha_angustifolia_(habitus)_1.jpg',
        'By Carl Axel Magnus Lindman - http://runeberg.org/nordflor/493.html, Public Domain, https://commons.wikimedia.org/w/index.php?curid=385802',
        'By Le.Loup.Gris - Own work, CC BY-SA 3.0, https://commons.wikimedia.org/w/index.php?curid=16418868',
        'https://en.wikipedia.org/wiki/Typha_angustifolia',
        -68
    );

    INSERT INTO
    plant (
        common_Name,
        scientific_Name,
        description,
        is_Invasive,
        is_Native,
        color,
        image_FruitURL,
        image_LeafURL,
        image_Fruit_Source,
        image_Leaf_Source,
        wiki_Link,
        plantID
    )
VALUES
    (
        'Hybrid Cattail',
        'Typha x Glauca',
        'Perennial, erect wetland plant reaching 5-10 tall, often with an underwater base. The hybrid cattail is a hybrid of common (broad-leaved) and narrow-leaved cattails and its structure is intermediate between its parental species.',
        true,
        false,
        'Green and Brown',
        '',
        'leafImages/Typha_×_glauca.jpg',
        '',
        'By Bobby McCabe - https://www.inaturalist.org/photos/9844478, CC BY 4.0, https://commons.wikimedia.org/w/index.php?curid=115155337',
        'https://en.wikipedia.org/wiki/Typha_%C3%97_glauca',
        -69
    );

    INSERT INTO
    plant (
        common_Name,
        scientific_Name,
        description,
        is_Invasive,
        is_Native,
        color,
        image_FruitURL,
        image_LeafURL,
        image_Fruit_Source,
        image_Leaf_Source,
        wiki_Link,
        plantID
    )
VALUES
    (
        'Siberian Elm',
        'Ulmus Pumila',
        'The Siberian elm is a deciduous tree, often bushy, up to 25 meters tall. It has gray bark and yellowish-gray branchlets. Leaves are elliptic-ovate, turning yellow in autumn. In early spring, inconspicuous flowers appear before leaves. Wind-dispersed samarae are whitish-tan, orbicular. The tree self-pollinates and lives around 60 years in temperate climates, longer in its native habitat.',
        true,
        false,
        'Dark Green',
        'fruitImages/Ulmus_pumila_.jpg',
        'leafImages/Ulmus_pumila_leaves.jpg',
        'By Matt Lavin from Bozeman, Montana, USA - Ulmus pumilaUploaded by Tim1357, CC BY-SA 2.0, https://commons.wikimedia.org/w/index.php?curid=22758121',
        'By Melburnian - Self-photographed, CC BY 2.5, https://commons.wikimedia.org/w/index.php?curid=1355203',
        'https://en.wikipedia.org/wiki/Ulmus_pumila',
        -70
    );

    INSERT INTO
    plant (
        common_Name,
        scientific_Name,
        description,
        is_Invasive,
        is_Native,
        color,
        image_FruitURL,
        image_LeafURL,
        image_Fruit_Source,
        image_Leaf_Source,
        wiki_Link,
        plantID
    )
VALUES
    (
        'Black Swallow-Wort',
        'Vincetoxicum Nigrum',
        'Vincetoxicum nigrum is a perennial vine with ovate leaves and pointed tips. Leaves are 3–4 inches long and 2–3 inches wide, growing in pairs on the stem. Its star-shaped flowers have five petals and are covered in white hairs, ranging from dark purple to black. The fruit is a slender, tapered follicle with seeds, each equipped with a fluffy pappus for wind dispersal.',
        true,
        false,
        'Puprle and Green',
        'fruitImages/vincetoxicum-nigrum.jpg',
        'leafImages/vincetoxicum-nigrum-leaf.jpg',
        'Leslie J. Mehrhoff, University of Connecticut, Bugwood.org',
        'Leslie J. Mehrhoff, University of Connecticut, Bugwood.org',
        'https://en.wikipedia.org/wiki/Vincetoxicum_nigrum',
        -71
    );

    INSERT INTO
    plant (
        common_Name,
        scientific_Name,
        description,
        is_Invasive,
        is_Native,
        color,
        image_FruitURL,
        image_LeafURL,
        image_Fruit_Source,
        image_Leaf_Source,
        wiki_Link,
        plantID
    )
VALUES
    (
        'Jerusalem Artichoke',
        'Helianthus Tuberosus',
        'Helianthus tuberosus, or Jerusalem artichoke, is a tall perennial plant with rough leaves that change from large and ovoid-acute at the base to smaller and narrower higher up the stem. It produces fragrant yellow flowers in 5-10 cm clusters. The edible tubers, resembling ginger roots, vary in color and offer a crisp texture when raw.',
        true,
        true,
        'Golden Yellow',
        'fruitImages/jerusalem-artichoke-flower.jpg',
        'leafImages/jerusalem-artichoke.jpg',
        'CC BY-SA 3.0, https://commons.wikimedia.org/w/index.php?curid=81355',
        'CC BY-SA 3.0, https://commons.wikimedia.org/w/index.php?curid=39407',
        'https://en.wikipedia.org/wiki/Jerusalem_artichoke',
        -72
    );

    INSERT INTO
    plant (
        common_Name,
        scientific_Name,
        description,
        is_Invasive,
        is_Native,
        color,
        image_FruitURL,
        image_LeafURL,
        image_Fruit_Source,
        image_Leaf_Source,
        wiki_Link,
        plantID
    )
VALUES
    (
        'fringed Loosestrife',
        'Lysimachia Ciliata',
        'Lysimachia ciliata, known as fringed loosestrife, is a tall herbaceous perennial with simple leaves and smooth green stems. Native to North America, it produces star-shaped yellow flowers in midsummer. Unique among Lysimachia species, it offers oil instead of nectar to pollinators, attracting the specialist oil bee Macropis nuda. This relationship is vital for the bees survival. It is also cultivated as an ornamental plant, but its growth can be managed by removing new suckers. Notable cultivars include: [cutoff]',
        false,
        true,
        'Yellow',
        'fruitImages/Lysimachia_ciliata_Prague_2013_2.jpg',
        '',
        'By Karelj - Own work, CC BY-SA 3.0, https://commons.wikimedia.org/w/index.php?curid=27668526',
        '',
        'https://en.wikipedia.org/wiki/Lysimachia_ciliata',
        -73
    );

    INSERT INTO
    plant (
        common_Name,
        scientific_Name,
        description,
        is_Invasive,
        is_Native,
        color,
        image_FruitURL,
        image_LeafURL,
        image_Fruit_Source,
        image_Leaf_Source,
        wiki_Link,
        plantID
    )
VALUES
    (
        'Virginia Bluebells',
        'Mertensia Virginica',
        'Virginia bluebells are characterized by gray-green ovate leaves on stems up to 24 inches tall. These leaves are up to 5 inches long, smooth-edged, and petiolate at the base of the stem, becoming sessile towards the top. The flowers are arranged in a nodding group at the end of arched stems. While the buds are pink, the open flowers typically showcase light blue hues, occasionally pink or rarely white. Each flower features five shallow lobes forming a tube at the base, five stamens, and a central pistil.',
        false,
        true,
        'Deep purple to green',
        'fruitImages/1024px-Virginia_Bluebells_at_Rocky_River.jpg',
        'leafImages/Virginia_Bluebell_Mertensia_virginica_Plant_2262px.jpg',
        'By Geoffrey A. Landis - Own work, CC BY-SA 4.0, https://commons.wikimedia.org/w/index.php?curid=89699170',
        'By Photo (c)2010 Derek Ramsey (Ram-Man) - Self-photographed, GFDL 1.2, https://commons.wikimedia.org/w/index.php?curid=9929327',
        'https://en.wikipedia.org/wiki/Mertensia_virginica',
        -74
    );

    INSERT INTO
    plant (
        common_Name,
        scientific_Name,
        description,
        is_Invasive,
        is_Native,
        color,
        image_FruitURL,
        image_LeafURL,
        image_Fruit_Source,
        image_Leaf_Source,
        wiki_Link,
        plantID
    )
VALUES
    (
        'Sharpwing Monkeyflower',
        'Mimulus Alatus',
        'Mimulus alatus, or the sharpwing monkeyflower, is a North American perennial with blue-violet flowers and green foliage. Blooming from June to September, it lacks a floral scent. This fast-growing herb has a short lifespan and thrives in wet to moist environments. Its bilabiate corolla, resembling a monkeys face, is accompanied by distinctive winged stems, which contribute to its common name.',
        false,
        true,
        'Pale Blue to Violet',
        'fruitImages/Mimulus_alatus,_2014-08-02,_Cranberry,_01.jpg',
        'leafImages/Mimulus_alatus_2.jpg',
        'By Cbaile19 - Own work, CC0, https://commons.wikimedia.org/w/index.php?curid=118883269',
        'By Eric in SF - Own work, CC BY-SA 3.0, https://commons.wikimedia.org/w/index.php?curid=21953503',
        'https://en.wikipedia.org/wiki/Mimulus_alatus',
        -75
    );

    INSERT INTO
    plant (
        common_Name,
        scientific_Name,
        description,
        is_Invasive,
        is_Native,
        color,
        image_FruitURL,
        image_LeafURL,
        image_Fruit_Source,
        image_Leaf_Source,
        wiki_Link,
        plantID
    )
VALUES
    (
        'Summer Phlox',
        'Phlox Paniculata',
        'Phlox paniculata is a tall, upright herbaceous perennial that can grow up to 120 cm in height and 100 cm in width. It features opposite, simple leaves on slender green stems. The fragrant flowers, measuring 1.5–2.5 cm in diameter, bloom from summer through fall. These flowers are arranged in panicles, which are characterized by branching stems. In its natural habitat, the flowers commonly appear in shades of pink or purple, with white being a rare occurrence.',
        false,
        true,
        'Pink to Purple',
        'fruitImages/Phlox_paniculata_Miss_Pepper4.JPG',
        'leafImages/Phlox_paniculata_Franz_Schubert_3zz.jpg',
        'By Uleli - Own work, CC BY 3.0, https://commons.wikimedia.org/w/index.php?curid=11267314',
        'By Photo by David J. Stang - source: David Stang. First published at ZipcodeZoo.com, CC BY-SA 4.0, https://commons.wikimedia.org/w/index.php?curid=61101146',
        'https://en.wikipedia.org/wiki/Phlox_paniculata',
        -76
    );

    INSERT INTO
    plant (
        common_Name,
        scientific_Name,
        description,
        is_Invasive,
        is_Native,
        color,
        image_FruitURL,
        image_LeafURL,
        image_Fruit_Source,
        image_Leaf_Source,
        wiki_Link,
        plantID
    )
VALUES
    (
        'Cutleaf Coneflower',
        'Rudbeckia Laciniata',
        'This robust herbaceous perennial can grow up to 3 meters tall and has broadly ovate, sometimes glaucous leaves that are deeply dissected. The alternate leaves consist of a petiole and a leaf blade, with the blade being simple or one to two-pinnate, often lobed three to eleven times. Leaf margins vary from smooth to roughly serrated. Lower leaves are larger (38 to 127 cm long, 25 to 64 cm wide) compared to the upper leaves (8 to 40 cm long, 3 to 20 cm wide). The plant forms long rhizomes for persistence, with bare stems and fibrous roots.',
        true,
        true,
        'Yellow and Green',
        'fruitImages/Rudbeckia_laciniata_by_SvdW.jpg',
        'leafImages/1280px-Rudbeckia_laciniata_humilis.jpg',
        'By Sander van der Wel from Netherlands - [282/365] So many flowers, CC BY-SA 2.0, https://commons.wikimedia.org/w/index.php?curid=34928696',
        'By Mason Brock (Masebrock) - Own work, Public Domain, https://commons.wikimedia.org/w/index.php?curid=66113542',
        'https://en.wikipedia.org/wiki/Rudbeckia_laciniata',
        -77
    );

    INSERT INTO
    plant (
        common_Name,
        scientific_Name,
        description,
        is_Invasive,
        is_Native,
        color,
        image_FruitURL,
        image_LeafURL,
        image_Fruit_Source,
        image_Leaf_Source,
        wiki_Link,
        plantID
    )
VALUES
    (
        'Cup Plant',
        'Silphium Perfoliatum',
        'Silphium perfoliatum, or cup plant, thrives in sandy moist areas, often near woodlands. It is found across several US states and parts of Canada. While threatened in Michigan, it is invasive in New York. The plant grows 1-2.5 meters tall with square stems, toothed leaves, and sunflower-like flowers in midsummer to autumn. These flowers have yellow ray florets and sterile disk florets, with unique structural features.',
        false,
        true,
        'Yellow',
        'fruitImages/Silphium_perfoliatum_(Slovenia).jpg',
        'leafImages/1280px-Cup_plant.jpg',
        'By Petar Milošević - Own work, CC BY-SA 4.0, https://commons.wikimedia.org/w/index.php?curid=43081711',
        'Public Domain, https://commons.wikimedia.org/w/index.php?curid=6383902',
        'https://en.wikipedia.org/wiki/Silphium_perfoliatum',
        -78
    );

    INSERT INTO
    plant (
        common_Name,
        scientific_Name,
        description,
        is_Invasive,
        is_Native,
        color,
        image_FruitURL,
        image_LeafURL,
        image_Fruit_Source,
        image_Leaf_Source,
        wiki_Link,
        plantID
    )
VALUES
    (
        'Canada Germander',
        'Teucrium Canadense',
        'American germander is a sturdy perennial, reaching up to 3 ft tall, with square stems, side branches, and basal rhizomes. Its leaves are opposite, ovate or lanceolate, coarsely toothed, and veined, growing up to 5 in long and 2.5 in wide. The raceme-like inflorescence, up to 8 in long, bears numerous whitish or pale lilac lipped flowers with large lower lips. Blooming from mid-June for about a month, the flowers lack scent and produce roundish yellowish-brown seeds.',
        false,
        true,
        'Pink',
        'fruitImages/Teucrium_canadense_.jpg',
        'leafImages/Teucrium_canadense_.jpg',
        'By Ayotte, Gilles, 1948- - Bibliothèque de l&#039;Université Laval, CC BY-SA 4.0, https://commons.wikimedia.org/w/index.php?curid=128042079',
        'By Salicyna - Own work, CC BY-SA 4.0, https://commons.wikimedia.org/w/index.php?curid=61811042',
        'https://en.wikipedia.org/wiki/Teucrium_canadense',
        -79
    );

    INSERT INTO
    plant (
        common_Name,
        scientific_Name,
        description,
        is_Invasive,
        is_Native,
        color,
        image_FruitURL,
        image_LeafURL,
        image_Fruit_Source,
        image_Leaf_Source,
        wiki_Link,
        plantID
    )
VALUES
    (
        'Tall Meadow-Rue',
        'Thalictrum Pubescens',
        'Thalictrum pubescens is a herbaceous plant with alternate, pinnately compound leaves, on hollow, green stems. The flowers are white, borne in spring and summer.',
        false,
        true,
        'White and Green',
        'fruitImages/ThalictrumPubescens.jpg',
        'leafImages/Thalictrum_pubescens_.jpg',
        'By Matt Osborne - Own work, CC BY-SA 4.0, https://commons.wikimedia.org/w/index.php?curid=84702065',
        'By Ayotte, Gilles, 1948- - Bibliothèque de l&#039;Université Laval, CC BY-SA 4.0, https://commons.wikimedia.org/w/index.php?curid=128042483',
        'https://en.wikipedia.org/wiki/Thalictrum_pubescens',
        -80
    );

    INSERT INTO
    plant (
        common_Name,
        scientific_Name,
        description,
        is_Invasive,
        is_Native,
        color,
        image_FruitURL,
        image_LeafURL,
        image_Fruit_Source,
        image_Leaf_Source,
        wiki_Link,
        plantID
    )
VALUES
    (
        'Striped Cream Violet',
        'Viola Striata',
        'Features creamy white flowers with a purple-veined lower petal. Flowers appear in spring (April-June in St. Louis) rising from the leaf axils of leafy stems growing 6-12" tall. Dark green, heart-shaped leaves with deeply cut stipules form a thick ground cover.',
        false,
        true,
        'Cream, Purple and Green',
        'fruitImages/Viola_striata.jpg',
        'leafImages/Cream_Violet.jpg',
        'By Mason Brock (Masebrock) - Own work, Public Domain, https://commons.wikimedia.org/w/index.php?curid=32659149',
        'By Katja Schulz from Washington, D. C., USA - Cream Violet, CC BY 2.0, https://commons.wikimedia.org/w/index.php?curid=49933150',
        'https://en.wikipedia.org/wiki/Viola_striata',
        -81
    );

    INSERT INTO
    plant (
        common_Name,
        scientific_Name,
        description,
        is_Invasive,
        is_Native,
        color,
        image_FruitURL,
        image_LeafURL,
        image_Fruit_Source,
        image_Leaf_Source,
        wiki_Link,
        plantID
    )
VALUES
    (
        'Grays Sedge',
        'Carex Grayi',
        'Carex grayi, commonly called gray sedge, has greenish yellow to brown seed heads that look like spiked clubs and are attractive in both fresh and dried flower arrangements. The fruits remain on the plant in winter, adding an interesting accent when the shadows reflect on snow.',
        false,
        true,
        'Lime Green',
        'fruitImages/Carex_grayi1.jpg',
        'leafImages/carex-grayi.jpg',
        'By Kurt Stüber [1] - caliban.mpiz-koeln.mpg.de/mavica/index.html part of www.biolib.de, CC BY-SA 3.0, https://commons.wikimedia.org/w/index.php?curid=2906',
        'By No machine-readable author provided. Zirpe~commonswiki assumed (based on copyright claims). - No machine-readable source provided. Own work assumed (based on copyright claims)., CC BY-SA 3.0, https://commons.wikimedia.org/w/index.php?curid=2261631',
        'https://en.wikipedia.org/wiki/Carex_grayi',
        -82
    );

    INSERT INTO
    plant (
        common_Name,
        scientific_Name,
        description,
        is_Invasive,
        is_Native,
        color,
        image_FruitURL,
        image_LeafURL,
        image_Fruit_Source,
        image_Leaf_Source,
        wiki_Link,
        plantID
    )
VALUES
    (
        'River Oats',
        'Chasmanthium Latifolium',
        'Chasmanthium latifolium is a warm-season, rhizomatous, perennial grass with stems about 1 m and 3 feet tall.The plant typically grows in wooded areas and riparian zones.',
        false,
        true,
        'Green to Brown',
        '',
        'leafImages/Chasmanthium_latifolium.jpg',
        '',
        'By Eric in SF - Own work, CC BY-SA 3.0, https://commons.wikimedia.org/w/index.php?curid=15705972',
        'https://en.wikipedia.org/wiki/Chasmanthium_latifolium',
        -83
    );

    INSERT INTO
    plant (
        common_Name,
        scientific_Name,
        description,
        is_Invasive,
        is_Native,
        color,
        image_FruitURL,
        image_LeafURL,
        image_Fruit_Source,
        image_Leaf_Source,
        wiki_Link,
        plantID
    )
VALUES
    (
        'Downy Wild Rye',
        'Elymus Villosus',
        'Elymus villosus is distinguished by its hairy sheaths, leaves, glumes and lemmas, glumes less than 1 mm wide, nodding spike with straight awns, and usually 1-flowered spikelets. There are 2 forms that are considered vars in some references, but are not recognized in Minnesota',
        false,
        true,
        'Green',
        '',
        'leafImages/Elymus_villosus.jpg',
        '',
        'Public Domain, https://commons.wikimedia.org/w/index.php?curid=807654',
        'https://en.wikipedia.org/wiki/Elymus_villosus',
        -84
    );

    INSERT INTO
    plant (
        common_Name,
        scientific_Name,
        description,
        is_Invasive,
        is_Native,
        color,
        image_FruitURL,
        image_LeafURL,
        image_Fruit_Source,
        image_Leaf_Source,
        wiki_Link,
        plantID
    )
VALUES
    (
        'Virginia Wildrye',
        'Elymus Virginicus',
        'Elymus virginicus is a clump forming cool season perennial grass. The tufted foliage is narrow and evergreen or semi-evergreen. Blades have a green or silver blue color and a waxy sheen. Bristly wheat-like spikey flower with hair like awns form in late spring.',
        false,
        true,
        'Green to Silver Blue',
        '',
        'leafImages/-Elymus_virginicus_.jpg',
        '',
        'By Matt Lavin from Bozeman, Montana, USA - Elymus virginicus, CC BY-SA 2.0, https://commons.wikimedia.org/w/index.php?curid=44493189',
        'https://en.wikipedia.org/wiki/Elymus_virginicus',
        -85
    );

    INSERT INTO
    plant (
        common_Name,
        scientific_Name,
        description,
        is_Invasive,
        is_Native,
        color,
        image_FruitURL,
        image_LeafURL,
        image_Fruit_Source,
        image_Leaf_Source,
        wiki_Link,
        plantID
    )
VALUES
    (
        'Alternate-Leaved Dogwood',
        'Cornus Alternifolia',
        'This is a small deciduous shrub or tree, up to 25 feet tall (occasionally 30 feet), with distinctive horizontal branches and flat-topped crown. Leaves are elliptic, 2–5 inches long, arranged alternately or in clusters, green on top and bluish and hairy underneath. Gray to brown bark becomes ridged with age. Cream-colored flowers in clusters 2–5 inches across have four petals. It bears blackish-blue berries.',
        false,
        true,
        'Yellowish-White',
        'fruitImages/Cornus_alternifolia_.jpg',
        'leafImages/Cornus_alternifolia_.jpg',
        'By Ayotte, Gilles, 1948- - Bibliothèque de l&#039;Université Laval, CC BY-SA 4.0, https://commons.wikimedia.org/w/index.php?curid=127825162',
        'By Ayotte, Gilles, 1948- - Bibliothèque de l&#039;Université Laval, CC BY-SA 4.0, https://commons.wikimedia.org/w/index.php?curid=127825121',
        'https://en.wikipedia.org/wiki/Cornus_alternifolia',
        -86
    );

    INSERT INTO
    plant (
        common_Name,
        scientific_Name,
        description,
        is_Invasive,
        is_Native,
        color,
        image_FruitURL,
        image_LeafURL,
        image_Fruit_Source,
        image_Leaf_Source,
        wiki_Link,
        plantID
    )
VALUES
    (
        'American Hazelnut',
        'Corylus Americana',
        'The American hazelnut is a medium to large shrub, occasionally tree-like, growing 2.5 to 5 meters in height with a spread of 3 to 4.5 meters. Its branches spread widely, forming a dense, spherical shape. It spreads through underground rhizomes and suckers. It flowers from very early to mid-spring, bearing hanging male catkins and small clusters of female flowers with red styles. Male catkins develop in fall and persist through winter. Edible nuts mature between July and October, each enclosed in two leaf-like bracts with jagged edges.',
        false,
        true,
        'Orange, Burgundy, and Yellow',
        'fruitImages/Corylus_americana_.jpg',
        'leafImages/Corylus_americana_kz2.jpg',
        'By Superior National Forest - Corylus americana 2-eheepUploaded by AlbertHerring, CC BY 2.0, https://commons.wikimedia.org/w/index.php?curid=29788559',
        'By Krzysztof Ziarnek, Kenraiz - Own work, CC BY-SA 4.0, https://commons.wikimedia.org/w/index.php?curid=53663058',
        'https://en.wikipedia.org/wiki/Corylus_americana',
        -87
    );

    INSERT INTO
    plant (
        common_Name,
        scientific_Name,
        description,
        is_Invasive,
        is_Native,
        color,
        image_FruitURL,
        image_LeafURL,
        image_Fruit_Source,
        image_Leaf_Source,
        wiki_Link,
        plantID
    )
VALUES
    (
        'Bush Honeysuckle',
        'Diervilla Lonicera',
        'The Northern bush honeysuckle is a deciduous shrub, 0.6 to 1.2 meters tall, with low branches, pale yellow flowers, and woody fruit. Leaves start green and turn dark red. It blooms from July to August, with mature seeds in September. Its flowers are initially female-dominant, adapted for pollination, and stigmas remain receptive post-flowering.',
        false,
        true,
        'Green',
        'fruitImages/Diervilla_lonicera_.jpg',
        'leafImages/Diervilla_lonicera_.jpg',
        'By Superior National Forest - Diervilla lonicera 2Uploaded by AlbertHerring, CC BY 2.0, https://commons.wikimedia.org/w/index.php?curid=29788569',
        'By Agnieszka Kwiecień, Nova - Own work, CC BY-SA 4.0, https://commons.wikimedia.org/w/index.php?curid=109720287',
        'https://en.wikipedia.org/wiki/Diervilla_lonicera',
        -88
    );

    INSERT INTO
    plant (
        common_Name,
        scientific_Name,
        description,
        is_Invasive,
        is_Native,
        color,
        image_FruitURL,
        image_LeafURL,
        image_Fruit_Source,
        image_Leaf_Source,
        wiki_Link,
        plantID
    )
VALUES
    (
        'Strawberry Bush',
        'Euonymus Americanus',
        'Euonymus americanus is a deciduous shrub, growing close to the ground at 2-3.5 meters high. It bears white and green flowers that develop into pink fruit capsules resembling strawberries, opening in fall to reveal large orange seeds.',
        false,
        true,
        'Green to Orange-Red',
        'fruitImages/Euonymus_americanus_fruit.jpgg',
        'leafImages/Euonymus_americanus_.jpg',
        'By Wasrts - Own work, CC BY-SA 4.0, https://commons.wikimedia.org/w/index.php?curid=95447111',
        'By Fritzflohrreynolds - Own work, CC BY-SA 3.0, https://commons.wikimedia.org/w/index.php?curid=31358231',
        'https://en.wikipedia.org/wiki/Euonymus_americanus',
        -89
    );

    INSERT INTO
    plant (
        common_Name,
        scientific_Name,
        description,
        is_Invasive,
        is_Native,
        color,
        image_FruitURL,
        image_LeafURL,
        image_Fruit_Source,
        image_Leaf_Source,
        wiki_Link,
        plantID
    )
VALUES
    (
        'American Wahoo',
        'Euonymus Atropurpureus',
        'This deciduous shrub can reach up to 8 meters in height, with gray bark and purplish-brown twigs. Its opposite elliptical leaves are green above, paler below, and serrated, turning bright red in autumn. The small bisexual flowers have greenish sepals, brown-purple petals, and are borne in small clusters. The smooth reddish-pink fruit is a four-lobed capsule containing orange seeds with fleshy red arils.',
        true,
        true,
        'Dark Green',
        'fruitImages/Euonymus_europaeus_.jpg',
        'leafImages/Euonymus_atropurpureus_0zz.jpg',
        'By R. A. Nonenmacher - Own work, CC BY-SA 4.0, https://commons.wikimedia.org/w/index.php?curid=36481767',
        'By Photo by David J. Stang - source: David Stang. First published at ZipcodeZoo.com, CC BY-SA 4.0, https://commons.wikimedia.org/w/index.php?curid=61002968',
        'https://en.wikipedia.org/wiki/Euonymus_atropurpureus',
        -90
    );

    INSERT INTO
    plant (
        common_Name,
        scientific_Name,
        description,
        is_Invasive,
        is_Native,
        color,
        image_FruitURL,
        image_LeafURL,
        image_Fruit_Source,
        image_Leaf_Source,
        wiki_Link,
        plantID
    )
VALUES
    (
        'Black Huckleberry',
        'Gaylussacia Baccata',
        'Gaylussacia baccata, resembling native blueberry plants, stands out due to its resin dots on leaf undersides that sparkle when backlit. This shrub grows up to 150 cm, forming colonies, with bell-shaped orange or red flowers in groups of 3–7. Its berries, either dark blue or rarely white, are sweet and edible. They are consumed raw or used in various culinary creations, including jellies, pancakes, and muffins.',
        false,
        true,
        'Yellow to Green',
        'fruitImages/Gaylussacia_baccata.jpg',
        'leafImages/Gaylussacia_baccata_flower.jpg',
        'By Rob Routledge, Sault College, Bugwood.org - http://www.forestryimages.org/search/action.cfm?q=Gaylussacia%20baccata, CC BY 3.0, https://commons.wikimedia.org/w/index.php?curid=31003854',
        'By Mason Brock (Masebrock) - Sky Bridge trail, Red River Gorge, Kentucky, Public Domain, https://commons.wikimedia.org/w/index.php?curid=10291655',
        'https://en.wikipedia.org/wiki/Gaylussacia_baccata',
        -91
    );

    INSERT INTO
    plant (
        common_Name,
        scientific_Name,
        description,
        is_Invasive,
        is_Native,
        color,
        image_FruitURL,
        image_LeafURL,
        image_Fruit_Source,
        image_Leaf_Source,
        wiki_Link,
        plantID
    )
VALUES
    (
        'Witch-Hazel',
        'Hamamelis Virginiana',
        'This small deciduous tree or shrub grows up to 6 meters, often with clustered stems at its base. Bark is light brown, leaves oval with wavy margins, turning yellow in fall. Pale to bright yellow flowers appear in clusters from mid to late fall. Woody capsules split explosively, ejecting shiny black seeds up to 10 meters away. It is distinguishable from similar species by its fall flowering.',
        false,
        true,
        'Yellow to Green',
        'fruitImages/Hamamelis_virginiana_15zz.jpg',
        'leafImages/Common_Witch_Hazel_Hamamelis_virginiana_.jpg',
        'By Photo by David J. Stang - source: David Stang. First published at ZipcodeZoo.com, CC BY-SA 4.0, https://commons.wikimedia.org/w/index.php?curid=61003612',
        'By Photo by and (c)2007 Derek Ramsey (Ram-Man) - Self-photographed, CC BY-SA 2.5, https://commons.wikimedia.org/w/index.php?curid=2079420',
        'https://en.wikipedia.org/wiki/Hamamelis_virginiana',
        -92
    );

    INSERT INTO
    plant (
        common_Name,
        scientific_Name,
        description,
        is_Invasive,
        is_Native,
        color,
        image_FruitURL,
        image_LeafURL,
        image_Fruit_Source,
        image_Leaf_Source,
        wiki_Link,
        plantID
    )
VALUES
    (
        'Wild Hydrangea',
        'Hydrangea Arborescens',
        'Smooth hydrangea is characterized by a corymb inflorescence up to 15 cm wide, often without showy sterile flowers. Blooms occur from May to July. The large, opposite, ovate leaves have serrated edges and a green appearance with subtle fine hairs on the lower surface. The stem bark peels off in layers of various colors, leading to the name "sevenbark." It produces small, ribbed brown capsules around 2 mm long as fruit, appearing in October and lasting through winter. The plant can spread quickly through stolons to create colonies.',
        false,
        true,
        'White to Green',
        'fruitImages/Hydrangea_arborescens_annabelle.JPG',
        'leafImages/Hydrangea_arborescens_.jpg',
        'By Giligone at English Wikipedia, CC BY-SA 3.0, https://commons.wikimedia.org/w/index.php?curid=37825570',
        'By Krzysztof Ziarnek, Kenraiz - Own work, CC BY-SA 4.0, https://commons.wikimedia.org/w/index.php?curid=124433165',
        'https://en.wikipedia.org/wiki/Hydrangea_arborescens',
        -93
    );

    INSERT INTO
    plant (
        common_Name,
        scientific_Name,
        description,
        is_Invasive,
        is_Native,
        color,
        image_FruitURL,
        image_LeafURL,
        image_Fruit_Source,
        image_Leaf_Source,
        wiki_Link,
        plantID
    )
VALUES
    (
        'St. Andrews Cross',
        'Hypericum Hypericoides',
        'Hypericum hypericoides, known as St. Andrews cross, is a flowering plant belonging to the St. Johns wort family. Native to the Southeastern United States, Mexico, Central America, and the Caribbean, it thrives in dry woods with acidic soil. This small shrub or shrublet features yellow four-petaled flowers. While some classify it into two subspecies, hypericoides and multicaule, the latter is often considered a distinct species.',
        false,
        true,
        'Yellow to Brown',
        '',
        'leafImages/Hypericum_hypericoides_Arkansas.jpg',
        '',
        'By Eric Hunt - Own work, CC BY-SA 4.0, https://commons.wikimedia.org/w/index.php?curid=80374873',
        'https://en.wikipedia.org/wiki/Hypericum_hypericoides',
        -94
    );

    INSERT INTO
    plant (
        common_Name,
        scientific_Name,
        description,
        is_Invasive,
        is_Native,
        color,
        image_FruitURL,
        image_LeafURL,
        image_Fruit_Source,
        image_Leaf_Source,
        wiki_Link,
        plantID
    )
VALUES
    (
        'Shrubby St. Johns Wort',
        'Hypericum Prolificum',
        'Hypericum prolificum is a shrub reaching up to 2 meters in height. It has elliptic to oblanceolate leaves measuring around 70 mm in length and 15 mm in width. The flowerheads contain 1 to 9 flowers, each about 15–30 mm in diameter, with 5 golden yellow petals and multiple stamens. The ovary typically consists of three parts, but some individuals may have up to five parts.',
        false,
        true,
        'Blue-Green to Yellow',
        'fruitImages/Hypericum_prolificum_Arkansas_2.jpg',
        'leafImages/Hypericum_prolificum.jpg',
        'By Eric Hunt - Own work, CC BY-SA 4.0, https://commons.wikimedia.org/w/index.php?curid=80374652',
        'By Leonora (Ellie) Enking from East Preston, United Kingdom - Hypericum prolificum, CC BY-SA 2.0, https://commons.wikimedia.org/w/index.php?curid=79871073',
        'https://en.wikipedia.org/wiki/Hypericum_prolificum',
        -95
    );