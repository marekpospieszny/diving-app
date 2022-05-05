package pl.pospieszny.divingapp.service;

import pl.pospieszny.divingapp.entity.Location;

import java.util.List;
import java.util.Optional;

public interface LocationService {

    List<Location> getAllLocations();

    void add(Location location);

    Optional<Location> get(Long id);

    void delete(Long id);

    void update(Location location);

    int countAllLocations();
}
