package pl.pospieszny.divingapp.service;

import pl.pospieszny.divingapp.entity.User;

import java.util.List;

public interface UserService {

    List<User> getAllUsers();

    void add(User user);

    User get(Long id);

    void delete(Long id);

    void update(User user);

}
