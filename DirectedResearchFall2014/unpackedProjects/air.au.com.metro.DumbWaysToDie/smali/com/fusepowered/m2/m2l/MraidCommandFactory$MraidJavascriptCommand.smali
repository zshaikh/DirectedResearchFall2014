.class final enum Lcom/fusepowered/m2/m2l/MraidCommandFactory$MraidJavascriptCommand;
.super Ljava/lang/Enum;
.source "MraidCommandFactory.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/fusepowered/m2/m2l/MraidCommandFactory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4018
    name = "MraidJavascriptCommand"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/fusepowered/m2/m2l/MraidCommandFactory$MraidJavascriptCommand;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum CLOSE:Lcom/fusepowered/m2/m2l/MraidCommandFactory$MraidJavascriptCommand;

.field public static final enum CREATE_CALENDAR_EVENT:Lcom/fusepowered/m2/m2l/MraidCommandFactory$MraidJavascriptCommand;

.field private static final synthetic ENUM$VALUES:[Lcom/fusepowered/m2/m2l/MraidCommandFactory$MraidJavascriptCommand;

.field public static final enum EXPAND:Lcom/fusepowered/m2/m2l/MraidCommandFactory$MraidJavascriptCommand;

.field public static final enum GET_CURRENT_POSITION:Lcom/fusepowered/m2/m2l/MraidCommandFactory$MraidJavascriptCommand;

.field public static final enum GET_DEFAULT_POSITION:Lcom/fusepowered/m2/m2l/MraidCommandFactory$MraidJavascriptCommand;

.field public static final enum GET_MAX_SIZE:Lcom/fusepowered/m2/m2l/MraidCommandFactory$MraidJavascriptCommand;

.field public static final enum GET_RESIZE_PROPERTIES:Lcom/fusepowered/m2/m2l/MraidCommandFactory$MraidJavascriptCommand;

.field public static final enum GET_SCREEN_SIZE:Lcom/fusepowered/m2/m2l/MraidCommandFactory$MraidJavascriptCommand;

.field public static final enum OPEN:Lcom/fusepowered/m2/m2l/MraidCommandFactory$MraidJavascriptCommand;

.field public static final enum PLAY_VIDEO:Lcom/fusepowered/m2/m2l/MraidCommandFactory$MraidJavascriptCommand;

.field public static final enum RESIZE:Lcom/fusepowered/m2/m2l/MraidCommandFactory$MraidJavascriptCommand;

.field public static final enum SET_RESIZE_PROPERTIES:Lcom/fusepowered/m2/m2l/MraidCommandFactory$MraidJavascriptCommand;

.field public static final enum STORE_PICTURE:Lcom/fusepowered/m2/m2l/MraidCommandFactory$MraidJavascriptCommand;

.field public static final enum UNSPECIFIED:Lcom/fusepowered/m2/m2l/MraidCommandFactory$MraidJavascriptCommand;

.field public static final enum USECUSTOMCLOSE:Lcom/fusepowered/m2/m2l/MraidCommandFactory$MraidJavascriptCommand;


# instance fields
.field private mCommand:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .prologue
    const/4 v8, 0x4

    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 41
    new-instance v0, Lcom/fusepowered/m2/m2l/MraidCommandFactory$MraidJavascriptCommand;

    const-string v1, "CLOSE"

    const-string v2, "close"

    invoke-direct {v0, v1, v4, v2}, Lcom/fusepowered/m2/m2l/MraidCommandFactory$MraidJavascriptCommand;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/fusepowered/m2/m2l/MraidCommandFactory$MraidJavascriptCommand;->CLOSE:Lcom/fusepowered/m2/m2l/MraidCommandFactory$MraidJavascriptCommand;

    .line 42
    new-instance v0, Lcom/fusepowered/m2/m2l/MraidCommandFactory$MraidJavascriptCommand;

    const-string v1, "EXPAND"

    const-string v2, "expand"

    invoke-direct {v0, v1, v5, v2}, Lcom/fusepowered/m2/m2l/MraidCommandFactory$MraidJavascriptCommand;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/fusepowered/m2/m2l/MraidCommandFactory$MraidJavascriptCommand;->EXPAND:Lcom/fusepowered/m2/m2l/MraidCommandFactory$MraidJavascriptCommand;

    .line 43
    new-instance v0, Lcom/fusepowered/m2/m2l/MraidCommandFactory$MraidJavascriptCommand;

    const-string v1, "USECUSTOMCLOSE"

    const-string v2, "usecustomclose"

    invoke-direct {v0, v1, v6, v2}, Lcom/fusepowered/m2/m2l/MraidCommandFactory$MraidJavascriptCommand;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/fusepowered/m2/m2l/MraidCommandFactory$MraidJavascriptCommand;->USECUSTOMCLOSE:Lcom/fusepowered/m2/m2l/MraidCommandFactory$MraidJavascriptCommand;

    .line 44
    new-instance v0, Lcom/fusepowered/m2/m2l/MraidCommandFactory$MraidJavascriptCommand;

    const-string v1, "OPEN"

    const-string v2, "open"

    invoke-direct {v0, v1, v7, v2}, Lcom/fusepowered/m2/m2l/MraidCommandFactory$MraidJavascriptCommand;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/fusepowered/m2/m2l/MraidCommandFactory$MraidJavascriptCommand;->OPEN:Lcom/fusepowered/m2/m2l/MraidCommandFactory$MraidJavascriptCommand;

    .line 45
    new-instance v0, Lcom/fusepowered/m2/m2l/MraidCommandFactory$MraidJavascriptCommand;

    const-string v1, "RESIZE"

    const-string v2, "resize"

    invoke-direct {v0, v1, v8, v2}, Lcom/fusepowered/m2/m2l/MraidCommandFactory$MraidJavascriptCommand;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/fusepowered/m2/m2l/MraidCommandFactory$MraidJavascriptCommand;->RESIZE:Lcom/fusepowered/m2/m2l/MraidCommandFactory$MraidJavascriptCommand;

    .line 46
    new-instance v0, Lcom/fusepowered/m2/m2l/MraidCommandFactory$MraidJavascriptCommand;

    const-string v1, "GET_RESIZE_PROPERTIES"

    const/4 v2, 0x5

    const-string v3, "getResizeProperties"

    invoke-direct {v0, v1, v2, v3}, Lcom/fusepowered/m2/m2l/MraidCommandFactory$MraidJavascriptCommand;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/fusepowered/m2/m2l/MraidCommandFactory$MraidJavascriptCommand;->GET_RESIZE_PROPERTIES:Lcom/fusepowered/m2/m2l/MraidCommandFactory$MraidJavascriptCommand;

    .line 47
    new-instance v0, Lcom/fusepowered/m2/m2l/MraidCommandFactory$MraidJavascriptCommand;

    const-string v1, "SET_RESIZE_PROPERTIES"

    const/4 v2, 0x6

    const-string v3, "setResizeProperties"

    invoke-direct {v0, v1, v2, v3}, Lcom/fusepowered/m2/m2l/MraidCommandFactory$MraidJavascriptCommand;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/fusepowered/m2/m2l/MraidCommandFactory$MraidJavascriptCommand;->SET_RESIZE_PROPERTIES:Lcom/fusepowered/m2/m2l/MraidCommandFactory$MraidJavascriptCommand;

    .line 48
    new-instance v0, Lcom/fusepowered/m2/m2l/MraidCommandFactory$MraidJavascriptCommand;

    const-string v1, "PLAY_VIDEO"

    const/4 v2, 0x7

    const-string v3, "playVideo"

    invoke-direct {v0, v1, v2, v3}, Lcom/fusepowered/m2/m2l/MraidCommandFactory$MraidJavascriptCommand;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/fusepowered/m2/m2l/MraidCommandFactory$MraidJavascriptCommand;->PLAY_VIDEO:Lcom/fusepowered/m2/m2l/MraidCommandFactory$MraidJavascriptCommand;

    .line 49
    new-instance v0, Lcom/fusepowered/m2/m2l/MraidCommandFactory$MraidJavascriptCommand;

    const-string v1, "STORE_PICTURE"

    const/16 v2, 0x8

    const-string v3, "storePicture"

    invoke-direct {v0, v1, v2, v3}, Lcom/fusepowered/m2/m2l/MraidCommandFactory$MraidJavascriptCommand;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/fusepowered/m2/m2l/MraidCommandFactory$MraidJavascriptCommand;->STORE_PICTURE:Lcom/fusepowered/m2/m2l/MraidCommandFactory$MraidJavascriptCommand;

    .line 50
    new-instance v0, Lcom/fusepowered/m2/m2l/MraidCommandFactory$MraidJavascriptCommand;

    const-string v1, "GET_CURRENT_POSITION"

    const/16 v2, 0x9

    const-string v3, "getCurrentPosition"

    invoke-direct {v0, v1, v2, v3}, Lcom/fusepowered/m2/m2l/MraidCommandFactory$MraidJavascriptCommand;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/fusepowered/m2/m2l/MraidCommandFactory$MraidJavascriptCommand;->GET_CURRENT_POSITION:Lcom/fusepowered/m2/m2l/MraidCommandFactory$MraidJavascriptCommand;

    .line 51
    new-instance v0, Lcom/fusepowered/m2/m2l/MraidCommandFactory$MraidJavascriptCommand;

    const-string v1, "GET_DEFAULT_POSITION"

    const/16 v2, 0xa

    const-string v3, "getDefaultPosition"

    invoke-direct {v0, v1, v2, v3}, Lcom/fusepowered/m2/m2l/MraidCommandFactory$MraidJavascriptCommand;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/fusepowered/m2/m2l/MraidCommandFactory$MraidJavascriptCommand;->GET_DEFAULT_POSITION:Lcom/fusepowered/m2/m2l/MraidCommandFactory$MraidJavascriptCommand;

    .line 52
    new-instance v0, Lcom/fusepowered/m2/m2l/MraidCommandFactory$MraidJavascriptCommand;

    const-string v1, "GET_MAX_SIZE"

    const/16 v2, 0xb

    const-string v3, "getMaxSize"

    invoke-direct {v0, v1, v2, v3}, Lcom/fusepowered/m2/m2l/MraidCommandFactory$MraidJavascriptCommand;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/fusepowered/m2/m2l/MraidCommandFactory$MraidJavascriptCommand;->GET_MAX_SIZE:Lcom/fusepowered/m2/m2l/MraidCommandFactory$MraidJavascriptCommand;

    .line 53
    new-instance v0, Lcom/fusepowered/m2/m2l/MraidCommandFactory$MraidJavascriptCommand;

    const-string v1, "GET_SCREEN_SIZE"

    const/16 v2, 0xc

    const-string v3, "getScreenSize"

    invoke-direct {v0, v1, v2, v3}, Lcom/fusepowered/m2/m2l/MraidCommandFactory$MraidJavascriptCommand;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/fusepowered/m2/m2l/MraidCommandFactory$MraidJavascriptCommand;->GET_SCREEN_SIZE:Lcom/fusepowered/m2/m2l/MraidCommandFactory$MraidJavascriptCommand;

    .line 54
    new-instance v0, Lcom/fusepowered/m2/m2l/MraidCommandFactory$MraidJavascriptCommand;

    const-string v1, "CREATE_CALENDAR_EVENT"

    const/16 v2, 0xd

    const-string v3, "createCalendarEvent"

    invoke-direct {v0, v1, v2, v3}, Lcom/fusepowered/m2/m2l/MraidCommandFactory$MraidJavascriptCommand;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/fusepowered/m2/m2l/MraidCommandFactory$MraidJavascriptCommand;->CREATE_CALENDAR_EVENT:Lcom/fusepowered/m2/m2l/MraidCommandFactory$MraidJavascriptCommand;

    .line 55
    new-instance v0, Lcom/fusepowered/m2/m2l/MraidCommandFactory$MraidJavascriptCommand;

    const-string v1, "UNSPECIFIED"

    const/16 v2, 0xe

    const-string v3, ""

    invoke-direct {v0, v1, v2, v3}, Lcom/fusepowered/m2/m2l/MraidCommandFactory$MraidJavascriptCommand;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/fusepowered/m2/m2l/MraidCommandFactory$MraidJavascriptCommand;->UNSPECIFIED:Lcom/fusepowered/m2/m2l/MraidCommandFactory$MraidJavascriptCommand;

    .line 40
    const/16 v0, 0xf

    new-array v0, v0, [Lcom/fusepowered/m2/m2l/MraidCommandFactory$MraidJavascriptCommand;

    sget-object v1, Lcom/fusepowered/m2/m2l/MraidCommandFactory$MraidJavascriptCommand;->CLOSE:Lcom/fusepowered/m2/m2l/MraidCommandFactory$MraidJavascriptCommand;

    aput-object v1, v0, v4

    sget-object v1, Lcom/fusepowered/m2/m2l/MraidCommandFactory$MraidJavascriptCommand;->EXPAND:Lcom/fusepowered/m2/m2l/MraidCommandFactory$MraidJavascriptCommand;

    aput-object v1, v0, v5

    sget-object v1, Lcom/fusepowered/m2/m2l/MraidCommandFactory$MraidJavascriptCommand;->USECUSTOMCLOSE:Lcom/fusepowered/m2/m2l/MraidCommandFactory$MraidJavascriptCommand;

    aput-object v1, v0, v6

    sget-object v1, Lcom/fusepowered/m2/m2l/MraidCommandFactory$MraidJavascriptCommand;->OPEN:Lcom/fusepowered/m2/m2l/MraidCommandFactory$MraidJavascriptCommand;

    aput-object v1, v0, v7

    sget-object v1, Lcom/fusepowered/m2/m2l/MraidCommandFactory$MraidJavascriptCommand;->RESIZE:Lcom/fusepowered/m2/m2l/MraidCommandFactory$MraidJavascriptCommand;

    aput-object v1, v0, v8

    const/4 v1, 0x5

    sget-object v2, Lcom/fusepowered/m2/m2l/MraidCommandFactory$MraidJavascriptCommand;->GET_RESIZE_PROPERTIES:Lcom/fusepowered/m2/m2l/MraidCommandFactory$MraidJavascriptCommand;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/fusepowered/m2/m2l/MraidCommandFactory$MraidJavascriptCommand;->SET_RESIZE_PROPERTIES:Lcom/fusepowered/m2/m2l/MraidCommandFactory$MraidJavascriptCommand;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcom/fusepowered/m2/m2l/MraidCommandFactory$MraidJavascriptCommand;->PLAY_VIDEO:Lcom/fusepowered/m2/m2l/MraidCommandFactory$MraidJavascriptCommand;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, Lcom/fusepowered/m2/m2l/MraidCommandFactory$MraidJavascriptCommand;->STORE_PICTURE:Lcom/fusepowered/m2/m2l/MraidCommandFactory$MraidJavascriptCommand;

    aput-object v2, v0, v1

    const/16 v1, 0x9

    sget-object v2, Lcom/fusepowered/m2/m2l/MraidCommandFactory$MraidJavascriptCommand;->GET_CURRENT_POSITION:Lcom/fusepowered/m2/m2l/MraidCommandFactory$MraidJavascriptCommand;

    aput-object v2, v0, v1

    const/16 v1, 0xa

    sget-object v2, Lcom/fusepowered/m2/m2l/MraidCommandFactory$MraidJavascriptCommand;->GET_DEFAULT_POSITION:Lcom/fusepowered/m2/m2l/MraidCommandFactory$MraidJavascriptCommand;

    aput-object v2, v0, v1

    const/16 v1, 0xb

    sget-object v2, Lcom/fusepowered/m2/m2l/MraidCommandFactory$MraidJavascriptCommand;->GET_MAX_SIZE:Lcom/fusepowered/m2/m2l/MraidCommandFactory$MraidJavascriptCommand;

    aput-object v2, v0, v1

    const/16 v1, 0xc

    sget-object v2, Lcom/fusepowered/m2/m2l/MraidCommandFactory$MraidJavascriptCommand;->GET_SCREEN_SIZE:Lcom/fusepowered/m2/m2l/MraidCommandFactory$MraidJavascriptCommand;

    aput-object v2, v0, v1

    const/16 v1, 0xd

    sget-object v2, Lcom/fusepowered/m2/m2l/MraidCommandFactory$MraidJavascriptCommand;->CREATE_CALENDAR_EVENT:Lcom/fusepowered/m2/m2l/MraidCommandFactory$MraidJavascriptCommand;

    aput-object v2, v0, v1

    const/16 v1, 0xe

    sget-object v2, Lcom/fusepowered/m2/m2l/MraidCommandFactory$MraidJavascriptCommand;->UNSPECIFIED:Lcom/fusepowered/m2/m2l/MraidCommandFactory$MraidJavascriptCommand;

    aput-object v2, v0, v1

    sput-object v0, Lcom/fusepowered/m2/m2l/MraidCommandFactory$MraidJavascriptCommand;->ENUM$VALUES:[Lcom/fusepowered/m2/m2l/MraidCommandFactory$MraidJavascriptCommand;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 0
    .parameter
    .parameter
    .parameter "command"

    .prologue
    .line 59
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 60
    iput-object p3, p0, Lcom/fusepowered/m2/m2l/MraidCommandFactory$MraidJavascriptCommand;->mCommand:Ljava/lang/String;

    .line 61
    return-void
.end method

.method static synthetic access$2(Ljava/lang/String;)Lcom/fusepowered/m2/m2l/MraidCommandFactory$MraidJavascriptCommand;
    .locals 1
    .parameter

    .prologue
    .line 63
    invoke-static {p0}, Lcom/fusepowered/m2/m2l/MraidCommandFactory$MraidJavascriptCommand;->fromString(Ljava/lang/String;)Lcom/fusepowered/m2/m2l/MraidCommandFactory$MraidJavascriptCommand;

    move-result-object v0

    return-object v0
.end method

.method private static fromString(Ljava/lang/String;)Lcom/fusepowered/m2/m2l/MraidCommandFactory$MraidJavascriptCommand;
    .locals 5
    .parameter "string"

    .prologue
    .line 64
    invoke-static {}, Lcom/fusepowered/m2/m2l/MraidCommandFactory$MraidJavascriptCommand;->values()[Lcom/fusepowered/m2/m2l/MraidCommandFactory$MraidJavascriptCommand;

    move-result-object v1

    array-length v2, v1

    const/4 v3, 0x0

    :goto_0
    if-lt v3, v2, :cond_0

    .line 70
    sget-object v1, Lcom/fusepowered/m2/m2l/MraidCommandFactory$MraidJavascriptCommand;->UNSPECIFIED:Lcom/fusepowered/m2/m2l/MraidCommandFactory$MraidJavascriptCommand;

    :goto_1
    return-object v1

    .line 64
    :cond_0
    aget-object v0, v1, v3

    .line 65
    .local v0, command:Lcom/fusepowered/m2/m2l/MraidCommandFactory$MraidJavascriptCommand;
    iget-object v4, v0, Lcom/fusepowered/m2/m2l/MraidCommandFactory$MraidJavascriptCommand;->mCommand:Ljava/lang/String;

    invoke-virtual {v4, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    move-object v1, v0

    .line 66
    goto :goto_1

    .line 64
    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/fusepowered/m2/m2l/MraidCommandFactory$MraidJavascriptCommand;
    .locals 1
    .parameter

    .prologue
    .line 1
    const-class v0, Lcom/fusepowered/m2/m2l/MraidCommandFactory$MraidJavascriptCommand;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/fusepowered/m2/m2l/MraidCommandFactory$MraidJavascriptCommand;

    return-object p0
.end method

.method public static values()[Lcom/fusepowered/m2/m2l/MraidCommandFactory$MraidJavascriptCommand;
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 1
    sget-object v0, Lcom/fusepowered/m2/m2l/MraidCommandFactory$MraidJavascriptCommand;->ENUM$VALUES:[Lcom/fusepowered/m2/m2l/MraidCommandFactory$MraidJavascriptCommand;

    array-length v1, v0

    new-array v2, v1, [Lcom/fusepowered/m2/m2l/MraidCommandFactory$MraidJavascriptCommand;

    invoke-static {v0, v3, v2, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v2
.end method


# virtual methods
.method getCommand()Ljava/lang/String;
    .locals 1

    .prologue
    .line 74
    iget-object v0, p0, Lcom/fusepowered/m2/m2l/MraidCommandFactory$MraidJavascriptCommand;->mCommand:Ljava/lang/String;

    return-object v0
.end method
