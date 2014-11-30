.class public final Lcom/mgeek/android/util/Log;
.super Ljava/lang/Object;
.source "Log.java"


# annotations
.annotation build Lcom/dolphin/browser/annotation/AddonSDK;
.end annotation

.annotation build Lcom/dolphin/browser/annotation/KeepPublic;
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field public static final ALL:I = -0x1
    .annotation build Lcom/dolphin/browser/annotation/AddonSDK;
    .end annotation
.end field

.field public static final ASSERT:I = 0x7
    .annotation build Lcom/dolphin/browser/annotation/AddonSDK;
    .end annotation
.end field

.field public static final DEBUG:I = 0x3
    .annotation build Lcom/dolphin/browser/annotation/AddonSDK;
    .end annotation
.end field

.field public static final ERROR:I = 0x6
    .annotation build Lcom/dolphin/browser/annotation/AddonSDK;
    .end annotation
.end field

.field public static final INFO:I = 0x4
    .annotation build Lcom/dolphin/browser/annotation/AddonSDK;
    .end annotation
.end field

.field public static final NONE:I = 0x7fffffff
    .annotation build Lcom/dolphin/browser/annotation/AddonSDK;
    .end annotation
.end field

.field public static final VERBOSE:I = 0x2
    .annotation build Lcom/dolphin/browser/annotation/AddonSDK;
    .end annotation
.end field

.field public static final WARN:I = 0x5
    .annotation build Lcom/dolphin/browser/annotation/AddonSDK;
    .end annotation
.end field


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 113
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 114
    return-void
.end method

