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

    List<Dive> getByDiverId(Long id);

    int countDivesByDiverId(Long id);

    Integer getTotalUnderwaterTimeByDiverId(Long id);

    Double getMaxDepthReachedByDiverId(Long id);

    Integer getAvgDivesRatingByDiverId(Long id);

    Integer countAllDives();

    Integer getTotalUnderwaterTime();
}
