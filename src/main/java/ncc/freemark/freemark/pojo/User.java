package ncc.freemark.freemark.pojo;

import java.util.Date;

public class User {
    int id;
    String username ;
    String password;
    String Nickname;
    String realName;
    String area;
    String hangye;
    String zhiye;
    String jianye;
    String touxiang;
    Date birthday;
    String sex;

    public Date getBirthday() {
        return birthday;
    }

    public void setBirthday(Date birthday) {
        this.birthday = birthday;
    }

    public String getSex() {
        return sex;
    }

    public void setSex(String sex) {
        this.sex = sex;
    }

    public String getNickname() {
        return Nickname;
    }

    public void setNickname(String nickname) {
        Nickname = nickname;
    }

    public String getRealName() {
        return realName;
    }

    public void setRealName(String realName) {
        this.realName = realName;
    }

    public String getArea() {
        return area;
    }

    public void setArea(String area) {
        this.area = area;
    }

    public String getHangye() {
        return hangye;
    }

    public void setHangye(String hangye) {
        this.hangye = hangye;
    }

    public String getZhiye() {
        return zhiye;
    }

    public void setZhiye(String zhiye) {
        this.zhiye = zhiye;
    }

    public String getJianye() {
        return jianye;
    }

    public void setJianye(String jianye) {
        this.jianye = jianye;
    }

    public String getTouxiang() {
        return touxiang;
    }

    public void setTouxiang(String touxiang) {
        this.touxiang = touxiang;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getUsername() {
        return username;
    }

    public void setUsername(String username) {
        this.username = username;
    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }
}
