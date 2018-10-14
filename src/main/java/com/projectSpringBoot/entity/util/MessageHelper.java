package com.projectSpringBoot.entity.util;

import com.projectSpringBoot.entity.User;

public abstract class MessageHelper {
    public static String getAuthorName(User author){
        return author != null ? author.getUsername() : " <none> ";
    }
}
