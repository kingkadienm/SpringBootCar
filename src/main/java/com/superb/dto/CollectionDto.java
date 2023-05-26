package com.superb.dto;

import com.superb.entity.Collection;
import com.superb.entity.Style;
import lombok.Data;
import lombok.EqualsAndHashCode;
import lombok.experimental.Accessors;

import java.io.Serializable;

/**
 * @author Superb
 * @date 2020/11/19 - 15:16
 * @E_mail superb12580@163.com
 */
@Data
@EqualsAndHashCode(callSuper = false)
@Accessors(chain = true)
public class CollectionDto extends Collection implements Serializable {
    /**
     * 查询收藏时展示车信息
     */
    private Style style;

    public Style getStyle() {
        return style;
    }

    public void setStyle(Style style) {
        this.style = style;
    }
}
