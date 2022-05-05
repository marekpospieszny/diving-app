package pl.pospieszny.divingapp.entity;

import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;
import org.springframework.format.annotation.DateTimeFormat;

import javax.persistence.*;
import javax.validation.constraints.*;
import java.sql.Date;
import java.time.LocalDate;
import java.time.LocalDateTime;
import java.time.LocalTime;

@Entity
@Table(name = "dives")
@Getter@Setter@NoArgsConstructor@AllArgsConstructor
public class Dive {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long id;

    @ManyToOne
    private Diver diver;

    @ManyToOne
    private Diver partner;

    @NotNull
    @DateTimeFormat(pattern = "yyyy-MM-dd")
    private LocalDate date;

    @Positive
    private int underwaterTimeInMinutes;

    @Positive
    private double maxDepth;

    @ManyToOne
    private Location location;

    @Min(1)
    @Max(10)
    private int rating;

    private String comment;

}
