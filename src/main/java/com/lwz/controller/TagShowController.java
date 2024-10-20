package com.lwz.controller;

import com.lwz.pojo.Anime;
import com.lwz.pojo.Tag;
import com.lwz.service.AnimeService;
import com.lwz.service.TagService;
import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestParam;

import java.util.List;

@Controller
public class TagShowController {

    @Autowired
    private TagService tagService;

    @Autowired
    private AnimeService blogService;

    @GetMapping("/tags/{id}")
    public String types(@PathVariable Long id, @RequestParam(required = false,defaultValue = "1",value = "pagenum")int pagenum,
                        Model model){
        PageHelper.startPage(pagenum, 100);  //开启分页
        List<Tag> tags = tagService.getBlogTag();
        //-1从导航点过来的
        if (id == -1){
            id = tags.get(0).getId();
        }
        List<Anime> blogs = blogService.getByTagId(id);
        for (Anime blog : blogs) {
            System.out.println(blog);
        }
        PageInfo<Anime> pageInfo = new PageInfo<>(blogs);
        model.addAttribute("tags", tags);
        model.addAttribute("pageInfo", pageInfo);
        model.addAttribute("activeTagId", id);

        return "tags";
    }
}
