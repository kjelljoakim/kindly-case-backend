PRAGMA foreign_keys=OFF;
BEGIN TRANSACTION;
CREATE TABLE greetings
(
    bot_replies text not null
);
INSERT INTO greetings VALUES('Greetings, human 🤖');
INSERT INTO greetings VALUES('Howdy 🤠');
INSERT INTO greetings VALUES('Salutations 🖖');
CREATE TABLE dialogues
(
    user_says   text not null,
    bot_replies text not null
);
INSERT INTO dialogues VALUES('tell me a joke','The cat with a tie 🐈');
INSERT INTO dialogues VALUES('tell me a joke','There are only 10 kinds of people in this world: those who know binary and those who don’t.');
INSERT INTO dialogues VALUES('hello','Hi!');
INSERT INTO dialogues VALUES('hi','Hello!');
CREATE TABLE fallbacks
(
    bot_replies text not null
);
INSERT INTO fallbacks VALUES('Sorry, I didn''t understand that 😕');
CREATE TABLE messages
(
    chat_id text not null ,
    time   int  not null,
    sender text not null,
    text   text not null
);
INSERT INTO messages VALUES('15eabb71-e7fe-40c7-9c6d-67833596ad20',1652123146,'BOT','Salutations 🖖');
INSERT INTO messages VALUES('15eabb71-e7fe-40c7-9c6d-67833596ad20',1652123150,'USER','asfsa');
INSERT INTO messages VALUES('15eabb71-e7fe-40c7-9c6d-67833596ad20',1652123150,'BOT','Sorry, I didn''t understand that 😕');
INSERT INTO messages VALUES('15eabb71-e7fe-40c7-9c6d-67833596ad20',1652123153,'USER','hej');
INSERT INTO messages VALUES('15eabb71-e7fe-40c7-9c6d-67833596ad20',1652123153,'BOT','Sorry, I didn''t understand that 😕');
INSERT INTO messages VALUES('15eabb71-e7fe-40c7-9c6d-67833596ad20',1652123155,'USER','hello');
INSERT INTO messages VALUES('15eabb71-e7fe-40c7-9c6d-67833596ad20',1652123155,'BOT','Hi!');
INSERT INTO messages VALUES('15eabb71-e7fe-40c7-9c6d-67833596ad20',1652123158,'USER','what up?');
INSERT INTO messages VALUES('15eabb71-e7fe-40c7-9c6d-67833596ad20',1652123158,'BOT','Sorry, I didn''t understand that 😕');
INSERT INTO messages VALUES('15eabb71-e7fe-40c7-9c6d-67833596ad20',1652123163,'USER','hi');
INSERT INTO messages VALUES('15eabb71-e7fe-40c7-9c6d-67833596ad20',1652123163,'BOT','Hello!');
INSERT INTO messages VALUES('15eabb71-e7fe-40c7-9c6d-67833596ad20',1652123167,'USER','hey');
INSERT INTO messages VALUES('15eabb71-e7fe-40c7-9c6d-67833596ad20',1652123167,'BOT','Sorry, I didn''t understand that 😕');
INSERT INTO messages VALUES('15eabb71-e7fe-40c7-9c6d-67833596ad20',1652123169,'USER','hey');
INSERT INTO messages VALUES('15eabb71-e7fe-40c7-9c6d-67833596ad20',1652123169,'BOT','Sorry, I didn''t understand that 😕');
INSERT INTO messages VALUES('15eabb71-e7fe-40c7-9c6d-67833596ad20',1652123172,'USER','hello');
INSERT INTO messages VALUES('15eabb71-e7fe-40c7-9c6d-67833596ad20',1652123172,'BOT','Hi!');
INSERT INTO messages VALUES('15eabb71-e7fe-40c7-9c6d-67833596ad20',1652123297,'USER','tell me a joke');
INSERT INTO messages VALUES('15eabb71-e7fe-40c7-9c6d-67833596ad20',1652123297,'BOT','The cat with a tie 🐈');
INSERT INTO messages VALUES('15eabb71-e7fe-40c7-9c6d-67833596ad20',1652127583,'USER','afasf');
INSERT INTO messages VALUES('15eabb71-e7fe-40c7-9c6d-67833596ad20',1652127583,'BOT','Sorry, I didn''t understand that 😕');
COMMIT;
