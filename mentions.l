@OrderBy(Mentions, "mentions desc");
@Limit(Mentions, 10);
Mentions(person:, mentions? += 1) distinct :-
  gdelt-bq.gdeltv2.gkg(persons:, date:),
  Substr(ToString(date), 0, 4) == "2020",
  the_persons == Split(persons, ";"),
  person in the_persons;
