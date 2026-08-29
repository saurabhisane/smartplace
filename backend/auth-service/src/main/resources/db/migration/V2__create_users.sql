CREATE TABLE auth.users (
    id UUID PRIMARY KEY,

    email VARCHAR(255) NOT NULL UNIQUE,

    auth_provider VARCHAR(50) NOT NULL,
    auth_provider_user_id VARCHAR(255) NOT NULL UNIQUE,

    status VARCHAR(30) NOT NULL DEFAULT 'ACTIVE',

    email_verified BOOLEAN NOT NULL DEFAULT FALSE,

    created_at TIMESTAMPTZ NOT NULL DEFAULT CURRENT_TIMESTAMP,
    updated_at TIMESTAMPTZ NOT NULL DEFAULT CURRENT_TIMESTAMP
);

CREATE INDEX idx_users_email
    ON auth.users(email);

CREATE INDEX idx_users_auth_provider_user_id
    ON auth.users(auth_provider_user_id);
