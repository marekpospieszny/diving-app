package pl.pospieszny.divingapp.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import pl.pospieszny.divingapp.entity.Dive;

import java.lang.annotation.Native;
import java.util.List;

public interface DiveRepository extends JpaRepository<Dive, Long> {

    @Query("select d from Dive d where d.diver.id = ?1 or d.partner.id = ?1")
    List<Dive> findAllDivesByDiverId(Long id);

    @Query(value = "select count(id) from dives where diver_id = ?1 or partner_id = ?1", nativeQuery = true)
    int countDivesByDiverId(Long id);

    @Query(value = "select sum(underwater_time_in_minutes) from dives where diver_id = ?1 or partner_id = ?1", nativeQuery = true)
    int getTotalUnderwaterTimeByDiverId(Long id);

    @Query(value = "select max(max_depth) from dives where diver_id = ?1 or partner_id = ?1", nativeQuery = true)
    double getMaxDepthReachedByDiverId(Long id);

    @Query(value = "select avg(rating) from dives where diver_id = ?1 or partner_id = ?1", nativeQuery = true)
    int getAvgDivesRatingByDiverId(Long id);

    @Query(value = "select count(*) from dives", nativeQuery = true)
    int countAllDives();

    @Query(value = "select sum(underwater_time_in_minutes) from dives", nativeQuery = true)
    int getTotalUnderwaterTime();


}
