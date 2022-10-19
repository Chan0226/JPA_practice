package mycar.controller;

import mycar.data.MyCarDao;
import mycar.data.MycarDto;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.multipart.MultipartFile;

import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import java.io.File;
import java.io.IOException;
import java.util.List;

@Controller
public class MyCarController {

    @Autowired
    MyCarDao dao;

    @GetMapping("/")
    public String home(Model model) {
        Long totalCount = dao.getTotalCount();
        List<MycarDto> list = dao.getAllCars();

        model.addAttribute("totalCount", totalCount);
        model.addAttribute("list", list);

        return "carlist";
    }

    @GetMapping("/carform")
    public String form() {
        return "carform";
    }

    @PostMapping("/insert")
    public String insert(@ModelAttribute MycarDto dto, MultipartFile carupload,
                         HttpServletRequest request) {
        // 업로드할 save 위치 구하기
        String path = request.getSession().getServletContext().getRealPath("/save");
        // 업로드할 파일명을 dto에 넣기
        dto.setCarphoto(carupload.getOriginalFilename());

        // 실제 업로드
        try {
            carupload.transferTo(new File(path + "/" + carupload.getOriginalFilename()));
        } catch (IllegalStateException | IOException e) {
            e.printStackTrace();
        }

        // db.insert
        dao.insertCar(dto);

        // 목록으로 이동
        return "redirect:../";
    }

    @GetMapping("/detail")
    public String detail(Long num, Model model) {
        MycarDto dto = dao.getData(num);

        model.addAttribute("dto", dto);
        return "cardetail";
    }

    // updateform에 update할 dto에 대한 정보(num)등을 넘긴다.
    @GetMapping("/updateform")
    public String updateform(Long num, Model model) {
        MycarDto dto = dao.getData(num);
        model.addAttribute("dto",dto);
        return "updateform";
    }

    @PostMapping("/update")         							// RequestParam 생략 -> form태그의 name과 같아야함
    public String update(@ModelAttribute MycarDto dto, MultipartFile carupload,
                         HttpServletRequest request)
    {
        // 업로드할 save 위치 구하기
        String path = request.getSession().getServletContext().getRealPath("/save");
        // 업로드할 파일명을 dto에 넣기
        dto.setCarphoto(carupload.getOriginalFilename());

        // 실제 업로드
        try {
            carupload.transferTo(new File(path+"/"+carupload.getOriginalFilename()));
        } catch (IllegalStateException | IOException e) {
            e.printStackTrace();
        }

        // db.insert
        dao.updateData(dto);

        // 목록으로 이동
        return "redirect:./";
    }
}
