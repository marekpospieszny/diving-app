package pl.pospieszny.divingapp.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import pl.pospieszny.divingapp.entity.Diver;

import java.util.List;
import java.util.Optional;

public interface DiverRepository extends JpaRepository<Diver, Long> {

        Diver findDiverByEmail(String email);

        List<Diver> findDiversByIdIsNot(Long id);

        @Query(value = "select count(*) from divers", nativeQuery = true)
        int countAllDivers();
}
