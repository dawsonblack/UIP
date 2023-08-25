package org.wcci.usefulAndInvasivePlants.security;

import org.springframework.data.repository.CrudRepository;
import org.wcci.usefulAndInvasivePlants.entities.DBUser;

public interface UserRepository extends CrudRepository<DBUser, Long> {
    //DBUser findByUsername(String username);
}