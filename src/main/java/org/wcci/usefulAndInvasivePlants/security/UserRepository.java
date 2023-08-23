package org.wcci.usefulAndInvasivePlants.security;

import org.springframework.data.repository.CrudRepository;

public interface UserRepository extends CrudRepository<DBUser, Long> {
    DBUser findByUsername(String username);
}