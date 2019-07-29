package ncc.freemark.freemark.controller.Backbtage.PersonManage;

import com.github.pagehelper.PageInfo;
import ncc.freemark.freemark.pojo.showAllBlogPojo;
import ncc.freemark.freemark.service.BlogService;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;

import javax.annotation.Resource;
import java.io.File;
import java.io.IOException;
import java.text.SimpleDateFormat;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.UUID;

@Controller
public class PersonManager {


    @RequestMapping("/PersonMessage")
    public String PersonMessage(){
        return "PersonManage/PersonMessage";
    }

    //上传图片
    @RequestMapping("/upload")
    public String upload(@RequestParam(value = "file") MultipartFile file) {
        if (file.isEmpty()) {
            System.out.println("文件为空空");
        }
        String fileName = file.getOriginalFilename();  // 文件名
        String suffixName = fileName.substring(fileName.lastIndexOf("."));  // 后缀名
        String filePath = "src/main/resources/static/imgs"; // 上传后的路径
        File dest = new File(filePath);

        fileName = "touxiang" + suffixName; // 新文件名
        File files=new File(dest.getAbsolutePath()+File.separator+fileName);
        System.out.println(dest.getAbsolutePath() +File.separator+fileName);
        try {
            file.transferTo(files);
        } catch (IOException e) {
            e.printStackTrace();
        }

      return "forward:PersonManage/PersonMessage";
    }
}
