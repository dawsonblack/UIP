DELETE FROM PLANT WHERE plantID < 0;
INSERT INTO plant (name, is_Invasive, is_Native, color, imageURL, image_Source, plantID) VALUES ('Red Raspberry', false, true, 'Red', 'static/plantImages/1620px-Raspberries_(Rubus_idaeus).jpg', 'By Ivar Leidus - Own work, CC BY-SA 4.0, https://commons.wikimedia.org/w/index.php?curid=96641162', -2);
