package com.adobe.air.utils;

import java.io.*;

public class DeviceInfo
{
    static String getCPUCount() {
        try {
            final ProcessBuilder processBuilder = new ProcessBuilder(new String[] { "/system/bin/cat", "/sys/devices/system/cpu/present" });
            final byte[] array = new byte[1024];
            final InputStream inputStream = processBuilder.start().getInputStream();
            final int read = inputStream.read(array, 0, 1024);
            if (read < 0) {
                inputStream.close();
                return new String("");
            }
            final String s = new String(array, 0, read);
            final int index = s.indexOf("-");
            if (index >= 0) {
                return Integer.toString(1 + Integer.parseInt(s.substring(index + 1, index + 2)));
            }
            return Integer.toString(1 + Integer.parseInt(s.substring(0, 1)));
        }
        catch (IOException ex) {
            return new String("");
        }
    }
    
    static String getHardwareInfo() {
        try {
            final ProcessBuilder processBuilder = new ProcessBuilder(new String[] { "/system/bin/cat", "/proc/cpuinfo" });
            final byte[] array = new byte[1024];
            final InputStream inputStream = processBuilder.start().getInputStream();
            final int read = inputStream.read(array, 0, 1024);
            if (read >= 0) {
                final String s = new String(array, 0, read);
                final int index = s.indexOf("Hardware");
                if (index >= 0) {
                    final int index2 = s.indexOf(58, index);
                    if (index2 >= 0) {
                        return s.substring(index2 + 1, s.indexOf(10, index2 + 1)).trim();
                    }
                }
            }
            inputStream.close();
            return new String("");
        }
        catch (IOException ex) {
            return new String("");
        }
    }
    
    static String getTotalMemory() {
        try {
            final ProcessBuilder processBuilder = new ProcessBuilder(new String[] { "/system/bin/cat", "/proc/meminfo" });
            final byte[] array = new byte[1024];
            final InputStream inputStream = processBuilder.start().getInputStream();
            final int read = inputStream.read(array, 0, 1024);
            if (read >= 0) {
                final String s = new String(array, 0, read);
                final int index = s.indexOf("MemTotal");
                if (index >= 0) {
                    final int index2 = s.indexOf(58, index);
                    if (index2 >= 0) {
                        return s.substring(index2 + 1, s.indexOf(10, index2 + 1)).trim();
                    }
                }
            }
            inputStream.close();
            return new String("");
        }
        catch (IOException ex) {
            return new String("");
        }
    }
}
