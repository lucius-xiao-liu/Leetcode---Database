# Knowledge Point:
# Char_Length()/Charactor_length() VS Length()
# Char_length()/Charactor_length(): return the length of a string in characters, no matter what character it is.
# Length(): return the length of a string in bytes; i.e. if it is chinese character, it will be equal to 3 instead of 1 under the utf; OR equals to 2 under other forms.

select tweet_id
from (select tweet_id, char_length(content) as length from tweets) as t1
where length >15;

select tweet_id
from tweets
where char_length(content)>15;
