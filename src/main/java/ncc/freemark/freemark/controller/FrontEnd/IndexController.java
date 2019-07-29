package ncc.freemark.freemark.controller.FrontEnd;

import com.github.pagehelper.PageInfo;
import ncc.freemark.freemark.pojo.*;
import ncc.freemark.freemark.service.BlogService;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.multipart.MultipartFile;

import javax.annotation.Resource;
import java.io.File;
import java.io.IOException;
import java.text.SimpleDateFormat;
import java.util.*;

@Controller
public class IndexController {
    @Resource
    BlogService blogService;

    //wangEditor富文本编辑器Controller
    @RequestMapping("/wangEditeWrite")
    public String wangEditeWrite() {
        return "views/WangEditeWrite";
    }




    //blog展示
    @RequestMapping("/showBlog")
    public String showAllCustomerBlog(Model model, @RequestParam(value = "page", required = false, defaultValue = "1") int page, @RequestParam(value = "pageSize", required = false, defaultValue = "10") int pageSize) {
        List<showAllBlogPojo> list = blogService.selectAllBlog(page, pageSize);
        PageInfo<showAllBlogPojo> pageInfo = new PageInfo<showAllBlogPojo>(list);
        long total = pageInfo.getTotal();
        List<showAllBlogPojo> blogList = pageInfo.getList();
        model.addAttribute("total", pageInfo.getTotal());
        model.addAttribute("page", pageInfo.getPageNum());
        model.addAttribute("pagesize", pageSize);
        model.addAttribute("rows", blogList);     //当前页数据
        return "views/showAllCustomerBlog";
    }

    //查询所有并实现分页
    Map<String, Object> result = new HashMap<String, Object>();
    @RequestMapping("/page")
    @ResponseBody
    public Map<String, Object> showAll(@RequestParam(value = "page", required = false, defaultValue = "1") int page, @RequestParam(value = "pageSize", required = false, defaultValue = "10") int pageSize) {
        //查询数据
        List<showAllBlogPojo> list = blogService.selectAllBlog(page, pageSize);
        SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd");
        for (int i = 0; i < list.size(); i++) {
            list.get(i).setTimes(sdf.format(list.get(i).getTime()));
        }
        //将查询结果集封装到pageinfo对象中
        PageInfo<showAllBlogPojo> pageInfo = new PageInfo<showAllBlogPojo>(list);
        long total = pageInfo.getTotal();
        List<showAllBlogPojo> blogList = pageInfo.getList();
        result.put("rows", blogList); //当前页面的数据
        result.put("total", pageInfo.getTotal());
        result.put("page", pageInfo.getPageNum());
        result.put("pagesize", pageSize);
        return result;
    }


    //详细博客页面
    @GetMapping("showDetails/{userid}/{title}/{username}")
    public String showDetails(Model model, @PathVariable String userid, @PathVariable String title, @PathVariable String username) {
        String user = username;
        String useri = userid;
        int id = Integer.parseInt(useri);
        String t = title;
        Blog b = blogService.selectOne(id, t);
        model.addAttribute("user", user);
        model.addAttribute("blog", b);
        return "views/showDetails";
    }

    //查询classify
    @RequestMapping("/classify")
    public String classify(Model model) {
        List<ClassifyAndCount> s = blogService.selectClassifyAndCount();
        for (int i = 0; i < s.size(); i++) {
            s.get(i).setCount(blogService.selectCount(s.get(i).getClassify()));
            System.out.println(s.get(i).getCount());
        }
        model.addAttribute("listclassify", s);
        return "views/classify";
    }
   //关于页
    @RequestMapping("/about")
    public String about() {
        return "views/about";
    }
    //友情链接
    @RequestMapping("/friendsLink")
    public String friendsLink() {
        return "views/friendsLink";
    }
   //标签页
    @RequestMapping("/tag")
    public String tag(Model model) {
        List<Tag> lists = blogService.selectAllTag();
        for(Tag tag:lists){
            System.out.println(tag.getTag());
        }
        model.addAttribute("tagList", lists);
        return "views/tag";
    }

}
