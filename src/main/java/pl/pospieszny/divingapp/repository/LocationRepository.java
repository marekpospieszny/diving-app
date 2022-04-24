package pl.pospieszny.divingapp.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import pl.pospieszny.divingapp.entity.Location;

public interface LocationRepository extends JpaRepository<Location, Long> {
}