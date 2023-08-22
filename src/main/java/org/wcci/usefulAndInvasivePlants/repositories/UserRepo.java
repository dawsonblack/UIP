package org.wcci.usefulAndInvasivePlants.repositories;

import org.h2.schema.UserAggregate;
import org.springframework.data.repository.CrudRepository;
import org.wcci.usefulAndInvasivePlants.entities.User;

public interface UserRepo extends CrudRepository<User, Long> {
    UserAggregate findByUsername(String username);
}
