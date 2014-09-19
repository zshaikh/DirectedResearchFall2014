package com.fusepowered.m2.m2l;

import java.util.*;

class MraidCommandFactory
{
    protected static MraidCommandFactory instance;
    
    static /* synthetic */ int[] $SWITCH_TABLE$com$mopub$mobileads$MraidCommandFactory$MraidJavascriptCommand() {
        final int[] $switch_TABLE$com$mopub$mobileads$MraidCommandFactory$MraidJavascriptCommand = MraidCommandFactory.$SWITCH_TABLE$com$mopub$mobileads$MraidCommandFactory$MraidJavascriptCommand;
        if ($switch_TABLE$com$mopub$mobileads$MraidCommandFactory$MraidJavascriptCommand != null) {
            return $switch_TABLE$com$mopub$mobileads$MraidCommandFactory$MraidJavascriptCommand;
        }
        final int[] $switch_TABLE$com$mopub$mobileads$MraidCommandFactory$MraidJavascriptCommand2 = new int[MraidJavascriptCommand.values().length];
        while (true) {
            try {
                $switch_TABLE$com$mopub$mobileads$MraidCommandFactory$MraidJavascriptCommand2[MraidJavascriptCommand.CLOSE.ordinal()] = 1;
                try {
                    $switch_TABLE$com$mopub$mobileads$MraidCommandFactory$MraidJavascriptCommand2[MraidJavascriptCommand.CREATE_CALENDAR_EVENT.ordinal()] = 14;
                    try {
                        $switch_TABLE$com$mopub$mobileads$MraidCommandFactory$MraidJavascriptCommand2[MraidJavascriptCommand.EXPAND.ordinal()] = 2;
                        try {
                            $switch_TABLE$com$mopub$mobileads$MraidCommandFactory$MraidJavascriptCommand2[MraidJavascriptCommand.GET_CURRENT_POSITION.ordinal()] = 10;
                            try {
                                $switch_TABLE$com$mopub$mobileads$MraidCommandFactory$MraidJavascriptCommand2[MraidJavascriptCommand.GET_DEFAULT_POSITION.ordinal()] = 11;
                                try {
                                    $switch_TABLE$com$mopub$mobileads$MraidCommandFactory$MraidJavascriptCommand2[MraidJavascriptCommand.GET_MAX_SIZE.ordinal()] = 12;
                                    try {
                                        $switch_TABLE$com$mopub$mobileads$MraidCommandFactory$MraidJavascriptCommand2[MraidJavascriptCommand.GET_RESIZE_PROPERTIES.ordinal()] = 6;
                                        try {
                                            $switch_TABLE$com$mopub$mobileads$MraidCommandFactory$MraidJavascriptCommand2[MraidJavascriptCommand.GET_SCREEN_SIZE.ordinal()] = 13;
                                            try {
                                                $switch_TABLE$com$mopub$mobileads$MraidCommandFactory$MraidJavascriptCommand2[MraidJavascriptCommand.OPEN.ordinal()] = 4;
                                                try {
                                                    $switch_TABLE$com$mopub$mobileads$MraidCommandFactory$MraidJavascriptCommand2[MraidJavascriptCommand.PLAY_VIDEO.ordinal()] = 8;
                                                    try {
                                                        $switch_TABLE$com$mopub$mobileads$MraidCommandFactory$MraidJavascriptCommand2[MraidJavascriptCommand.RESIZE.ordinal()] = 5;
                                                        try {
                                                            $switch_TABLE$com$mopub$mobileads$MraidCommandFactory$MraidJavascriptCommand2[MraidJavascriptCommand.SET_RESIZE_PROPERTIES.ordinal()] = 7;
                                                            try {
                                                                $switch_TABLE$com$mopub$mobileads$MraidCommandFactory$MraidJavascriptCommand2[MraidJavascriptCommand.STORE_PICTURE.ordinal()] = 9;
                                                                try {
                                                                    $switch_TABLE$com$mopub$mobileads$MraidCommandFactory$MraidJavascriptCommand2[MraidJavascriptCommand.UNSPECIFIED.ordinal()] = 15;
                                                                    try {
                                                                        $switch_TABLE$com$mopub$mobileads$MraidCommandFactory$MraidJavascriptCommand2[MraidJavascriptCommand.USECUSTOMCLOSE.ordinal()] = 3;
                                                                        return MraidCommandFactory.$SWITCH_TABLE$com$mopub$mobileads$MraidCommandFactory$MraidJavascriptCommand = $switch_TABLE$com$mopub$mobileads$MraidCommandFactory$MraidJavascriptCommand2;
                                                                    }
                                                                    catch (NoSuchFieldError noSuchFieldError) {}
                                                                }
                                                                catch (NoSuchFieldError noSuchFieldError2) {}
                                                            }
                                                            catch (NoSuchFieldError noSuchFieldError3) {}
                                                        }
                                                        catch (NoSuchFieldError noSuchFieldError4) {}
                                                    }
                                                    catch (NoSuchFieldError noSuchFieldError5) {}
                                                }
                                                catch (NoSuchFieldError noSuchFieldError6) {}
                                            }
                                            catch (NoSuchFieldError noSuchFieldError7) {}
                                        }
                                        catch (NoSuchFieldError noSuchFieldError8) {}
                                    }
                                    catch (NoSuchFieldError noSuchFieldError9) {}
                                }
                                catch (NoSuchFieldError noSuchFieldError10) {}
                            }
                            catch (NoSuchFieldError noSuchFieldError11) {}
                        }
                        catch (NoSuchFieldError noSuchFieldError12) {}
                    }
                    catch (NoSuchFieldError noSuchFieldError13) {}
                }
                catch (NoSuchFieldError noSuchFieldError14) {}
            }
            catch (NoSuchFieldError noSuchFieldError15) {
                continue;
            }
            break;
        }
    }
    
