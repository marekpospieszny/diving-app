package pl.pospieszny.divingapp.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import pl.pospieszny.divingapp.entity.Dive;

public interface DiveRepository extends JpaRepository<Dive, Long> {
}
