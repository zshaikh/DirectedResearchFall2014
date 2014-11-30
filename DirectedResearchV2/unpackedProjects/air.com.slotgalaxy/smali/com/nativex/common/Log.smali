.class public Lcom/nativex/common/Log;
.super Ljava/lang/Object;
.source "Log.java"


# static fields
.field private static TAG:Ljava/lang/String;

.field private static showLog:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 32
    const/4 v0, 0x0

    sput-boolean v0, Lcom/nativex/common/Log;->showLog:Z

    .line 37
    const-string v0, "nativeX SDK"

    sput-object v0, Lcom/nativex/common/Log;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Ljava/lang/String;)V
    .locals 1
    .param p0, "msg"    # Ljava/lang/String;

    .prologue
    .line 190
    const/4 v0, 0x7

    invoke-static {v0, p0}, Lcom/nativex/common/Log;->print(ILjava/lang/String;)V

    .line 191
    return-void
.end method

.method public static a(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 1
    .param p0, "msg"    # Ljava/lang/String;
    .param p1, "tr"    # Ljava/lang/Throwable;

    .prologue
    .line 204
    const/4 v0, 0x7

    invoke-static {v0, p0, p1}, Lcom/nativex/common/Log;->print(ILjava/lang/String;Ljava/lang/Throwable;)V

    .line 205
    return-void
.end method

.method public static d(Ljava/lang/String;)V
    .locals 1
    .param p0, "msg"    # Ljava/lang/String;

    .prologue
    .line 90
    const/4 v0, 0x3

    invoke-static {v0, p0}, Lcom/nativex/common/Log;->print(ILjava/lang/String;)V

    .line 91
    return-void
.end method

.method public static d(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 1
    .param p0, "msg"    # Ljava/lang/String;
    .param p1, "tr"    # Ljava/lang/Throwable;

    .prologue
    .line 104
    const/4 v0, 0x3

    invoke-static {v0, p0, p1}, Lcom/nativex/common/Log;->print(ILjava/lang/String;Ljava/lang/Throwable;)V

    .line 105
    return-void
.end method

.method public static e(Ljava/lang/String;)V
    .locals 1
    .param p0, "msg"    # Ljava/lang/String;

    .prologue
    .line 165
    const/4 v0, 0x6

    invoke-static {v0, p0}, Lcom/nativex/common/Log;->print(ILjava/lang/String;)V

    .line 166
    return-void
.end method

.method public static e(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 1
    .param p0, "msg"    # Ljava/lang/String;
    .param p1, "tr"    # Ljava/lang/Throwable;

    .prologue
    .line 179
    const/4 v0, 0x6

    invoke-static {v0, p0, p1}, Lcom/nativex/common/Log;->print(ILjava/lang/String;Ljava/lang/Throwable;)V

    .line 180
    return-void
.end method

.method public static enableLogging(Z)V
    .locals 0
    .param p0, "enable"    # Z

    .prologue
    .line 45
    sput-boolean p0, Lcom/nativex/common/Log;->showLog:Z

    .line 46
    return-void
.end method

.method public static i(Ljava/lang/String;)V
    .locals 1
    .param p0, "msg"    # Ljava/lang/String;

    .prologue
    .line 115
    const/4 v0, 0x4

    invoke-static {v0, p0}, Lcom/nativex/common/Log;->print(ILjava/lang/String;)V

    .line 116
    return-void
.end method

.method public static i(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 1
    .param p0, "msg"    # Ljava/lang/String;
    .param p1, "tr"    # Ljava/lang/Throwable;

    .prologue
    .line 129
    const/4 v0, 0x4

    invoke-static {v0, p0, p1}, Lcom/nativex/common/Log;->print(ILjava/lang/String;Ljava/lang/Throwable;)V

    .line 130
    return-void
.end method

.method public static isLogging()Z
    .locals 1

    .prologue
    .line 54
    sget-boolean v0, Lcom/nativex/common/Log;->showLog:Z

    return v0
.end method

.method private static print(ILjava/lang/String;)V
    .locals 1
    .param p0, "priority"    # I
    .param p1, "msg"    # Ljava/lang/String;

    .prologue
    .line 239
    sget-boolean v0, Lcom/nativex/common/Log;->showLog:Z

    if-eqz v0, :cond_0

    .line 240
    sget-object v0, Lcom/nativex/common/Log;->TAG:Ljava/lang/String;

    invoke-static {p0, v0, p1}, Landroid/util/Log;->println(ILjava/lang/String;Ljava/lang/String;)I

    .line 242
    :cond_0
    return-void
.end method

.method private static print(ILjava/lang/String;Ljava/lang/Throwable;)V
    .locals 3
    .param p0, "priority"    # I
    .param p1, "msg"    # Ljava/lang/String;
    .param p2, "tr"    # Ljava/lang/Throwable;

    .prologue
    .line 222
    sget-boolean v0, Lcom/nativex/common/Log;->showLog:Z

    if-eqz v0, :cond_0

    .line 223
    sget-object v0, Lcom/nativex/common/Log;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/16 v2, 0xa

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p2}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v0, v1}, Landroid/util/Log;->println(ILjava/lang/String;Ljava/lang/String;)I

    .line 225
    :cond_0
    return-void
.end method

.method public static v(Ljava/lang/String;)V
    .locals 1
    .param p0, "msg"    # Ljava/lang/String;

    .prologue
    .line 65
    const/4 v0, 0x2

    invoke-static {v0, p0}, Lcom/nativex/common/Log;->print(ILjava/lang/String;)V

    .line 66
    return-void
.end method

.method public static v(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 1
    .param p0, "msg"    # Ljava/lang/String;
    .param p1, "tr"    # Ljava/lang/Throwable;

    .prologue
    .line 79
    const/4 v0, 0x2

    invoke-static {v0, p0, p1}, Lcom/nativex/common/Log;->print(ILjava/lang/String;Ljava/lang/Throwable;)V

    .line 80
    return-void
.end method

.method public static w(Ljava/lang/String;)V
    .locals 1
    .param p0, "msg"    # Ljava/lang/String;

    .prologue
    .line 140
    const/4 v0, 0x5

    invoke-static {v0, p0}, Lcom/nativex/common/Log;->print(ILjava/lang/String;)V

    .line 141
    return-void
.end method

.method public static w(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 1
    .param p0, "msg"    # Ljava/lang/String;
    .param p1, "tr"    # Ljava/lang/Throwable;

    .prologue
    .line 154
    const/4 v0, 0x5

    invoke-static {v0, p0, p1}, Lcom/nativex/common/Log;->print(ILjava/lang/String;Ljava/lang/Throwable;)V

    .line 155
    return-void
.end method
