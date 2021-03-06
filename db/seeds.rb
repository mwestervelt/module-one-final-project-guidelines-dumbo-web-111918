
mariel = User.create(name: "mariel westervelt")
sam = User.create(name: "samuel prada")

water = Cause.create(name: "Water", charity: "charity: water", mission: %q(
charity: water is a non-profit organization bringing clean
and safe drinking water to people in developing countries.))
children = Cause.create(name: "Children", charity: "St. Jude's Foundation", mission: %q(
To find cures and means of prevention for childhood catastrophic
diseases through research and treatment.))
climate = Cause.create(name: "Climate Change", charity: "Nature Conservancy", mission: %q(
The mission of The Nature Conservancy is to conserve the
lands and waters on which all life depends.))
hunger = Cause.create(name: "Hunger", charity: "Feed the Children", mission: %q(
Providing hope and resources for those without life's essentials.))
humanitarian = Cause.create(name: "Humanitarian Aid", charity: "Doctors Without Borders", mission: %(
The mission of Doctors Without Borders/Médecins Sans Frontières(MSF)
is to provide impartial medical relief to the victims of war, disease,
and natural or man-made disaster, without regard to race, religion,
or political affiliation.))
health = Cause.create(name: "Health & Medicine", charity: "Red Cross", mission: %q(
The American Red Cross prevents and alleviates human suffering
in the face of emergencies by mobilizing the power of volunteers
and the generosity of donors.))
econ = Cause.create(name: "Economic Development", charity: "Goodwill Industries", mission: %q(
Goodwill Industries International works to enhance the dignity and
quality of life of individuals and families by strengthening communities,
eliminating barriers to opportunity, and helping people in need reach
their full potential through learning and the power of work.))
tech = Cause.create(name: "Technology", charity: "Free Software Foundation", mission: %q(
The FSF is a charity with a worldwide mission to advance
software freedom.))
women = Cause.create(name: "Women's Rights", charity: "Planned Parenthood", mission: %q(
To provide comprehensive reproductive and complementary health care
services in settings which preserve and protect the essential privacy
and rights of each individual; to advocate public policies which
guarantee these rights and ensure access to such services; to provide
educational programs which enhance understanding of individual and
societal implications of human sexuality; to promote research and
the advancement of technology in reproductive health care and
encourage understanding of their inherent bioethical, behavioral,
 and social implications.))
lgbt = Cause.create(name: "LGBTQ+ Rights", charity: "Human Rights Campaign", mission: %q(
The Human Rights Campaign Foundation improves the lives of lesbian,
gay, bisexual, transgender and queer (LGBTQ) people by working to
increase understanding and encourage the adoption of LGBTQ-inclusive
policies and practices.))
art = Cause.create(name: "Arts & Humanities", charity: "The ASCAP Foundation", mission: %q(
The ASCAP Foundation is dedicated to nurturing the music talent of
tomorrow, preserving the legacy of the past and sustaining the
creative incentive for today's creators through a variety of
educational, professional and humanitarian programs and activities
which serve the entire music community.))
education = Cause.create(name: "Education & Research", charity: "Teach For America", mission: %q(
Teach For America finds, develops, and supports a diverse network
of leaders who expand opportunity for children from classrooms,
schools, and every sector and field that shapes the broader systems
in which schools operate.))
animals = Cause.create(name: "Animals", charity: "Best Friends Animal Society", mission: %q(
The mission of Best Friends Animal Society is to bring about a
time when there are No More Homeless Pets. We do this by helping
end the killing in America's animal shelters through building
community programs and partnerships all across the nation.))

cause1 = UserCause.create(user: mariel, cause: water)
cause2 = UserCause.create(user: mariel, cause: climate)
cause3 = UserCause.create(user: sam, cause: water)
cause4 = UserCause.create(user: sam, cause: climate)
