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
@Getter
@Setter
@NoArgsConstructor
@AllArgsConstructor
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

    @Positive(message = "{diveUnderwaterTime.positive.message}")
    @NotNull(message = "{diveUnderwaterTime.notNull.message}")
    private Integer underwaterTimeInMinutes;

    @Positive(message = "{diveMaxDepth.positive.message}")
    @NotNull(message = "{diveMaxDepth.notNull.message}")
    private Double maxDepth;

    @ManyToOne
    private Location location;

    @Min(value = 1, message = "{diveRating.min.message}")
    @Max(value = 10, message = "{diveRating.max.message}")
    @NotNull(message = "{diveRating.notNull.message}")
    private Integer rating;

    private String comment;

}