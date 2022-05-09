package pl.pospieszny.divingapp.service;

import org.springframework.stereotype.Service;
import pl.pospieszny.divingapp.entity.Dive;
import pl.pospieszny.divingapp.repository.DiveRepository;

import java.util.List;
import java.util.Optional;

@Service
public class JpaDiveService implements DiveService{

    private final DiveRepository diveRepository;

    public JpaDiveService(DiveRepository diveRepository) {
        this.diveRepository = diveRepository;
    }

    @Override
    public List<Dive> getAllDives() {
        return diveRepository.findAll();
    }

    @Override
    public void add(Dive dive) {
        diveRepository.save(dive);
    }

    @Override
    public Optional<Dive> get(Long id) {
        return diveRepository.findById(id);
    }

    @Override
    public void delete(Long id) {
        diveRepository.deleteById(id);
    }

    @Override
    public void update(Dive dive) {
        diveRepository.save(dive);
    }

    @Override
    public List<Dive> getByDiverId(Long id) {
        return diveRepository.findAllDivesByDiverId(id);
    }

    @Override
    public int countDivesByDiverId(Long id) {
        return diveRepository.countDivesByDiverId(id);
    }

    @Override
    public int getTotalUnderwaterTimeByDiverId(Long id) {
        return diveRepository.getTotalUnderwaterTimeByDiverId(id);
    }

    @Override
    public double getMaxDepthReachedByDiverId(Long id) {
        return diveRepository.getMaxDepthReachedByDiverId(id);
    }

    @Override
    public int getAvgDivesRatingByDiverId(Long id) {
        return diveRepository.getAvgDivesRatingByDiverId(id);
    }

    @Override
    public int countAllDives() {
        return diveRepository.countAllDives();
    }

    @Override
    public int getTotalUnderwaterTime() {
        return diveRepository.getTotalUnderwaterTime();
    }
}
