package pl.pospieszny.divingapp.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import pl.pospieszny.divingapp.entity.Diver;

import java.util.List;
import java.util.Optional;

public interface DiverRepository extends JpaRepository<Diver, Long> {

        Diver findDiverByEmail(String email);

        List<Diver> findDiversByIdIsNot(Long id);
}
