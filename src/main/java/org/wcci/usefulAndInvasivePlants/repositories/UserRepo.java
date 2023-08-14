package org.wcci.usefulAndInvasivePlants.repositories;

import org.wcci.usefulAndInvasivePlants.entities.User;

import java.util.List;

import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.CrudRepository;

public interface UserRepo extends CrudRepository<User, Long> {


    // @Query(name = "select * from user", nativeQuery = true)
    // public List<User> getUsers();


    // @Query(name = "select * from user where id=?1 and name=?2")
    // public User getUserByIdAndUserName(long id, String userName);


    // @Query(name = "select * from user where id=?1")
    // public User getUserById(long id);





}
