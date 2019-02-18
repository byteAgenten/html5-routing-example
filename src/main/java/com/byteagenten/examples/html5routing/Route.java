package com.byteagenten.examples.html5routing;

import javax.servlet.http.HttpServletRequest;

public class Route {

    private static final String FRONTEND_PATH = "view";
    private static final String ASSET_PATH = "public";

    private static String base(HttpServletRequest request) {
        return request.getContextPath();
    }

    public static String routeTo(HttpServletRequest request, String route) {
        return base(request) + "/" + route;
    }

    public static String frontend(HttpServletRequest request) {
        return routeTo(request, FRONTEND_PATH);
    }

    public static String frontend(HttpServletRequest request, String routeName) {
        return routeTo(request, FRONTEND_PATH + "/" + routeName);
    }

    public static String asset(HttpServletRequest request, String assetName) {
        return routeTo(request, ASSET_PATH + "/" + assetName);
    }
}
