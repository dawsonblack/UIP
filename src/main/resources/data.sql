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
        'Red Raspberry',
        'Rubus idaeus, commonly known as raspberries, are perennial plants with biennial stems that grow from a perennial root system. These plants produce edible red aggregate fruits consisting of numerous drupelets around a central core, with distinct growth patterns in their first and second years.',
        false,
        true,
        'Red',
        'plantImages/RaspberriesF.jpg',
        'plantImages/RaspberriesL.jpg',
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
        image_Fruit_Source,
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
        'plantImages/New-Jersey-Tea(F).jpg',
        'By unknown author, USFWS - United States Fish and Wildlife Service, Sherburne National Wildlife Refuge: Ceanothus americanus L., Public Domain, https://commons.wikimedia.org/w/index.php?curid=666534',
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
        image_Fruit_Source,
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
        'plantImages/Grey-Dogwood(F).jpg',
        'By Mitternacht90 at English Wikipedia - Mitternacht90 (talk) (Uploads), Public Domain, https://commons.wikimedia.org/w/index.php?curid=19873364',
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
        'plantImages/American-Hazelnut(F).jpg',
        'plantImages/American-Hazelnut(L).jpg',
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
        'plantImages/Fragrant-Sumac(F).jpg',
        'plantImages/Fragrant-Sumac(L).jpg',
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
        'plantImages/Tree-of-Heaven(F).jpg',
        'plantImages/Tree-of-Heaven(L).jfif',
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
        'plantImages/Garlic-Mustard(F).jpg',
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
        'plantImages/Porcelain-Berry(F).jfif',
        'plantImages\Porcelain-Berry(L).jpg',
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
        'plantImages/Mosquito-fern(L).jpg',
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
        'plantImages/Common-Barberry(F).jpg',
        'plantImages/Common-Barberry(L).jpg',
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
        'plantImages/Flowering-Rush(F).jpg',
        'plantImages/Flowering-Rush(L).jpg',
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
        'plantImages/Oriental-Bittersweet(F).jpg',
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
        'plantImages/Spotted-Knapweed(F).jpg',
        'plantImages/Spotted-Knapweed(L).jpg',
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
        'plantImages/Common-Teasel(F).jpg',
        'plantImages/Common-Teasel(L).jpg',
        'By MPF - Own work, CC BY-SA 3.0, https://commons.wikimedia.org/w/index.php?curid=294179',
        'By Blokenearexeter - Own work, CC0, https://commons.wikimedia.org/w/index.php?curid=20294085',
        'https://en.wikipedia.org/wiki/Dipsacus_fullonum',
        -14
    );