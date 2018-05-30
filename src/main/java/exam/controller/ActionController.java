package exam.controller;

import exam.entity.AttendanceDetail;
import exam.entity.AttendanceSlots;
import exam.model.*;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import java.util.List;

/**
 * Created by TruongNguyen on 5/30/2018.
 */
@Controller
public class ActionController {
    @Autowired
    private AttendanceDetailModel attendanceDetailModel;
    @Autowired
    private AttendanceSlotsModel attendanceSlotsModel;
    @Autowired
    private ClassInfoModel classInfoModel;
    @Autowired
    private StudentClassModel studentClassModel;
    @Autowired
    private StudentModel studentModel;
    @Autowired
    private TimeslotsModel timeslotsModel;

    @RequestMapping(path = "/times", method = RequestMethod.GET)
    public String times(Model model) {
        List<AttendanceSlots> attendanceSlotsList = attendanceSlotsModel.
                findByNgayDiemDanhBetween(
                        1527683830069l,1527683830569l
        );
        model.addAttribute("attendanceSlotsList", attendanceSlotsList);
        return "times";
    }

    @RequestMapping(path = "/attend/{id}", method = RequestMethod.GET)
    public String attend(@PathVariable int id, Model model) {
        List<AttendanceDetail> attendanceDetailList  = attendanceDetailModel.findByAttendanceSlots_Id(id);
        model.addAttribute("id", id);
        model.addAttribute("attendanceDetailList", attendanceDetailList);
        return "attend";
    }

    //    @Autowired
//    private ProductModel productModel;
//    @Autowired
//    private ProductModel2 productModel2;
//
//    @RequestMapping(path = "/product/create", method = RequestMethod.GET)
//    public String createProduct(@ModelAttribute Product p) {
//        return "product-form";
//    }
//
//    @RequestMapping(path = "/product/create", method = RequestMethod.POST)
//    public String saveProduct(@Valid Product product, BindingResult result,
//                              @RequestParam("myFile") MultipartFile myFile) {
//        product.setImgUrl("_");
//        new ProductValidator().validate(product, result);
//        if (result.hasErrors()) {
//            return "product-form";
//        }
//        try {
//            Path path = Paths.get(UPLOADED_FOLDER + myFile.getOriginalFilename());
//            Files.write(path, myFile.getBytes());
//        } catch (IOException ex) {
//            System.err.println(ex.getMessage());
//        }
//        product.setImgUrl("/uploaded/" + myFile.getOriginalFilename());
//        productModel.save(product);
//        return "redirect:/product/list";
//    }
//
//    @RequestMapping(path = "/product/edit/{id}", method = RequestMethod.GET)
//    public String editProduct(@PathVariable int id, Model model) {
//        Optional<Product> optionalProduct = productModel.findById(id);
//        if (optionalProduct.isPresent()) {
//            model.addAttribute("product", optionalProduct.get());
//            return "product-form";
//        } else {
//            return "not-found";
//        }
//    }
}
