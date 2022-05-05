package pl.pospieszny.divingapp.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import pl.pospieszny.divingapp.entity.Location;

public interface LocationRepository extends JpaRepository<Location, Long> {

    @Query(value = "select count(*) from locations", nativeQuery = true)
    int countAllLocations();
}
