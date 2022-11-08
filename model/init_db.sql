-- (Re)create the table

DROP TABLE IF EXISTS notes;
CREATE TABLE notes (
    id INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
    text VARCHAR(500) NOT NULL,
    date VARCHAR(100)
    );

INSERT INTO notes (text, date)
VALUES
    ("Hello there! I miss you!", "2022-08-01"),
    ("Testing yo yo yo... 
    You alive?", "2022-09-11");

DROP TABLE IF EXISTS files;
CREATE TABLE files (
  id INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
  filename VARCHAR(500)
);


DROP TABLE IF EXISTS vote;
CREATE TABLE vote (
  id INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
  yes SMALLINT,
  no SMALLINT
);

INSERT INTO vote (yes, no)
VALUES (5, 1);

DROP TABLE IF EXISTS countries;
CREATE TABLE countries (
  id INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
  name VARCHAR (1000)
);

INSERT INTO countries (name)
VALUES ("United States"), ("Canada"), ("Afghanistan"), ("Albania"), ("Algeria"), ("American Samoa"), ("Andorra"), ("Angola"), ("Anguilla"), ("Antarctica"), ("Antigua and/or Barbuda"), ("Argentina"), ("Armenia"), ("Aruba"), ("Australia"), ("Austria"), ("Azerbaijan"), ("Bahamas"), ("Bahrain"), ("Bangladesh"), ("Barbados"), ("Belarus"), ("Belgium"), ("Belize"), ("Benin"), ("Bermuda"), ("Bhutan"), ("Bolivia"), ("Bosnia and Herzegovina"), ("Botswana"), ("Bouvet Island"), ("Brazil"), ("British Indian Ocean Territory"), ("Brunei Darussalam"), ("Bulgaria"), ("Burkina Faso"), ("Burundi"), ("Cambodia"), ("Cameroon"), ("Cape Verde"), ("Cayman Islands"), ("Central African Republic"), ("Chad"), ("Chile"), ("China"), ("Christmas Island"), ("Cocos (Keeling) Islands"), ("Colombia"), ("Comoros"), ("Congo"), ("Cook Islands"), ("Costa Rica"), ("Croatia (Hrvatska)"), ("Cuba"), ("Cyprus"), ("Czech Republic"), ("Denmark"), ("Djibouti"), ("Dominica"), ("Dominican Republic"), ("East Timor"), ("Ecudaor"), ("Egypt"), ("El Salvador"), ("Equatorial Guinea"), ("Eritrea"), ("Estonia"), ("Ethiopia"), ("Falkland Islands (Malvinas)"), ("Faroe Islands"), ("Fiji"), ("Finland"), ("France"), ("French Guiana"),( "French Polynesia"), ("French Southern Territories"), ("Gabon"), ("Gambia"), ("Georgia"), ("Germany"), ("Ghana"), ("Gibraltar"), ("Greece"), ("Greenland"), ("Grenada"), ("Guadeloupe"), ("Guam"), ("Guatemala"), ("Guinea"), ("Guinea-Bissau"), ("Guyana"), ("Haiti"), ("Heard and Mc Donald Islands"), ("Honduras"), ("Hong Kong"), ("Hungary"), ("Iceland"), ("India"), ("Indonesia"), ("Iran"), ("Iraq"), ("Ireland"), ("Israel"), ("Italy"), ("Ivory Coast"), ("Jamaica"), ("Japan"), ("Jordan"), ("Kazakhstan"), ("Kenya"), ("Kiribati"), ("Kosovo"), ("Kuwait"), ("Kyrgyzstan"), ("Lao People's Democratic Republic"), ("Latvia"), ("Lebanon"), ("Lesotho"), ("Liberia"), ("Libya"), ("Liechtenstein"), ("Lithuania"), ("Luxembourg"), ("Macau"), ("Macedonia"), ("Madagascar"), ("Malawi"), ("Malaysia"), ("Maldives"), ("Mali"), ("Malta"), ("Marshall Islands"), ("Martinique"), ("Mauritania"), ("Mauritius"), ("Mayotte"), ("Mexico"), ("Micronesia"), ("Moldova"), ("Monaco"), ("Mongolia"), ("Montserrat"), ("Morocco"), ("Mozambique"), ("Myanmar"), ("Namibia"), ("Nauru"), ("Nepal"), ("Netherlands"), ("Netherlands Antilles"), ("New Caledonia"), ("New Zealand"), ("Nicaragua"), ("Niger"), ("Nigeria"), ("Niue"), ("Norfork Island"), ("Northern Mariana Islands"),("North Korea"), ("Norway"), ("Oman"), ("Pakistan"), ("Palau"), ("Palestine"), ("Panama"), ("Papua New Guinea"), ("Paraguay"), ("Peru"), ("Philippines"), ("Pitcairn"), ("Poland"), ("Portugal"), ("Puerto Rico"), ("Qatar"), ("Reunion"), ("Romania"), ("Russian Federation"), ("Rwanda"), ("Saint Kitts and Nevis"), ("Saint Lucia"), ("Saint Vincent and the Grenadines"), ("Samoa"), ("San Marino"), ("Sao Tome and Principe"), ("Saudi Arabia"), ("Senegal"), ("Seychelles"), ("Sierra Leone"), ("Singapore"), ("Slovakia"), ("Slovenia"), ("Solomon Islands"), ("Somalia"), ("South Africa"), ("South Georgia South Sandwich Islands"), ("South Korea"), ("South Sudan"), ("Spain"), ("Sri Lanka"), ("St. Helena"), ("St. Pierre and Miquelon"), ("Sudan"), ("Suriname"),( "Svalbarn and Jan Mayen Islands"), ("Swaziland"), ("Sweden"), ("Switzerland"), ("Syria"), ("Taiwan"), ("Tajikistan"), ("Tanzania"), ("Thailand"), ("Togo"), ("Tokelau"), ("Tonga"), ("Trinidad and Tobago"), ("Tunisia"), ("Turkey"), ("Turkmenistan"), ("Turks and Caicos Islands"), ("Tuvalu"), ("Uganda"), ("Ukraine"), ("United Arab Emirates"), ("United Kingdom"), ("United States minor outlying islands"), ("Uruguay"), ("Uzbekistan"), ("Vanuatu"), ("Vatican City State"), ("Venezuela"), ("Vietnam"), ("Virigan Islands (British)"), ("Virgin Islands (U.S.)"), ("Wallis and Futuna Islands"), ("Western Sahara"), ("Yemen"), ("Yugoslavia"), ("Zaire"), ("Zambia"), ("Zimbabwe");

-- INSERT INTO countries (name)
-- VALUES ("United States", "Canada", "Afghanistan", "Albania", "Algeria", "American Samoa", "Andorra", "Angola", "Anguilla", "Antarctica", "Antigua and/or Barbuda", "Argentina", "Armenia", "Aruba", "Australia", "Austria", "Azerbaijan", "Bahamas", "Bahrain", "Bangladesh", "Barbados", "Belarus", "Belgium", "Belize", "Benin", "Bermuda", "Bhutan", "Bolivia", "Bosnia and Herzegovina", "Botswana", "Bouvet Island", "Brazil", "British Indian Ocean Territory", "Brunei Darussalam", "Bulgaria", "Burkina Faso", "Burundi", "Cambodia", "Cameroon", "Cape Verde", "Cayman Islands", "Central African Republic", "Chad", "Chile", "China", "Christmas Island", "Cocos (Keeling) Islands", "Colombia", "Comoros", "Congo", "Cook Islands", "Costa Rica", "Croatia (Hrvatska)", "Cuba", "Cyprus", "Czech Republic", "Denmark", "Djibouti", "Dominica", "Dominican Republic", "East Timor", "Ecudaor", "Egypt", "El Salvador", "Equatorial Guinea", "Eritrea", "Estonia", "Ethiopia", "Falkland Islands (Malvinas)", "Faroe Islands", "Fiji", "Finland", "France", "France, Metropolitan", "French Guiana", "French Polynesia", "French Southern Territories", "Gabon", "Gambia", "Georgia", "Germany", "Ghana", "Gibraltar", "Greece", "Greenland", "Grenada", "Guadeloupe", "Guam", "Guatemala", "Guinea", "Guinea-Bissau", "Guyana", "Haiti", "Heard and Mc Donald Islands", "Honduras", "Hong Kong", "Hungary", "Iceland", "India", "Indonesia", "Iran", "Iraq", "Ireland", "Israel", "Italy", "Ivory Coast", "Jamaica", "Japan", "Jordan", "Kazakhstan", "Kenya", "Kiribati", "Korea, Democratic People's Republic of", "Korea, Republic of", "Kosovo", "Kuwait", "Kyrgyzstan", "Lao People's Democratic Republic", "Latvia", "Lebanon", "Lesotho", "Liberia", "Libya", "Liechtenstein", "Lithuania", "Luxembourg", "Macau", "Macedonia", "Madagascar", "Malawi", "Malaysia", "Maldives", "Mali", "Malta", "Marshall Islands", "Martinique", "Mauritania", "Mauritius", "Mayotte", "Mexico", "Micronesia, Federated States of", "Moldova, Republic of", "Monaco", "Mongolia", "Montserrat", "Morocco", "Mozambique", "Myanmar", "Namibia", "Nauru", "Nepal", "Netherlands", "Netherlands Antilles", "New Caledonia", "New Zealand", "Nicaragua", "Niger", "Nigeria", "Niue", "Norfork Island", "Northern Mariana Islands", "Norway", "Oman", "Pakistan", "Palau","Palestine",  "Panama", "Papua New Guinea", "Paraguay", "Peru", "Philippines", "Pitcairn", "Poland", "Portugal", "Puerto Rico", "Qatar", "Reunion", "Romania", "Russian Federation", "Rwanda", "Saint Kitts and Nevis", "Saint Lucia", "Saint Vincent and the Grenadines", "Samoa", "San Marino", "Sao Tome and Principe", "Saudi Arabia", "Senegal", "Seychelles", "Sierra Leone", "Singapore", "Slovakia", "Slovenia", "Solomon Islands", "Somalia", "South Africa", "South Georgia South Sandwich Islands", "South Sudan", "Spain", "Sri Lanka", "St. Helena", "St. Pierre and Miquelon", "Sudan", "Suriname", "Svalbarn and Jan Mayen Islands", "Swaziland", "Sweden", "Switzerland", "Syria", "Taiwan", "Tajikistan", "Tanzania", "Thailand", "Togo", "Tokelau", "Tonga", "Trinidad and Tobago", "Tunisia", "Turkey", "Turkmenistan", "Turks and Caicos Islands", "Tuvalu", "Uganda", "Ukraine", "United Arab Emirates", "United Kingdom", "United States minor outlying islands", "Uruguay", "Uzbekistan", "Vanuatu", "Vatican City State", "Venezuela", "Vietnam", "Virigan Islands (British)", "Virgin Islands (U.S.)", "Wallis and Futuna Islands", "Western Sahara", "Yemen", "Yugoslavia", "Zaire", "Zambia", "Zimbabwe")




-- database for city 