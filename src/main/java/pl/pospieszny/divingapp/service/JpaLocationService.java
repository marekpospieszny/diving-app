package pl.pospieszny.divingapp.service;

import org.springframework.context.annotation.Primary;
import org.springframework.stereotype.Service;
import pl.pospieszny.divingapp.entity.Location;
import pl.pospieszny.divingapp.repository.LocationRepository;

import java.util.List;
import java.util.Optional;

@Service
@Primary
public class JpaLocationService implements LocationService{

    private final LocationRepository locationRepository;

    public JpaLocationService(LocationRepository locationRepository) {
        this.locationRepository = locationRepository;
    }

    @Override
    public List<Location> getAllLocations() {
        return locationRepository.findAll();
    }

    @Override
    public void add(Location location) {
        locationRepository.save(location);
    }

    @Override
    public Optional<Location> get(Long id) {
        return locationRepository.findById(id);
    }

    @Override
    public void delete(Long id) {
        locationRepository.deleteById(id);
    }

    @Override
    public void update(Location location) {
        locationRepository.save(location);
    }
}