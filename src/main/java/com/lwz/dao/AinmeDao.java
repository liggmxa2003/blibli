package com.lwz.dao;

import com.lwz.pojo.Anime;
import com.lwz.pojo.AnimeAndTag;
import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Param;
import org.springframework.stereotype.Repository;

import java.util.List;

@Mapper
@Repository
public interface AinmeDao {

    Anime getBlog(Long id);  //后台展示番剧

    Anime getDetailedBlog(@Param("id") Long id);  //番剧详情

    List<Anime> getAllBlog();

    List<Anime> getByTypeId(Long typeId);  //根据类型id获取番剧

    List<Anime> getByTagId(Long tagId);  //根据标签id获取番剧

    List<Anime> getIndexBlog();  //主页番剧展示

    List<Anime> getAllRecommendBlog();  //推荐番剧展示

    List<Anime> getSearchBlog(String query);  //全局搜索番剧

    List<Anime> searchAllBlog(Anime blog);  //后台根据标题、分类、推荐搜索番剧

    List<String> findGroupYear();  //查询所有年份，返回一个集合

    List<Anime> findByYear(@Param("year") String year);  //按年份查询番剧

    int saveBlog(Anime blog);

    int saveBlogAndTag(AnimeAndTag blogAndTag);

    int updateBlog(Anime blog);

    int deleteBlog(Long id);

}
