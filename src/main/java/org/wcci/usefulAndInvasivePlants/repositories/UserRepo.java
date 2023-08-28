package org.wcci.usefulAndInvasivePlants.repositories;

import org.springframework.data.repository.CrudRepository;
import org.wcci.usefulAndInvasivePlants.entities.DBUser;

public interface UserRepo extends CrudRepository<DBUser, Long> {
    DBUser findByUsername(String username);
    DBUser findByEmail(String email);
    DBUser deleteByUsername(String username);
}
