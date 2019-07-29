package ncc.freemark.freemark.controller.Backbtage.BlogManager;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
public class editeMdController {
    @GetMapping("/md")
    public String test(){
        return  "views/editeMd";
    }


}
