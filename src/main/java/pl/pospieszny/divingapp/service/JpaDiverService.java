package pl.pospieszny.divingapp.service;

import org.springframework.context.annotation.Primary;
import org.springframework.stereotype.Service;
import pl.pospieszny.divingapp.entity.Diver;
import pl.pospieszny.divingapp.repository.DiverRepository;

import java.util.List;
import java.util.Optional;

@Service
@Primary
public class JpaDiverService implements DiverService{

    private final DiverRepository diverRepository;

    public JpaDiverService(DiverRepository diverRepository) {
        this.diverRepository = diverRepository;
    }

    @Override
    public List<Diver> getAllDivers() {
        return diverRepository.findAll();
    }

    @Override
    public void add(Diver diver) {
        diverRepository.save(diver);
    }

    @Override
    public Optional<Diver> get(Long id) {
        return diverRepository.findById(id);
    }

    @Override
    public void delete(Long id) {
        diverRepository.deleteById(id);
    }

    @Override
    public void update(Diver diver) {
        diverRepository.save(diver);
    }
}