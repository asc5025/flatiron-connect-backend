Flatiron Connect

As a user, I should be able to:

1. See a list of all users within the Flatiron network
2. Search for users by industry or company
3. Message another user with real-time chat (Web Sockets)
4. User that can create and manage Flatiron events
5. Look through events and register for them
6. Look through events' attendees and message them directly
7. User authentication
8. LinkedIn OAuth
9. Edit profile details

Technologies:
[x] RoR
  [ ] ActionCable (3,6)
  [ ] BCrypt (3,4,5,6,7)
  [ ] Serializer (Active Model Serializers OR Fast JSON Serializer) (4,5,6)
[x] React
  [ ] Redux (1,2,3,4,5,6,7)
  [ ] Redux Form (2,3,4,5,6,7)
  [ ] React Router (1,2,3,4,5,6,7)
  [ ] ActionCable Provider (3,6)
[ ] LinkedIn OAuth (7,8)

Mod 4:
1,2,7,9
  Stretch: 8

Mod 5 MVP:
3, 8 (if not already done)

Mod 5 Final:
4,5,6


Domain Model:
User -< Jobs >- Company >- Industry
