package org.wcci.usefulAndInvasivePlants.repositories;

import org.springframework.data.repository.CrudRepository;
import org.wcci.usefulAndInvasivePlants.entities.Plant;

public interface PlantRepo extends CrudRepository<Plant, Long> {}
