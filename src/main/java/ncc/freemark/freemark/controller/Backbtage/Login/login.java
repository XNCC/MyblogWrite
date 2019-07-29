package ncc.freemark.freemark.controller.Backbtage.Login;

import ncc.freemark.freemark.pojo.User;
import ncc.freemark.freemark.service.BlogService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.PutMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import sun.misc.Request;

import javax.annotation.Resource;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;

@Controller
public class login {
    @Autowired
    BlogService blogService;

    @RequestMapping("/")
    public String login(){
        return "login/login";
    }

    //外加有好提示
    @GetMapping("/login")
    public String longin2(HttpServletRequest request, Model model, String username, String password){
        User user=blogService.selectUser(username);
        if(user!=null&&user.getPassword().equals(password)){
            model.addAttribute("username",username);
            request.getSession().setAttribute("Nickname",user.getNickname());
            request.getSession().setAttribute("realName",user.getRealName());
            request.getSession().setAttribute("area",user.getArea());
            request.getSession().setAttribute("hangye",user.getHangye());
            request.getSession().setAttribute("zhiye",user.getZhiye());
            request.getSession().setAttribute("jianjie",user.getJianye());
            request.getSession().setAttribute("touxiang",user.getTouxiang());
            request.getSession().setAttribute("sex",user.getSex());
            request.getSession().setAttribute("birthday",user.getBirthday());
            request.getSession().setAttribute("user",user);
            return "forward:/UserIndex";   //返回到个人首页
        }
        else{
            model.addAttribute("error","用户名不存在，或密码错误");
            return "login/login";
        }
    }



}
