package com.superb.dto;

import com.superb.entity.Agree;
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
public class AgreeDto extends Agree implements Serializable {


    /**
     * 查看一条动态时 附带点赞用户
     */
    private User user;

    public AgreeDto() {
    }

    public AgreeDto(User user) {
        this.user = user;
    }

    public User getUser() {
        return user;
    }

    public void setUser(User user) {
        this.user = user;
    }
}
