Domain Models // 

Cat -- has_many trades, has_many users through trades, has_many notes, has_many users through notes 
Trade - belongs to user, belongs to cat
User -- has many cats. has many trades. has many cats, through trades. has many notes

Notes -- belongs to user, belongs to cat

====

A user should be able to create a new cat

A user should be able to see all cats or just the cats created by another specific user 

A user should be able to download a cat by 'trading' for it -- (their credit count goes down, and the owner's credit count goes up) 

====