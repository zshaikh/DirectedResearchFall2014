.class public Lcom/facebook/orca/threadview/ThreadViewMapActivityTabShim;
.super Ljava/lang/Object;
.source "ThreadViewMapActivityTabShim.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a()Z
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 15
    :try_start_0
    const-string v0, "com.google.android.maps.MapActivity"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    .line 17
    :goto_0
    return v0

    :cond_0
    move v0, v1

    .line 15
    goto :goto_0

    .line 16
    :catch_0
    move-exception v0

    move v0, v1

    .line 17
    goto :goto_0
.end method

.method public static b()Ljava/lang/Class;
    .locals 1

    .prologue
    .line 23
    :try_start_0
    const-string v0, "com.facebook.orca.threadview.ThreadViewMapActivityTabImpl"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 25
    :goto_0
    return-object v0

    .line 24
    :catch_0
    move-exception v0

    .line 25
    const/4 v0, 0x0

    goto :goto_0
.end method
