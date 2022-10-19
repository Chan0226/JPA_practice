package mycar.data;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Sort;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
public class MyCarDao {

    @Autowired
    MyCarDaoInter carDao;

    // 전체 출력
    public List<MycarDto> getAllCars(){
        return carDao.findAll(Sort.by(Sort.Direction.DESC, "carprice"));
    }
    
    // 갯수 반환
    public Long getTotalCount(){
        return carDao.count();
    }

    // 추가
    public void insertCar(MycarDto dto) {
        carDao.save(dto);
    }

    // detail
    public MycarDto getData(Long num) {
        return carDao.getReferenceById(num);
    }

    // 수정
    public void updateData(MycarDto dto) {
        carDao.save(dto);  // num이 같으면 update
    }
}
