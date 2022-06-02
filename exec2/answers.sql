select count(experiences."endDate") as currentExperiences from experiences; -- q1

select users.id, count(edc.status) as educations from educations edc join users on edc."userId" = "users"."id" where edc."status" = 'finished' group by "users"."id"; -- q2

select users.name as writer, count(testimonials."message") as testimonialCount from testimonials join users on testimonials."writerId"="users"."id" where "users"."id"=435 group by "users"."name"; -- q3

select jobs.salary as maximumSalary, roles.name as role from jobs join roles on jobs."roleId"="roles"."id" where jobs."active"=true order by maximumSalary asc; -- q4