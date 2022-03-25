package pl.coderslab.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import pl.coderslab.entity.Article;
import pl.coderslab.entity.Author;
import pl.coderslab.service.ArticleService;
import pl.coderslab.service.AuthorService;

import java.util.List;

//@RestController
@Controller
public class AuthorController {
    private AuthorService authorService;
    private ArticleService articleService;

    public AuthorController(AuthorService authorService, ArticleService articleService) {
        this.authorService = authorService;
        this.articleService = articleService;
    }

    @GetMapping("/authors")
    private String findAll(Model model){
        model.addAttribute("authors", authorService.findAll());
        return "author/authors";
    }

    @GetMapping("author/add")
    private String showAddForm(Model model){
        model.addAttribute("author", new Author());
        return "author/add";
    }

    @PostMapping("author/add")
    private String processAddForm(Author author){
        authorService.save(author);
        return "redirect:/authors";
    }

    @GetMapping("author/update/{id}")
    private String showUpdateForm(Model model, @PathVariable Long id){
        model.addAttribute("author", authorService.findById(id));
        return "author/update";
    }

    @PostMapping("author/update/{id}")
    private String processUpdateForm(Author author){
        authorService.upDate(author);
        return "redirect:/authors";
    }

//    @DeleteMapping(value = "/author/delete/{id}")
//    @ResponseBody
    @GetMapping(value = "/author/delete/{id}")
    private String delete(@PathVariable Long id){
        List<Article> allByAuthor = articleService.findAllByAuthor(authorService.findById(id));
        allByAuthor.stream()
                        .forEach(article -> articleService.delete(article.getId()));
        authorService.delete(id);
        return "redirect:/authors";
    }
}
