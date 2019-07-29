package ncc.freemark.freemark;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.boot.web.servlet.ServletComponentScan;

@ServletComponentScan
@SpringBootApplication
public class FreemarkApplication {

    public static void main(String[] args) {
        SpringApplication.run(FreemarkApplication.class, args);
    }

}
