package mycar.data;

import org.springframework.data.jpa.repository.JpaRepository;
                                                    // 타입,   id타입(항상Long)
public interface MyCarDaoInter extends JpaRepository<MycarDto, Long> {
}
