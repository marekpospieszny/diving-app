package pl.pospieszny.divingapp.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Modifying;
import org.springframework.data.jpa.repository.Query;
import pl.pospieszny.divingapp.entity.Diver;

import javax.transaction.Transactional;
import java.util.List;
import java.util.Optional;

public interface DiverRepository extends JpaRepository<Diver, Long> {

    Diver findDiverByEmail(String email);

    List<Diver> findDiversByIdIsNotAndActiveTrue(Long id);

    @Query(value = "select count(*) from divers where active = true", nativeQuery = true)
    int countAllDivers();

    List<Diver> findDiversByActiveTrue();

    @Modifying
    @Transactional
    @Query(value = "UPDATE divers SET active = false WHERE id = ?1", nativeQuery = true)
    void deactivate(Long id);
}
