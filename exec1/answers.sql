select (users.id, users.name, cities.name) from users join cities on users."cityId" = "cities"."id";

select (t1.id, u1.name, u2.name, t1.message) from users as u1 join testimonials as t1 on t1."writerId" = "u1"."id" join users as u2 on u2."id"="t1"."recipientId";

select (users.id, users.name, courses.name, schools.name, educations."endDate") from educations join users on educations."userId" = "users"."id" join courses on educations."courseId" = "courses"."id" join schools on educations."schoolId"="schools"."id" where "users"."id"=30 and educations."status"='finished';

select (users.id, users.name, roles.name, companies.name, experiences."startDate") from experiences join users on experiences."userId"="users"."id" join roles on experiences."roleId"="roles"."id" join companies on experiences."companyId"="companies"."id" where "users"."id"=50 and experiences."endDate" is null;