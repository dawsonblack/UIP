DELETE FROM PLANT
WHERE
    plantID < 0;

INSERT INTO
    plant (
        name,
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
        name,
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
        name,
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
        name,
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
        'Corylus americana, is a medium to large shrub, growing 2.5-5 m (8-16 ft) tall with a spreading crown. It blooms in early to mid-spring, featuring hanging male catkins and clusters of tiny female flowers. It produces edible nuts enclosed in leaf-like bracts that mature from July to October.',
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
        name,
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
        name,
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
        'Ailanthus altissima, Ailanthus altissima, is a medium-sized deciduous tree reaching 17-27 m (60-90 ft) in height with smooth gray bark and pinnately compound leaves. It produces yellowish-green to reddish flowers in large panicles and bears large, twisted samaras that aid in wind and water dispersal.',
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
        name,
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
        'Alliaria petiolata, is an herbaceous biennial plant with triangular to heart-shaped leaves, producing clusters of small white flowers with an unpleasant aroma in spring and summer. It develops slender, erect seed capsules containing shiny black seeds. The plant can self-fertilize or be cross-pollinated by insects and is associated with various herbivores and fungi.',
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
        name,
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
        'Ampelopsis glandulosa, is known as Porcelain berry, is a deciduous climbing vine with palmately lobed leaves, opposite flowers, and tendrils that reach 4-6m (15-20 ft) in height. Its small green-white flowers form in umbels opposite the leaves, giving rise to multicolored berries in late summer and fall, which are dispersed by birds.',
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
        name,
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
        'Azolla pinnata, is an aquatic fern native to Africa, Asia, and parts of Australia. It features small, velvety leaves that float on the waters surface, forming dense mats. It is known for its nitrogen-fixing ability, invasive tendencies, and its use in rice paddies for fertilizer and pollution absorption.',
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
        name,
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
        name,
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
        name,
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
        'The plants defining feature is its thin, spindly vines with silver to reddish-brown bark, ranging from 1 to over 10 cm in diameter. These vines can encircle trees up to 40 feet high, leading to strangulation or branch breakage, and the plant bears toxic round leaves, small green flowers, and distinctive red seeds within yellow pods.',
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
        name,
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
        name,
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
        name,
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
        'Dipsacus laciniatus, known as cutleaf teasel, is a perennial herb native to Europe and Asia, now invasive in North America. It features hollow, prickly stems, oppositely arranged leaves forming cups, and egg-shaped flower heads containing up to 1500 flowers. The plant is monocarpic, reproducing only by seed, and poses invasive threats in various habitats due to a lack of native predators.',
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
        name,
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
        name,
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
        name,
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
        name,
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
        name,
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
        name,
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
        name,
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
