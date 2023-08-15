package org.wcci.usefulAndInvasivePlants.repositories;

import org.springframework.data.repository.CrudRepository;
import org.wcci.usefulAndInvasivePlants.entities.User;

public interface UserRepo extends CrudRepository<User, Long> {

}
