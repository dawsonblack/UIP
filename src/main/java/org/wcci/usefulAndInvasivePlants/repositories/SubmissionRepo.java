package org.wcci.usefulAndInvasivePlants.repositories;

import org.springframework.data.repository.CrudRepository;
import org.wcci.usefulAndInvasivePlants.entities.Submission;

public interface SubmissionRepo extends CrudRepository<Submission, Long> {

}