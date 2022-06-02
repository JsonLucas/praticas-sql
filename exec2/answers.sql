select count(experiences."endDate") as currentExperiences from experiences; -- q1

select ("users"."id", count(edc.status)) from educations edc join users on edc."userId" = "users"."id" where edc."status" = 'finished' group by "users"."id"; -- q2

select (users."name", count(testimonials."message")) from testimonials join users on testimonials."writerId"="users"."id" where "users"."id"=435 group by "users"."name"; -- q3

select (jobs."salary", roles.name) from jobs join roles on jobs."roleId"="roles"."id" where jobs."active"=true order by jobs."salary" desc; -- q4