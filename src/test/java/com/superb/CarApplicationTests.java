package com.superb;

import cn.hutool.core.bean.BeanUtil;
import cn.hutool.crypto.SecureUtil;
import com.aliyuncs.DefaultAcsClient;
import com.aliyuncs.vod.model.v20170321.GetPlayInfoRequest;
import com.aliyuncs.vod.model.v20170321.GetPlayInfoResponse;
import com.baomidou.mybatisplus.core.conditions.query.QueryWrapper;
import com.baomidou.mybatisplus.core.metadata.IPage;
import com.baomidou.mybatisplus.extension.plugins.pagination.Page;
import com.superb.dto.AttentionDto;
import com.superb.dto.EssayDto;
import com.superb.dto.Item;
import com.superb.entity.Label;
import com.superb.entity.Photo;
import com.superb.entity.User;
import com.superb.mapper.AttentionMapper;
import com.superb.mapper.EssayMapper;
import com.superb.service.LabelService;
import com.superb.service.PhotoService;
import com.superb.service.UserService;
import com.superb.util.ConstantProperties;
import com.superb.util.Utils;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.context.SpringBootTest;
import org.springframework.context.annotation.Bean;
import org.springframework.test.context.junit4.SpringRunner;

import java.util.List;


@RunWith(SpringRunner.class)
@SpringBootTest
public class CarApplicationTests {

    @Autowired
    private UserService userService;

    @Autowired
    private LabelService labelService;

    public static GetPlayInfoResponse getPlayInfo(DefaultAcsClient client) throws Exception {
        GetPlayInfoRequest request = new GetPlayInfoRequest();
        request.setVideoId("f5dddb01cc804182885172e51e399e70");
        return client.getAcsResponse(request);
    }
    @Test
    public void text() {
        DefaultAcsClient client = Utils.initVodClient(ConstantProperties.ACCESS_KEY_ID, ConstantProperties.ACCESS_KEY_SECRET);
        GetPlayInfoResponse response = new GetPlayInfoResponse();
        try {
            response = getPlayInfo(client);
            List<GetPlayInfoResponse.PlayInfo> playInfoList = response.getPlayInfoList();
            //播放地址
            for (GetPlayInfoResponse.PlayInfo playInfo : playInfoList) {
                System.out.print("PlayInfo.PlayURL = " + playInfo.getPlayURL() + "\n");
            }
            //Base信息
            System.out.print("VideoBase.Title = " + response.getVideoBase().getTitle() + "\n");
        } catch (Exception e) {
            System.out.print("ErrorMessage = " + e.getLocalizedMessage());
        }
        System.out.print("RequestId = " + response.getRequestId() + "\n");
    }



    @Test
    public void test1() {
        User user = new User();
        user.setUserName("smz");
        user.setPassword(SecureUtil.md5("123456"));
        user.setEmail("smz12580@vip.com");
        userService.save(user);
    }

    @Test
    public void test2() {
        Label label = new Label();
        label.setLabelId(1);
        label.setLabelText("147258");
        labelService.updateById(label);
    }

    @Test
    public void test3() {
        Item item = new Item();
        User user = userService.getOne(new QueryWrapper<User>().eq("user_id", 1));
        BeanUtil.copyProperties(user, item);
        System.out.println(user);
        System.out.println("**************");
        System.out.println(item);
    }

    @Test
    public void test4() {
        User user = new User();
        user.setGender(1);
        user.setUserId(2L);
        userService.updateById(user);
    }



}
