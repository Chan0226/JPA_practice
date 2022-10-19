package mycar.data;

import lombok.Data;
import org.hibernate.annotations.CreationTimestamp;

import javax.persistence.*;
import java.sql.Timestamp;

@Entity
@Table(name = "mycar")
@Data
public class MycarDto {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long num;   // JPA는 무조건 Long타입으로

    @Column(name = "carname")
    private String carname;

    @Column(name = "carprice")
    private int carprice;

    @Column(name = "carcolor")
    private String carcolor;

    @Column(name = "carguip")
    private String carguip;

    @Column(name = "carphoto")
    private String carphoto;

    @Column(name = "writeday")
    @CreationTimestamp  // 엔티티가 생성되는 시점의 시간이 자동등록
    private Timestamp writeday;
}
