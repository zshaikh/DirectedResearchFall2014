.class Lcom/fusepowered/m2/m2l/MraidCommandFactory;
.super Ljava/lang/Object;
.source "MraidCommandFactory.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/fusepowered/m2/m2l/MraidCommandFactory$MraidJavascriptCommand;
    }
.end annotation


# static fields
.field private static synthetic $SWITCH_TABLE$com$mopub$mobileads$MraidCommandFactory$MraidJavascriptCommand:[I

.field protected static instance:Lcom/fusepowered/m2/m2l/MraidCommandFactory;


# direct methods
.method static synthetic $SWITCH_TABLE$com$mopub$mobileads$MraidCommandFactory$MraidJavascriptCommand()[I
    .locals 3

    .prologue
    .line 37
    sget-object v0, Lcom/fusepowered/m2/m2l/MraidCommandFactory;->$SWITCH_TABLE$com$mopub$mobileads$MraidCommandFactory$MraidJavascriptCommand:[I

    if-eqz v0, :cond_0

    :goto_0
    return-object v0

    :cond_0
    invoke-static {}, Lcom/fusepowered/m2/m2l/MraidCommandFactory$MraidJavascriptCommand;->values()[Lcom/fusepowered/m2/m2l/MraidCommandFactory$MraidJavascriptCommand;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    :try_start_0
    sget-object v1, Lcom/fusepowered/m2/m2l/MraidCommandFactory$MraidJavascriptCommand;->CLOSE:Lcom/fusepowered/m2/m2l/MraidCommandFactory$MraidJavascriptCommand;

    invoke-virtual {v1}, Lcom/fusepowered/m2/m2l/MraidCommandFactory$MraidJavascriptCommand;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_e

    :goto_1
    :try_start_1
    sget-object v1, Lcom/fusepowered/m2/m2l/MraidCommandFactory$MraidJavascriptCommand;->CREATE_CALENDAR_EVENT:Lcom/fusepowered/m2/m2l/MraidCommandFactory$MraidJavascriptCommand;

    invoke-virtual {v1}, Lcom/fusepowered/m2/m2l/MraidCommandFactory$MraidJavascriptCommand;->ordinal()I

    move-result v1

    const/16 v2, 0xe

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_d

    :goto_2
    :try_start_2
    sget-object v1, Lcom/fusepowered/m2/m2l/MraidCommandFactory$MraidJavascriptCommand;->EXPAND:Lcom/fusepowered/m2/m2l/MraidCommandFactory$MraidJavascriptCommand;

    invoke-virtual {v1}, Lcom/fusepowered/m2/m2l/MraidCommandFactory$MraidJavascriptCommand;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_c

    :goto_3
    :try_start_3
    sget-object v1, Lcom/fusepowered/m2/m2l/MraidCommandFactory$MraidJavascriptCommand;->GET_CURRENT_POSITION:Lcom/fusepowered/m2/m2l/MraidCommandFactory$MraidJavascriptCommand;

    invoke-virtual {v1}, Lcom/fusepowered/m2/m2l/MraidCommandFactory$MraidJavascriptCommand;->ordinal()I

    move-result v1

    const/16 v2, 0xa

    aput v2, v0, v1
    :try_end_3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3 .. :try_end_3} :catch_b

    :goto_4
    :try_start_4
    sget-object v1, Lcom/fusepowered/m2/m2l/MraidCommandFactory$MraidJavascriptCommand;->GET_DEFAULT_POSITION:Lcom/fusepowered/m2/m2l/MraidCommandFactory$MraidJavascriptCommand;

    invoke-virtual {v1}, Lcom/fusepowered/m2/m2l/MraidCommandFactory$MraidJavascriptCommand;->ordinal()I

    move-result v1

    const/16 v2, 0xb

    aput v2, v0, v1
    :try_end_4
    .catch Ljava/lang/NoSuchFieldError; {:try_start_4 .. :try_end_4} :catch_a

    :goto_5
    :try_start_5
    sget-object v1, Lcom/fusepowered/m2/m2l/MraidCommandFactory$MraidJavascriptCommand;->GET_MAX_SIZE:Lcom/fusepowered/m2/m2l/MraidCommandFactory$MraidJavascriptCommand;

    invoke-virtual {v1}, Lcom/fusepowered/m2/m2l/MraidCommandFactory$MraidJavascriptCommand;->ordinal()I

    move-result v1

    const/16 v2, 0xc

    aput v2, v0, v1
    :try_end_5
    .catch Ljava/lang/NoSuchFieldError; {:try_start_5 .. :try_end_5} :catch_9

    :goto_6
    :try_start_6
    sget-object v1, Lcom/fusepowered/m2/m2l/MraidCommandFactory$MraidJavascriptCommand;->GET_RESIZE_PROPERTIES:Lcom/fusepowered/m2/m2l/MraidCommandFactory$MraidJavascriptCommand;

    invoke-virtual {v1}, Lcom/fusepowered/m2/m2l/MraidCommandFactory$MraidJavascriptCommand;->ordinal()I

    move-result v1

    const/4 v2, 0x6

    aput v2, v0, v1
    :try_end_6
    .catch Ljava/lang/NoSuchFieldError; {:try_start_6 .. :try_end_6} :catch_8

    :goto_7
    :try_start_7
    sget-object v1, Lcom/fusepowered/m2/m2l/MraidCommandFactory$MraidJavascriptCommand;->GET_SCREEN_SIZE:Lcom/fusepowered/m2/m2l/MraidCommandFactory$MraidJavascriptCommand;

    invoke-virtual {v1}, Lcom/fusepowered/m2/m2l/MraidCommandFactory$MraidJavascriptCommand;->ordinal()I

    move-result v1

    const/16 v2, 0xd

    aput v2, v0, v1
    :try_end_7
    .catch Ljava/lang/NoSuchFieldError; {:try_start_7 .. :try_end_7} :catch_7

    :goto_8
    :try_start_8
    sget-object v1, Lcom/fusepowered/m2/m2l/MraidCommandFactory$MraidJavascriptCommand;->OPEN:Lcom/fusepowered/m2/m2l/MraidCommandFactory$MraidJavascriptCommand;

    invoke-virtual {v1}, Lcom/fusepowered/m2/m2l/MraidCommandFactory$MraidJavascriptCommand;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_8
    .catch Ljava/lang/NoSuchFieldError; {:try_start_8 .. :try_end_8} :catch_6

    :goto_9
    :try_start_9
    sget-object v1, Lcom/fusepowered/m2/m2l/MraidCommandFactory$MraidJavascriptCommand;->PLAY_VIDEO:Lcom/fusepowered/m2/m2l/MraidCommandFactory$MraidJavascriptCommand;

    invoke-virtual {v1}, Lcom/fusepowered/m2/m2l/MraidCommandFactory$MraidJavascriptCommand;->ordinal()I

    move-result v1

    const/16 v2, 0x8

    aput v2, v0, v1
    :try_end_9
    .catch Ljava/lang/NoSuchFieldError; {:try_start_9 .. :try_end_9} :catch_5

    :goto_a
    :try_start_a
    sget-object v1, Lcom/fusepowered/m2/m2l/MraidCommandFactory$MraidJavascriptCommand;->RESIZE:Lcom/fusepowered/m2/m2l/MraidCommandFactory$MraidJavascriptCommand;

    invoke-virtual {v1}, Lcom/fusepowered/m2/m2l/MraidCommandFactory$MraidJavascriptCommand;->ordinal()I

    move-result v1

    const/4 v2, 0x5

    aput v2, v0, v1
    :try_end_a
    .catch Ljava/lang/NoSuchFieldError; {:try_start_a .. :try_end_a} :catch_4

    :goto_b
    :try_start_b
    sget-object v1, Lcom/fusepowered/m2/m2l/MraidCommandFactory$MraidJavascriptCommand;->SET_RESIZE_PROPERTIES:Lcom/fusepowered/m2/m2l/MraidCommandFactory$MraidJavascriptCommand;

    invoke-virtual {v1}, Lcom/fusepowered/m2/m2l/MraidCommandFactory$MraidJavascriptCommand;->ordinal()I

    move-result v1

    const/4 v2, 0x7

    aput v2, v0, v1
    :try_end_b
    .catch Ljava/lang/NoSuchFieldError; {:try_start_b .. :try_end_b} :catch_3

    :goto_c
    :try_start_c
    sget-object v1, Lcom/fusepowered/m2/m2l/MraidCommandFactory$MraidJavascriptCommand;->STORE_PICTURE:Lcom/fusepowered/m2/m2l/MraidCommandFactory$MraidJavascriptCommand;

    invoke-virtual {v1}, Lcom/fusepowered/m2/m2l/MraidCommandFactory$MraidJavascriptCommand;->ordinal()I

    move-result v1

    const/16 v2, 0x9

    aput v2, v0, v1
    :try_end_c
    .catch Ljava/lang/NoSuchFieldError; {:try_start_c .. :try_end_c} :catch_2

    :goto_d
    :try_start_d
    sget-object v1, Lcom/fusepowered/m2/m2l/MraidCommandFactory$MraidJavascriptCommand;->UNSPECIFIED:Lcom/fusepowered/m2/m2l/MraidCommandFactory$MraidJavascriptCommand;

    invoke-virtual {v1}, Lcom/fusepowered/m2/m2l/MraidCommandFactory$MraidJavascriptCommand;->ordinal()I

    move-result v1

    const/16 v2, 0xf

    aput v2, v0, v1
    :try_end_d
    .catch Ljava/lang/NoSuchFieldError; {:try_start_d .. :try_end_d} :catch_1

    :goto_e
    :try_start_e
    sget-object v1, Lcom/fusepowered/m2/m2l/MraidCommandFactory$MraidJavascriptCommand;->USECUSTOMCLOSE:Lcom/fusepowered/m2/m2l/MraidCommandFactory$MraidJavascriptCommand;

    invoke-virtual {v1}, Lcom/fusepowered/m2/m2l/MraidCommandFactory$MraidJavascriptCommand;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_e
    .catch Ljava/lang/NoSuchFieldError; {:try_start_e .. :try_end_e} :catch_0

    :goto_f
    sput-object v0, Lcom/fusepowered/m2/m2l/MraidCommandFactory;->$SWITCH_TABLE$com$mopub$mobileads$MraidCommandFactory$MraidJavascriptCommand:[I

    goto/16 :goto_0

    :catch_0
    move-exception v1

    goto :goto_f

    :catch_1
    move-exception v1

    goto :goto_e

    :catch_2
    move-exception v1

    goto :goto_d

    :catch_3
    move-exception v1

    goto :goto_c

    :catch_4
    move-exception v1

    goto :goto_b

    :catch_5
    move-exception v1

    goto :goto_a

    :catch_6
    move-exception v1

    goto :goto_9

    :catch_7
    move-exception v1

    goto :goto_8

    :catch_8
    move-exception v1

    goto :goto_7

    :catch_9
    move-exception v1

    goto :goto_6

    :catch_a
    move-exception v1

    goto :goto_5

    :catch_b
    move-exception v1

    goto/16 :goto_4

    :catch_c
    move-exception v1

    goto/16 :goto_3

    :catch_d
    move-exception v1

    goto/16 :goto_2

    :catch_e
    move-exception v1

    goto/16 :goto_1
.end method

.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 38
    new-instance v0, Lcom/fusepowered/m2/m2l/MraidCommandFactory;

    invoke-direct {v0}, Lcom/fusepowered/m2/m2l/MraidCommandFactory;-><init>()V

    sput-object v0, Lcom/fusepowered/m2/m2l/MraidCommandFactory;->instance:Lcom/fusepowered/m2/m2l/MraidCommandFactory;

    return-void
.end method

.method constructor <init>()V
    .locals 0

    .prologue
    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static create(Ljava/lang/String;Ljava/util/Map;Lcom/fusepowered/m2/m2l/MraidView;)Lcom/fusepowered/m2/m2l/MraidCommand;
    .locals 1
    .parameter "command"
    .parameter
    .parameter "view"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Lcom/fusepowered/m2/m2l/MraidView;",
            ")",
            "Lcom/fusepowered/m2/m2l/MraidCommand;"
        }
    .end annotation

    .prologue
    .line 84
    .local p1, params:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    sget-object v0, Lcom/fusepowered/m2/m2l/MraidCommandFactory;->instance:Lcom/fusepowered/m2/m2l/MraidCommandFactory;

    invoke-virtual {v0, p0, p1, p2}, Lcom/fusepowered/m2/m2l/MraidCommandFactory;->internalCreate(Ljava/lang/String;Ljava/util/Map;Lcom/fusepowered/m2/m2l/MraidView;)Lcom/fusepowered/m2/m2l/MraidCommand;

    move-result-object v0

    return-object v0
.end method

.method public static setInstance(Lcom/fusepowered/m2/m2l/MraidCommandFactory;)V
    .locals 0
    .parameter "factory"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 80
    sput-object p0, Lcom/fusepowered/m2/m2l/MraidCommandFactory;->instance:Lcom/fusepowered/m2/m2l/MraidCommandFactory;

    .line 81
    return-void
.end method


# virtual methods
.method protected internalCreate(Ljava/lang/String;Ljava/util/Map;Lcom/fusepowered/m2/m2l/MraidView;)Lcom/fusepowered/m2/m2l/MraidCommand;
    .locals 4
    .parameter "command"
    .parameter
    .parameter "view"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Lcom/fusepowered/m2/m2l/MraidView;",
            ")",
            "Lcom/fusepowered/m2/m2l/MraidCommand;"
        }
    .end annotation

    .prologue
    .local p2, params:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const/4 v3, 0x0

    .line 88
    #calls: Lcom/fusepowered/m2/m2l/MraidCommandFactory$MraidJavascriptCommand;->fromString(Ljava/lang/String;)Lcom/fusepowered/m2/m2l/MraidCommandFactory$MraidJavascriptCommand;
    invoke-static {p1}, Lcom/fusepowered/m2/m2l/MraidCommandFactory$MraidJavascriptCommand;->access$2(Ljava/lang/String;)Lcom/fusepowered/m2/m2l/MraidCommandFactory$MraidJavascriptCommand;

    move-result-object v0

    .line 90
    .local v0, mraidJavascriptCommand:Lcom/fusepowered/m2/m2l/MraidCommandFactory$MraidJavascriptCommand;
    invoke-static {}, Lcom/fusepowered/m2/m2l/MraidCommandFactory;->$SWITCH_TABLE$com$mopub$mobileads$MraidCommandFactory$MraidJavascriptCommand()[I

    move-result-object v1

    invoke-virtual {v0}, Lcom/fusepowered/m2/m2l/MraidCommandFactory$MraidJavascriptCommand;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    move-object v1, v3

    .line 122
    :goto_0
    return-object v1

    .line 92
    :pswitch_0
    new-instance v1, Lcom/fusepowered/m2/m2l/MraidCommandClose;

    invoke-direct {v1, p2, p3}, Lcom/fusepowered/m2/m2l/MraidCommandClose;-><init>(Ljava/util/Map;Lcom/fusepowered/m2/m2l/MraidView;)V

    goto :goto_0

    .line 94
    :pswitch_1
    new-instance v1, Lcom/fusepowered/m2/m2l/MraidCommandExpand;

    invoke-direct {v1, p2, p3}, Lcom/fusepowered/m2/m2l/MraidCommandExpand;-><init>(Ljava/util/Map;Lcom/fusepowered/m2/m2l/MraidView;)V

    goto :goto_0

    .line 96
    :pswitch_2
    new-instance v1, Lcom/fusepowered/m2/m2l/MraidCommandUseCustomClose;

    invoke-direct {v1, p2, p3}, Lcom/fusepowered/m2/m2l/MraidCommandUseCustomClose;-><init>(Ljava/util/Map;Lcom/fusepowered/m2/m2l/MraidView;)V

    goto :goto_0

    .line 98
    :pswitch_3
    new-instance v1, Lcom/fusepowered/m2/m2l/MraidCommandOpen;

    invoke-direct {v1, p2, p3}, Lcom/fusepowered/m2/m2l/MraidCommandOpen;-><init>(Ljava/util/Map;Lcom/fusepowered/m2/m2l/MraidView;)V

    goto :goto_0

    .line 100
    :pswitch_4
    new-instance v1, Lcom/fusepowered/m2/m2l/MraidCommandResize;

    invoke-direct {v1, p2, p3}, Lcom/fusepowered/m2/m2l/MraidCommandResize;-><init>(Ljava/util/Map;Lcom/fusepowered/m2/m2l/MraidView;)V

    goto :goto_0

    .line 102
    :pswitch_5
    new-instance v1, Lcom/fusepowered/m2/m2l/MraidCommandGetResizeProperties;

    invoke-direct {v1, p2, p3}, Lcom/fusepowered/m2/m2l/MraidCommandGetResizeProperties;-><init>(Ljava/util/Map;Lcom/fusepowered/m2/m2l/MraidView;)V

    goto :goto_0

    .line 104
    :pswitch_6
    new-instance v1, Lcom/fusepowered/m2/m2l/MraidCommandSetResizeProperties;

    invoke-direct {v1, p2, p3}, Lcom/fusepowered/m2/m2l/MraidCommandSetResizeProperties;-><init>(Ljava/util/Map;Lcom/fusepowered/m2/m2l/MraidView;)V

    goto :goto_0

    .line 106
    :pswitch_7
    new-instance v1, Lcom/fusepowered/m2/m2l/MraidCommandPlayVideo;

    invoke-direct {v1, p2, p3}, Lcom/fusepowered/m2/m2l/MraidCommandPlayVideo;-><init>(Ljava/util/Map;Lcom/fusepowered/m2/m2l/MraidView;)V

    goto :goto_0

    .line 108
    :pswitch_8
    new-instance v1, Lcom/fusepowered/m2/m2l/MraidCommandStorePicture;

    invoke-direct {v1, p2, p3}, Lcom/fusepowered/m2/m2l/MraidCommandStorePicture;-><init>(Ljava/util/Map;Lcom/fusepowered/m2/m2l/MraidView;)V

    goto :goto_0

    .line 110
    :pswitch_9
    new-instance v1, Lcom/fusepowered/m2/m2l/MraidCommandGetCurrentPosition;

    invoke-direct {v1, p2, p3}, Lcom/fusepowered/m2/m2l/MraidCommandGetCurrentPosition;-><init>(Ljava/util/Map;Lcom/fusepowered/m2/m2l/MraidView;)V

    goto :goto_0

    .line 112
    :pswitch_a
    new-instance v1, Lcom/fusepowered/m2/m2l/MraidCommandGetDefaultPosition;

    invoke-direct {v1, p2, p3}, Lcom/fusepowered/m2/m2l/MraidCommandGetDefaultPosition;-><init>(Ljava/util/Map;Lcom/fusepowered/m2/m2l/MraidView;)V

    goto :goto_0

    .line 114
    :pswitch_b
    new-instance v1, Lcom/fusepowered/m2/m2l/MraidCommandGetMaxSize;

    invoke-direct {v1, p2, p3}, Lcom/fusepowered/m2/m2l/MraidCommandGetMaxSize;-><init>(Ljava/util/Map;Lcom/fusepowered/m2/m2l/MraidView;)V

    goto :goto_0

    .line 116
    :pswitch_c
    new-instance v1, Lcom/fusepowered/m2/m2l/MraidCommandGetScreenSize;

    invoke-direct {v1, p2, p3}, Lcom/fusepowered/m2/m2l/MraidCommandGetScreenSize;-><init>(Ljava/util/Map;Lcom/fusepowered/m2/m2l/MraidView;)V

    goto :goto_0

    .line 118
    :pswitch_d
    new-instance v1, Lcom/fusepowered/m2/m2l/MraidCommandCreateCalendarEvent;

    invoke-direct {v1, p2, p3}, Lcom/fusepowered/m2/m2l/MraidCommandCreateCalendarEvent;-><init>(Ljava/util/Map;Lcom/fusepowered/m2/m2l/MraidView;)V

    goto :goto_0

    :pswitch_e
    move-object v1, v3

    .line 120
    goto :goto_0

    .line 90
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_b
        :pswitch_c
        :pswitch_d
        :pswitch_e
    .end packed-switch
.end method
