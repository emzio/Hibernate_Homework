package pl.coderslab.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import pl.coderslab.entity.Article;
import pl.coderslab.service.ArticleService;

import java.util.Objects;
import java.util.stream.Collectors;

@Controller
public class HomePageController {
    private ArticleService articleService;

    public HomePageController(ArticleService articleService) {
        this.articleService = articleService;
    }


    @GetMapping("/")
    private String home(Model model){
        model.addAttribute("articles", articleService.findFiveLastAdded());
        return "article/home";
    }

//    @GetMapping("/t")
//    @ResponseBody
//    private String homet(){
//        return articleService.findFiveLastTitleAdded().stream()
//                .map(Objects::toString)
//                .collect(Collectors.joining("<br>"));
//    }
}