.method public static d(Ljava/lang/String;)I
    .locals 1
    .annotation build Lcom/dolphin/browser/annotation/AddonSDK;
    .end annotation

    .prologue
    .line 171
    invoke-static {p0}, Lcom/dolphin/browser/util/Log;->d(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public static d(Ljava/lang/String;Ljava/lang/String;)I
    .locals 1
    .annotation build Lcom/dolphin/browser/annotation/AddonSDK;
    .end annotation

    .prologue
    .line 183
    invoke-static {p0, p1}, Lcom/dolphin/browser/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public static d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    .locals 1
    .annotation build Lcom/dolphin/browser/annotation/AddonSDK;
    .end annotation

    .prologue
    .line 209
    invoke-static {p0, p1, p2}, Lcom/dolphin/browser/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-result v0

    return v0
.end method

.method public static varargs d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I
    .locals 1
    .annotation build Lcom/dolphin/browser/annotation/AddonSDK;
    .end annotation

    .prologue
    .line 196
    invoke-static {p0, p1, p2}, Lcom/dolphin/browser/util/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public static e(Ljava/lang/String;)I
    .locals 1
    .annotation build Lcom/dolphin/browser/annotation/AddonSDK;
    .end annotation

    .prologue
    .line 367
    invoke-static {p0}, Lcom/dolphin/browser/util/Log;->e(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public static e(Ljava/lang/String;Ljava/lang/String;)I
    .locals 1
    .annotation build Lcom/dolphin/browser/annotation/AddonSDK;
    .end annotation

    .prologue
    .line 389
    invoke-static {p0, p1}, Lcom/dolphin/browser/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public static e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    .locals 1
    .annotation build Lcom/dolphin/browser/annotation/AddonSDK;
    .end annotation

    .prologue
    .line 413
    invoke-static {p0, p1, p2}, Lcom/dolphin/browser/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-result v0

    return v0
.end method

.method public static varargs e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I
    .locals 1
    .annotation build Lcom/dolphin/browser/annotation/AddonSDK;
    .end annotation

    .prologue
    .line 357
    invoke-static {p0, p1, p2}, Lcom/dolphin/browser/util/Log;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public static e(Ljava/lang/String;Ljava/lang/Throwable;)I
    .locals 1
    .annotation build Lcom/dolphin/browser/annotation/AddonSDK;
    .end annotation

    .prologue
    .line 400
    invoke-static {p0, p1}, Lcom/dolphin/browser/util/Log;->e(Ljava/lang/String;Ljava/lang/Throwable;)I

    move-result v0

    return v0
.end method

.method public static e(Ljava/lang/Throwable;)I
    .locals 1
    .annotation build Lcom/dolphin/browser/annotation/AddonSDK;
    .end annotation

    .prologue
    .line 377
    invoke-static {p0}, Lcom/dolphin/browser/util/Log;->e(Ljava/lang/Throwable;)I

    move-result v0

    return v0
.end method

.method public static getApplicationTag()Ljava/lang/String;
    .locals 1
    .annotation build Lcom/dolphin/browser/annotation/AddonSDK;
    .end annotation

    .prologue
    .line 88
    invoke-static {}, Lcom/dolphin/browser/util/Log;->getApplicationTag()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getFilterLevel()I
    .locals 1
    .annotation build Lcom/dolphin/browser/annotation/AddonSDK;
    .end annotation

    .prologue
    .line 110
    invoke-static {}, Lcom/dolphin/browser/util/Log;->getFilterLevel()I

    move-result v0

    return v0
.end method

.method public static getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;
    .locals 1
    .annotation build Lcom/dolphin/browser/annotation/AddonSDK;
    .end annotation

    .prologue
    .line 423
    invoke-static {p0}, Lcom/dolphin/browser/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static i(Ljava/lang/String;)I
    .locals 1
    .annotation build Lcom/dolphin/browser/annotation/AddonSDK;
    .end annotation

    .prologue
    .line 219
    invoke-static {p0}, Lcom/dolphin/browser/util/Log;->i(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public static i(Ljava/lang/String;Ljava/lang/String;)I
    .locals 1
    .annotation build Lcom/dolphin/browser/annotation/AddonSDK;
    .end annotation

    .prologue
    .line 231
    invoke-static {p0, p1}, Lcom/dolphin/browser/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public static i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    .locals 1
    .annotation build Lcom/dolphin/browser/annotation/AddonSDK;
    .end annotation

    .prologue
    .line 257
    invoke-static {p0, p1, p2}, Lcom/dolphin/browser/util/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-result v0

    return v0
.end method

.method public static varargs i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I
    .locals 1
    .annotation build Lcom/dolphin/browser/annotation/AddonSDK;
    .end annotation

    .prologue
    .line 244
    invoke-static {p0, p1, p2}, Lcom/dolphin/browser/util/Log;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public static isLoggable(Ljava/lang/String;I)Z
    .locals 1
    .annotation build Lcom/dolphin/browser/annotation/AddonSDK;
    .end annotation

    .prologue
    .line 328
    invoke-static {p0, p1}, Lcom/dolphin/browser/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    return v0
.end method

.method public static println(ILjava/lang/String;Ljava/lang/String;)I
    .locals 1
    .annotation build Lcom/dolphin/browser/annotation/AddonSDK;
    .end annotation

    .prologue
    .line 437
    invoke-static {p0, p1, p2}, Lcom/dolphin/browser/util/Log;->println(ILjava/lang/String;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public static setApplicationTag(Ljava/lang/String;)V
    .locals 0
    .annotation build Lcom/dolphin/browser/annotation/AddonSDK;
    .end annotation

    .prologue
    .line 78
    invoke-static {p0}, Lcom/dolphin/browser/util/Log;->setApplicationTag(Ljava/lang/String;)V

    .line 79
    return-void
.end method

.method public static setFilterLevel(I)V
    .locals 0
    .annotation build Lcom/dolphin/browser/annotation/AddonSDK;
    .end annotation

    .prologue
    .line 99
    invoke-static {p0}, Lcom/dolphin/browser/util/Log;->setFilterLevel(I)V

    .line 100
    return-void
.end method

.method public static v(Ljava/lang/String;)I
    .locals 1
    .annotation build Lcom/dolphin/browser/annotation/AddonSDK;
    .end annotation

    .prologue
    .line 123
    invoke-static {p0}, Lcom/dolphin/browser/util/Log;->v(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public static v(Ljava/lang/String;Ljava/lang/String;)I
    .locals 1
    .annotation build Lcom/dolphin/browser/annotation/AddonSDK;
    .end annotation

    .prologue
    .line 135
    invoke-static {p0, p1}, Lcom/dolphin/browser/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public static v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    .locals 1
    .annotation build Lcom/dolphin/browser/annotation/AddonSDK;
    .end annotation

    .prologue
    .line 161
    invoke-static {p0, p1, p2}, Lcom/dolphin/browser/util/Log;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-result v0

    return v0
.end method

.method public static varargs v(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I
    .locals 1
    .annotation build Lcom/dolphin/browser/annotation/AddonSDK;
    .end annotation

    .prologue
    .line 148
    invoke-static {p0, p1, p2}, Lcom/dolphin/browser/util/Log;->v(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public static w(Ljava/lang/String;)I
    .locals 1
    .annotation build Lcom/dolphin/browser/annotation/AddonSDK;
    .end annotation

    .prologue
    .line 267
    invoke-static {p0}, Lcom/dolphin/browser/util/Log;->w(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public static w(Ljava/lang/String;Ljava/lang/String;)I
    .locals 1
    .annotation build Lcom/dolphin/browser/annotation/AddonSDK;
    .end annotation

    .prologue
    .line 279
    invoke-static {p0, p1}, Lcom/dolphin/browser/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public static w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    .locals 1
    .annotation build Lcom/dolphin/browser/annotation/AddonSDK;
    .end annotation

    .prologue
    .line 305
    invoke-static {p0, p1, p2}, Lcom/dolphin/browser/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-result v0

    return v0
.end method

.method public static varargs w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I
    .locals 1
    .annotation build Lcom/dolphin/browser/annotation/AddonSDK;
    .end annotation

    .prologue
    .line 292
    invoke-static {p0, p1, p2}, Lcom/dolphin/browser/util/Log;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public static w(Ljava/lang/String;Ljava/lang/Throwable;)I
    .locals 1
    .annotation build Lcom/dolphin/browser/annotation/AddonSDK;
    .end annotation

    .prologue
    .line 339
    invoke-static {p0, p1}, Lcom/dolphin/browser/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    move-result v0

    return v0
.end method

.method public static w(Ljava/lang/Throwable;)I
    .locals 1
    .annotation build Lcom/dolphin/browser/annotation/AddonSDK;
    .end annotation

    .prologue
    .line 344
    invoke-static {p0}, Lcom/dolphin/browser/util/Log;->w(Ljava/lang/Throwable;)I

    move-result v0

    return v0
.end method
