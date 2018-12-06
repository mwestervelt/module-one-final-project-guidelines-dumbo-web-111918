
mariel = User.create(name: "mariel westervelt")
sam = User.create(name: "samuel prada")

water = Cause.create(name: "water")
children = Cause.create(name: "children")
climate = Cause.create(name: "climate change")
hunger = Cause.create(name: "hunger")
humanitarian = Cause.create(name: "humanitarian issues")
health = Cause.create(name: "medicine or health")
econ = Cause.create(name: "economic development")
tech = Cause.create(name: "technology")
women = Cause.create(name: "women's issues")
lgbt = Cause.create(name: "lgbt issues")

cause1 = UserCause.create(user: mariel, cause: water)
cause2 = UserCause.create(user: mariel, cause: climate)
cause3 = UserCause.create(user: sam, cause: water)
cause4 = UserCause.create(user: sam, cause: climate)
