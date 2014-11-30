.class Ldolphin/webkit/fq;
.super Ljava/lang/Object;
.source "PluginFullScreenHolder.java"

# interfaces
.implements Landroid/view/SurfaceHolder$Callback;


# instance fields
.field final synthetic a:Landroid/view/SurfaceView;

.field final synthetic b:Ljava/lang/Class;

.field final synthetic c:Landroid/view/View;

.field final synthetic d:I

.field final synthetic e:Ldolphin/webkit/fp;


# direct methods
.method constructor <init>(Ldolphin/webkit/fp;Landroid/view/SurfaceView;Ljava/lang/Class;Landroid/view/View;I)V
    .locals 0

    .prologue
    .line 73
    iput-object p1, p0, Ldolphin/webkit/fq;->e:Ldolphin/webkit/fp;

    iput-object p2, p0, Ldolphin/webkit/fq;->a:Landroid/view/SurfaceView;

    iput-object p3, p0, Ldolphin/webkit/fq;->b:Ljava/lang/Class;

    iput-object p4, p0, Ldolphin/webkit/fq;->c:Landroid/view/View;

    iput p5, p0, Ldolphin/webkit/fq;->d:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public surfaceChanged(Landroid/view/SurfaceHolder;III)V
    .locals 9

    .prologue
    .line 89
    :try_start_0
    iget-object v0, p0, Ldolphin/webkit/fq;->b:Ljava/lang/Class;

    const-string v1, "nppLock"

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    .line 90
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 91
    iget-object v1, p0, Ldolphin/webkit/fq;->c:Landroid/view/View;

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 93
    iget-object v0, p0, Ldolphin/webkit/fq;->b:Ljava/lang/Class;

    const-string v2, "validNPP"

    invoke-virtual {v0, v2}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    .line 94
    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 96
    monitor-enter v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 98
    :try_start_1
    iget-object v2, p0, Ldolphin/webkit/fq;->c:Landroid/view/View;

    invoke-virtual {v0, v2}, Ljava/lang/reflect/Field;->getBoolean(Ljava/lang/Object;)Z

    move-result v0

    .line 100
    if-eqz v0, :cond_0

    .line 102
    iget-object v0, p0, Ldolphin/webkit/fq;->e:Ldolphin/webkit/fp;

    invoke-static {v0}, Ldolphin/webkit/fp;->a(Ldolphin/webkit/fp;)Ldolphin/webkit/WebViewClassic;

    move-result-object v0

    iget v2, p0, Ldolphin/webkit/fq;->d:I

    invoke-virtual {v0, v2}, Ldolphin/webkit/WebViewClassic;->nativeNotifyFlashSurfaceChanged(I)I

    move-result v0

    .line 103
    if-gez v0, :cond_1

    .line 104
    const-string v0, "Passible incompitable Flash plugin installed. Please install latest version."

    invoke-static {v0}, Ldolphin/util/Log;->e(Ljava/lang/String;)I

    .line 125
    :cond_0
    :goto_0
    monitor-exit v1

    .line 130
    :goto_1
    return-void

    .line 106
    :cond_1
    const/4 v2, 0x1

    if-ne v0, v2, :cond_0

    .line 107
    iget-object v0, p0, Ldolphin/webkit/fq;->e:Ldolphin/webkit/fp;

    invoke-static {v0}, Ldolphin/webkit/fp;->a(Ldolphin/webkit/fp;)Ldolphin/webkit/WebViewClassic;

    move-result-object v0

    invoke-virtual {v0}, Ldolphin/webkit/WebViewClassic;->d()Ldolphin/webkit/WebView;

    move-result-object v0

    invoke-virtual {v0}, Ldolphin/webkit/WebView;->getActivityContext()Landroid/app/Activity;

    move-result-object v0

    const-string v2, "window"

    invoke-virtual {v0, v2}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    .line 108
    invoke-virtual {v0}, Landroid/view/Display;->getOrientation()I

    move-result v2

    .line 110
    iget-object v3, p0, Ldolphin/webkit/fq;->b:Ljava/lang/Class;

    const-string v4, "nativeOrientationChanged"

    const/4 v5, 0x4

    new-array v5, v5, [Ljava/lang/Class;

    const/4 v6, 0x0

    sget-object v7, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v7, v5, v6

    const/4 v6, 0x1

    sget-object v7, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v7, v5, v6

    const/4 v6, 0x2

    sget-object v7, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v7, v5, v6

    const/4 v6, 0x3

    sget-object v7, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v7, v5, v6

    invoke-virtual {v3, v4, v5}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3

    .line 111
    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    .line 113
    iget-object v4, p0, Ldolphin/webkit/fq;->b:Ljava/lang/Class;

    const-string v5, "nativeSurfaceChanged"

    const/4 v6, 0x4

    new-array v6, v6, [Ljava/lang/Class;

    const/4 v7, 0x0

    sget-object v8, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v8, v6, v7

    const/4 v7, 0x1

    sget-object v8, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v8, v6, v7

    const/4 v7, 0x2

    sget-object v8, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v8, v6, v7

    const/4 v7, 0x3

    sget-object v8, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v8, v6, v7

    invoke-virtual {v4, v5, v6}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v4

    .line 114
    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    .line 116
    iget-object v5, p0, Ldolphin/webkit/fq;->c:Landroid/view/View;

    const/4 v6, 0x4

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    iget v8, p0, Ldolphin/webkit/fq;->d:I

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v6, v7

    const/4 v7, 0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v6, v7

    const/4 v2, 0x2

    invoke-virtual {v0}, Landroid/view/Display;->getWidth()I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v2

    const/4 v2, 0x3

    invoke-virtual {v0}, Landroid/view/Display;->getHeight()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v6, v2

    invoke-virtual {v3, v5, v6}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 118
    const/4 v0, 0x4

    if-ne p2, v0, :cond_2

    const/4 v0, 0x2

    .line 119
    :goto_2
    iget-object v2, p0, Ldolphin/webkit/fq;->c:Landroid/view/View;

    const/4 v3, 0x4

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v5, 0x0

    iget v6, p0, Ldolphin/webkit/fq;->d:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v3, v5

    const/4 v5, 0x1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v3, v5

    const/4 v0, 0x2

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v0

    const/4 v0, 0x3

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v0

    invoke-virtual {v4, v2, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 120
    iget-object v0, p0, Ldolphin/webkit/fq;->e:Ldolphin/webkit/fp;

    invoke-static {v0}, Ldolphin/webkit/fp;->a(Ldolphin/webkit/fp;)Ldolphin/webkit/WebViewClassic;

    move-result-object v0

    iget v2, p0, Ldolphin/webkit/fq;->d:I

    invoke-virtual {v0, v2}, Ldolphin/webkit/WebViewClassic;->nativeNotifyFlashSurfaceChanged(I)I

    move-result v0

    if-nez v0, :cond_0

    .line 121
    const-string v0, "flash"

    const-string v2, "fixed a flash freeze for flash plugin!"

    invoke-static {v0, v2}, Ldolphin/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 125
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw v0
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 127
    :catch_0
    move-exception v0

    .line 128
    invoke-static {v0}, Ldolphin/util/Log;->e(Ljava/lang/Throwable;)I

    goto/16 :goto_1

    .line 118
    :cond_2
    const/4 v0, 0x1

    if-ne p2, v0, :cond_3

    const/4 v0, 0x1

    goto :goto_2

    :cond_3
    const/4 v0, 0x0

    goto :goto_2
.end method

.method public surfaceCreated(Landroid/view/SurfaceHolder;)V
    .locals 0

    .prologue
    .line 82
    return-void
.end method

.method public surfaceDestroyed(Landroid/view/SurfaceHolder;)V
    .locals 1

    .prologue
    .line 77
    iget-object v0, p0, Ldolphin/webkit/fq;->a:Landroid/view/SurfaceView;

    invoke-virtual {v0}, Landroid/view/SurfaceView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v0

    invoke-interface {v0, p0}, Landroid/view/SurfaceHolder;->removeCallback(Landroid/view/SurfaceHolder$Callback;)V

    .line 78
    return-void
.end method
