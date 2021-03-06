package pl.pospieszny.divingapp.entity;

import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;

import javax.persistence.*;
import javax.validation.constraints.NotBlank;
import javax.validation.constraints.Size;
import java.time.LocalDateTime;

@Entity
@Table(name = "messages")
@Getter
@Setter
@NoArgsConstructor
@AllArgsConstructor
public class Message {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long id;

    @NotBlank(message = "{messageSubject.notBlank.message}")
    @Size(max = 50)
    private String subject;

    @NotBlank(message = "{messageText.notBlank.message}")
    @Size(max = 255)
    private String messageText;

    @Column(name = "created_on")
    private LocalDateTime createdOn;

    @PrePersist
    public void prePersist() {
        createdOn = LocalDateTime.now();
    }

    @ManyToOne(cascade = CascadeType.REMOVE)
    private Diver sender;

    @ManyToOne(cascade = CascadeType.REMOVE)
    private Diver receiver;

}