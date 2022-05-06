package pl.pospieszny.divingapp.service;

import org.springframework.context.annotation.Primary;
import org.springframework.stereotype.Service;
import pl.pospieszny.divingapp.entity.Message;
import pl.pospieszny.divingapp.repository.MessageRepository;

import java.util.List;

@Service
@Primary
public class JpaMessageService implements MessageService {

    private final MessageRepository messageRepository;

    public JpaMessageService(MessageRepository messageRepository) {
        this.messageRepository = messageRepository;
    }

    @Override
    public List<Message> getAllMessages() {
        return messageRepository.findAll();
    }

    @Override
    public void add(Message message) {
        messageRepository.save(message);
    }

    @Override
    public Message get(Long id) {
        return messageRepository.getById(id);
    }

    @Override
    public void delete(Long id) {
        messageRepository.deleteById(id);
    }

    @Override
    public void update(Message message) {
        messageRepository.save(message);
    }

    @Override
    public List<Message> getByUserId(Long id) {
        return messageRepository.findAllMessagesByUserId(id);
    }
}
