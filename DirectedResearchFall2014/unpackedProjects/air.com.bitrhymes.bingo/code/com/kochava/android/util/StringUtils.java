package com.kochava.android.util;

import java.io.*;

public class StringUtils
{
    public static String inputStreamToString(final InputStream in) throws IOException {
        final BufferedReader bufferedReader = new BufferedReader(new InputStreamReader(in));
        final StringBuilder sb = new StringBuilder();
        while (true) {
            final String line = bufferedReader.readLine();
            if (line == null) {
                break;
            }
            sb.append(String.valueOf(line) + "\n");
        }
        bufferedReader.close();
        return sb.toString();
    }
}
