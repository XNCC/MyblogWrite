package ncc.freemark.freemark.controller.Backbtage.BlogManager;

import ncc.freemark.freemark.pojo.Blog;
import ncc.freemark.freemark.pojo.Tag;
import ncc.freemark.freemark.pojo.blogandtag;
import ncc.freemark.freemark.service.BlogService;
import org.junit.jupiter.api.Test;
import org.springframework.stereotype.Controller;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.web.bind.annotation.PostMapping;

import javax.annotation.Resource;
import java.util.Arrays;
import java.util.Date;

@Controller
public class WriteBlogController {
    @Resource
    BlogService blogService;

    //保存blog数据到数据库
    @PostMapping("/saveController")
    @Transactional
    public String success(String content, String title, String tag, String classify) {

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
        blogService.insertBlog(blog);
        int id2 = blog.getId();   //插入数据后返回 主键值

        //插入flog和tag的中间表
        for (int i = 0; i < tags.length; i++) {
            //Tag tag2 = blogService.selectTag(tags[i]);
            blogandtag blogandtag = new blogandtag();
            blogandtag.setBlogid(id2);
            blogandtag.setTagid(flag[i]);
            blogService.insertblogandtag(blogandtag);
        }
        return "Backstage/write";
    }


}
