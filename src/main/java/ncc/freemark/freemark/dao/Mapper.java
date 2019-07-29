package ncc.freemark.freemark.dao;

import ncc.freemark.freemark.pojo.*;


import java.util.List;

@org.apache.ibatis.annotations.Mapper
public interface Mapper {

  //查询用户————登陆
  public User selectUser(String username);

  //保存blog
  public Tag selectTag(String tag);
  public int insertTag(Tag tag);
  public int insertBlog(Blog blog);
  public void insertblogandtag(blogandtag blogandtag);

  //显示所有信息到用户主页面
  public List<showAllBlogPojo> selectAllBlog();
  public List<blogandtag> selecttagid(int blogid);
  public Tag selecttag(int id);

  public Blog selectOne(int userid,String title);


  //查询classify
  public List<ClassifyAndCount> selectClassifyAndCount();
  public int  selectCount(String classify);

  //查询所有tag
  public List<Tag> selectAllTag();

  public Blog selectOneBlog(int id);
  public void deleteBlog(int id);

  public Boolean updateBlog(Blog blog);


  // <!--查询classify个数一级标签个数-->
  public int selectContclassify();
  public int selectCountTag();
}
