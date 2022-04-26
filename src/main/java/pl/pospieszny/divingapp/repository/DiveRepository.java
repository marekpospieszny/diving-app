package pl.pospieszny.divingapp.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import pl.pospieszny.divingapp.entity.Dive;

import java.util.List;

public interface DiveRepository extends JpaRepository<Dive, Long> {

    @Query("select d from Dive d where d.diver.id = ?1 or d.partner.id = ?1")
    List<Dive> findAllDivesByDiverId(Long id);
}
