package pl.pospieszny.divingapp.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import pl.pospieszny.divingapp.entity.Diver;

public interface DiverRepository extends JpaRepository<Diver, Long> {
}
