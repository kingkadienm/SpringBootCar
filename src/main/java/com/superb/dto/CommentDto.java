package com.superb.dto;

import com.superb.entity.Comment;
import com.superb.entity.Essay;
import com.superb.entity.User;
import lombok.Data;
import lombok.EqualsAndHashCode;
import lombok.experimental.Accessors;

import java.io.Serializable;

/**
 * @author Superb
 * @date 2020/11/19 - 13:56
 * @E_mail superb12580@163.com
 */
@Data
@EqualsAndHashCode(callSuper = false)
@Accessors(chain = true)
public class CommentDto extends Comment implements Serializable {


    /**
     * 查看一条动态时 附带评论用户
     */
    private User user;

    /**
     * 查看一条评论时 附带动态信息
     */
    private Essay essay;


    public User getUser() {
        return user;
    }

    public void setUser(User user) {
        this.user = user;
    }

    public Essay getEssay() {
        return essay;
    }

    public void setEssay(Essay essay) {
        this.essay = essay;
    }
}
