package pl.pospieszny.divingapp.service;

import pl.pospieszny.divingapp.entity.Diver;

import java.util.List;
import java.util.Optional;

public interface DiverService {

    List<Diver> getAllDivers();

    void add(Diver diver);

    Optional<Diver> get(Long id);

    void delete(Long id);

    void update(Diver diver);

    Diver getByEmail(String email);

    List<Diver> getAllDiversExcludingIndicatedId(Long id);

}
