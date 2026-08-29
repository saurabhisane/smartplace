CREATE EXTENSION IF NOT EXISTS pgcrypto;

INSERT INTO auth.roles (id, name, description)
VALUES
    (gen_random_uuid(), 'STUDENT', 'Student user'),
    (gen_random_uuid(), 'RECRUITER', 'Company recruiter'),
    (gen_random_uuid(), 'PLACEMENT_OFFICER', 'Placement office user'),
    (gen_random_uuid(), 'FACULTY', 'Faculty or placement coordinator'),
    (gen_random_uuid(), 'ALUMNI', 'Alumni user'),
    (gen_random_uuid(), 'ADMIN', 'System administrator')
ON CONFLICT (name) DO NOTHING;
