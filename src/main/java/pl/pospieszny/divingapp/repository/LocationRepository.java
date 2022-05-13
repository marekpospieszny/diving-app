package pl.pospieszny.divingapp.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Modifying;
import org.springframework.data.jpa.repository.Query;
import pl.pospieszny.divingapp.entity.Diver;
import pl.pospieszny.divingapp.entity.Location;

import javax.transaction.Transactional;
import java.util.List;

public interface LocationRepository extends JpaRepository<Location, Long> {

    @Query(value = "select count(*) from locations WHERE active = true", nativeQuery = true)
    int countAllLocations();

    List<Location> findLocationsByActiveTrue();

    @Modifying
    @Transactional
    @Query(value = "UPDATE locations SET active = false WHERE id = ?1", nativeQuery = true)
    void deactivate(Long id);
}