    static {
        MraidCommandFactory.instance = new MraidCommandFactory();
    }
    
    public static MraidCommand create(final String s, final Map<String, String> map, final MraidView mraidView) {
        return MraidCommandFactory.instance.internalCreate(s, map, mraidView);
    }
    
    @Deprecated
    public static void setInstance(final MraidCommandFactory instance) {
        MraidCommandFactory.instance = instance;
    }
    
    protected MraidCommand internalCreate(final String s, final Map<String, String> map, final MraidView mraidView) {
        switch ($SWITCH_TABLE$com$mopub$mobileads$MraidCommandFactory$MraidJavascriptCommand()[fromString(s).ordinal()]) {
            default: {
                return null;
            }
            case 1: {
                return new MraidCommandClose(map, mraidView);
            }
            case 2: {
                return new MraidCommandExpand(map, mraidView);
            }
            case 3: {
                return new MraidCommandUseCustomClose(map, mraidView);
            }
            case 4: {
                return new MraidCommandOpen(map, mraidView);
            }
            case 5: {
                return new MraidCommandResize(map, mraidView);
            }
            case 6: {
                return new MraidCommandGetResizeProperties(map, mraidView);
            }
            case 7: {
                return new MraidCommandSetResizeProperties(map, mraidView);
            }
            case 8: {
                return new MraidCommandPlayVideo(map, mraidView);
            }
            case 9: {
                return new MraidCommandStorePicture(map, mraidView);
            }
            case 10: {
                return new MraidCommandGetCurrentPosition(map, mraidView);
            }
            case 11: {
                return new MraidCommandGetDefaultPosition(map, mraidView);
            }
            case 12: {
                return new MraidCommandGetMaxSize(map, mraidView);
            }
            case 13: {
                return new MraidCommandGetScreenSize(map, mraidView);
            }
            case 14: {
                return new MraidCommandCreateCalendarEvent(map, mraidView);
            }
            case 15: {
                return null;
            }
        }
    }
    
    enum MraidJavascriptCommand
    {
        CLOSE("CLOSE", 0, "close"), 
        CREATE_CALENDAR_EVENT("CREATE_CALENDAR_EVENT", 13, "createCalendarEvent"), 
        EXPAND("EXPAND", 1, "expand"), 
        GET_CURRENT_POSITION("GET_CURRENT_POSITION", 9, "getCurrentPosition"), 
        GET_DEFAULT_POSITION("GET_DEFAULT_POSITION", 10, "getDefaultPosition"), 
        GET_MAX_SIZE("GET_MAX_SIZE", 11, "getMaxSize"), 
        GET_RESIZE_PROPERTIES("GET_RESIZE_PROPERTIES", 5, "getResizeProperties"), 
        GET_SCREEN_SIZE("GET_SCREEN_SIZE", 12, "getScreenSize"), 
        OPEN("OPEN", 3, "open"), 
        PLAY_VIDEO("PLAY_VIDEO", 7, "playVideo"), 
        RESIZE("RESIZE", 4, "resize"), 
        SET_RESIZE_PROPERTIES("SET_RESIZE_PROPERTIES", 6, "setResizeProperties"), 
        STORE_PICTURE("STORE_PICTURE", 8, "storePicture"), 
        UNSPECIFIED("UNSPECIFIED", 14, ""), 
        USECUSTOMCLOSE("USECUSTOMCLOSE", 2, "usecustomclose");
        
        private String mCommand;
        
        private MraidJavascriptCommand(final String name, final int ordinal, final String mCommand) {
            this.mCommand = mCommand;
        }
        
        private static MraidJavascriptCommand fromString(final String anObject) {
            for (final MraidJavascriptCommand mraidJavascriptCommand : values()) {
                if (mraidJavascriptCommand.mCommand.equals(anObject)) {
                    return mraidJavascriptCommand;
                }
            }
            return MraidJavascriptCommand.UNSPECIFIED;
        }
        
        String getCommand() {
            return this.mCommand;
        }
    }
}
