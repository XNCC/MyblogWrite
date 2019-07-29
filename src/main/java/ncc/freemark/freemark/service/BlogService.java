package ncc.freemark.freemark.service;

import com.github.pagehelper.PageHelper;
import ncc.freemark.freemark.dao.Mapper;
import ncc.freemark.freemark.pojo.*;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;
import java.util.List;

@Service
public class BlogService {
    @Resource
    Mapper mapper;

    //查询用户————登陆
    public User selectUser(String username){return mapper.selectUser(username);}
    //保存博客
    public Tag selectTag(String tag){ return mapper.selectTag(tag); }
    public int insertTag(Tag tag){ return mapper.insertTag(tag); }
    public int insertBlog(Blog blog){
        return mapper.insertBlog(blog);
    }
    public void insertblogandtag(blogandtag blogandtag){mapper.insertblogandtag(blogandtag);}

    //分页和显示到前台
    public List<showAllBlogPojo> selectAllBlog(Integer page,Integer rows){
        //设置分页参数
        PageHelper.startPage(page,rows);
       return  mapper.selectAllBlog();
    }
    public List<showAllBlogPojo> selectAllBlog(){
        return  mapper.selectAllBlog();
    }
    public  List<blogandtag> selecttagid(int blogid){ return mapper.selecttagid(blogid); }
    public Tag selecttag(int id){ return mapper.selecttag(id); }

    public Blog selectOne(int userid,String title){
        return mapper.selectOne(userid,title);
    }


    //查询classify
    public List<ClassifyAndCount> selectClassifyAndCount(){ return mapper.selectClassifyAndCount(); }
   public  int selectCount(String classify){return mapper.selectCount(classify);}

   //查询Tag
    public List<Tag> selectAllTag(){return mapper.selectAllTag();}

    //
    public Blog selectOneBlog(int id){return mapper.selectOneBlog(id);}

    public void deleteBlog(int id){  mapper.deleteBlog(id);}

    public Boolean updateBlog(Blog blog){return mapper.updateBlog(blog);}

     //<!--查询classify个数一级标签个数-->
     public int selectContclassify(){
        return mapper.selectContclassify();
     }
    public int selectCountTag(){
       return mapper.selectCountTag();
    }
}
