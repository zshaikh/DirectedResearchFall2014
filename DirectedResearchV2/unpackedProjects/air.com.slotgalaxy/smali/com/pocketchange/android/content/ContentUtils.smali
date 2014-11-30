.class public Lcom/pocketchange/android/content/ContentUtils;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static writeSharedPreferences(Landroid/content/SharedPreferences$Editor;)V
    .locals 5
    .param p0, "editor"    # Landroid/content/SharedPreferences$Editor;

    .prologue
    const/4 v4, 0x0

    .line 15
    invoke-static {}, Lcom/pocketchange/android/util/ThreadUtils;->isMainThread()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 16
    const/4 v0, 0x1

    .line 17
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x9

    if-lt v1, v2, :cond_0

    .line 19
    :try_start_0
    const-class v1, Landroid/content/SharedPreferences$Editor;

    const-string v2, "apply"

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Class;

    invoke-virtual {v1, v2, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    .line 20
    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v1, p0, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move v0, v4

    .line 26
    :cond_0
    :goto_0
    if-eqz v0, :cond_1

    .line 27
    new-instance v0, Lcom/pocketchange/android/content/ContentUtils$1;

    invoke-direct {v0, p0}, Lcom/pocketchange/android/content/ContentUtils$1;-><init>(Landroid/content/SharedPreferences$Editor;)V

    invoke-virtual {v0}, Lcom/pocketchange/android/content/ContentUtils$1;->start()V

    .line 36
    :cond_1
    :goto_1
    return-void

    .line 22
    :catch_0
    move-exception v1

    .line 23
    const-string v2, "ContentUtils"

    const-string v3, "Error invoking apply method on persistent data, falling back to commit"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 34
    :cond_2
    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    goto :goto_1
.end method
