package pl.pospieszny.divingapp.service;

import pl.pospieszny.divingapp.entity.Dive;

import java.util.List;
import java.util.Optional;

public interface DiveService{

    List<Dive> getAllDives();

    void add(Dive dive);

    Optional<Dive> get(Long id);

    void delete(Long id);

    void update(Dive dive);
}
