package ncc.freemark.freemark.controller.Backbtage.BlogManager;

import com.github.pagehelper.PageInfo;
import ncc.freemark.freemark.pojo.Blog;
import ncc.freemark.freemark.pojo.Tag;
import ncc.freemark.freemark.pojo.blogandtag;
import ncc.freemark.freemark.pojo.showAllBlogPojo;
import ncc.freemark.freemark.service.BlogService;
import org.junit.jupiter.api.Test;
import org.springframework.stereotype.Controller;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;

import javax.annotation.Resource;
import java.text.SimpleDateFormat;
import java.util.*;

@Controller
public class BackstageManageBlog {
    @Resource
    BlogService blogService;
   //editeMd
    @RequestMapping("/editeMd")
    public String editeMd(){
        return "Backstage/editeMd/editeMd";
    }


    //后台管理波分
    //个人首页
    @RequestMapping("/UserIndex")
    public String UserIndex(Model model){
        int classifycount=blogService.selectContclassify();
        int tagcount=blogService.selectCountTag();
        List<showAllBlogPojo> s= blogService.selectAllBlog();
        model.addAttribute("blog",s);
        model.addAttribute("classifycount",classifycount);
        model.addAttribute("tagcount",tagcount);
        return "Backstage/UserIndex";
    }


   //富文本写博客
    @RequestMapping("/write")
    public String write(){
        return "Backstage/write";
    }


    // //博客管理
    @RequestMapping("/ManagerBlog")
    public String showAllCustomerBlog(Model model, @RequestParam(value = "page", required = false, defaultValue = "1") int page, @RequestParam(value = "pageSize", required = false, defaultValue = "10") int pageSize) {
        List<showAllBlogPojo> list = blogService.selectAllBlog(page, pageSize);
        PageInfo<showAllBlogPojo> pageInfo = new PageInfo<showAllBlogPojo>(list);
        long total = pageInfo.getTotal();
        List<showAllBlogPojo> blogList = pageInfo.getList();
        model.addAttribute("total", pageInfo.getTotal());
        model.addAttribute("page", pageInfo.getPageNum());
        model.addAttribute("pagesize", pageSize);
        model.addAttribute("rows", blogList);     //当前页数据
        return "Backstage/ManagerBlog";
    }
    //查询所有并实现分页
    Map<String, Object> result = new HashMap<String, Object>();
    @RequestMapping("/managerss")
    @ResponseBody
    public Map<String, Object> showAll(@RequestParam(value = "page", required = false, defaultValue = "1") int page, @RequestParam(value = "pageSize", required = false, defaultValue = "10") int pageSize) {
        //查询数据
        List<showAllBlogPojo> list = blogService.selectAllBlog(page, pageSize);
        SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd");
        for (int i = 0; i < list.size(); i++) {
            list.get(i).setTimes(sdf.format(list.get(i).getTime()));
            System.out.println(list.get(i).getTitle());
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

     //修改博客
     @GetMapping("updateBlog/{id}")
     public String updateBlog(Model model, @PathVariable String id) {
         int ids=Integer.parseInt(id);
         Blog b=  blogService.selectOneBlog(ids);
         model.addAttribute("blog", b);
         return "forward:Backstage/UpdateBlog";
     }



    @GetMapping("deleteBlog/{id}")
    public String deleteBlog(Model model, @PathVariable String id) {
        int ids=Integer.parseInt(id);
        blogService.deleteBlog(ids);
        model.addAttribute("success","success");
        return  "views/success";
    }
    @PostMapping("/updateController")
    @Transactional
    @ResponseBody
    public String success(int id,String content, String title, String tag, String classify) {
        String tags[] = tag.split(" ");
        for (int i = 0; i < tags.length; i++) {
            System.out.println(tags[i] + "   " + i);
        }
        int flag[] = new int[tags.length];
        //flag==tag的id则表中存在该标签，否则不存在需要插入
        for (int i = 0; i < tags.length; i++) {
            Tag tag1 = blogService.selectTag(tags[i]);
            if (tag1 != null) {
                flag[i] = tag1.getId();
            } else {
                //插入tag变表
                Tag tag2 = new Tag();
                tag2.setTag(tags[i]);
                blogService.insertTag(tag2);
                flag[i] = tag2.getId();   //插入数据返回主键值
            }
        }
        //插入博客表
        //插入saveBlog表
        Blog blog = new Blog();
        blog.setContent(content);
        blog.setTitle(title);
        blog.setUserid("1");
        blog.setClassify(classify);
        Date date = new Date();
        blog.setTime(date);
        blog.setId(id);
        blogService.updateBlog(blog);
        //插入flog和tag的中间表
        for (int i = 0; i < tags.length; i++) {
            //Tag tag2 = blogService.selectTag(tags[i]);
            blogandtag blogandtag = new blogandtag();
            blogandtag.setBlogid(id);
            blogandtag.setTagid(flag[i]);
            blogService.insertblogandtag(blogandtag);
        }
        return "更新成功";
    }



}
