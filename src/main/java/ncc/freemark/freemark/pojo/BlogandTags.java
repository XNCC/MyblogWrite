package ncc.freemark.freemark.pojo;

import java.util.List;

public class BlogandTags {

    showAllBlogPojo showAllBlogPojo;
    List<String> list;   //String承载标签

    public ncc.freemark.freemark.pojo.showAllBlogPojo getShowAllBlogPojo() {
        return showAllBlogPojo;
    }

    public void setShowAllBlogPojo(ncc.freemark.freemark.pojo.showAllBlogPojo showAllBlogPojo) {
        this.showAllBlogPojo = showAllBlogPojo;
    }

    public List<String> getList() {
        return list;
    }

    public void setList(List<String> list) {
        this.list = list;
    }
}
