.class public Lcom/acmeaom/android/myradar/b/a;
.super Ljava/lang/Object;
.source "ProGuard"


# static fields
.field static a:Ljava/lang/Integer;

.field static final synthetic b:Z

.field private static c:Ljava/lang/Boolean;

.field private static d:Ljava/lang/Boolean;

.field private static e:Ljava/lang/Integer;

.field private static f:Ljava/lang/Boolean;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 46
    const-class v0, Lcom/acmeaom/android/myradar/b/a;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lcom/acmeaom/android/myradar/b/a;->b:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(I)Ljava/lang/String;
    .locals 4

    .prologue
    .line 183
    :try_start_0
    new-instance v0, Ljava/lang/Exception;

    invoke-direct {v0}, Ljava/lang/Exception;-><init>()V

    throw v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 184
    :catch_0
    move-exception v0

    .line 185
    invoke-virtual {v0}, Ljava/lang/Exception;->fillInStackTrace()Ljava/lang/Throwable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v0

    aget-object v0, v0, p0

    .line 186
    invoke-virtual {v0}, Ljava/lang/StackTraceElement;->getFileName()Ljava/lang/String;

    move-result-object v1

    .line 187
    invoke-virtual {v0}, Ljava/lang/StackTraceElement;->getMethodName()Ljava/lang/String;

    move-result-object v2

    .line 188
    invoke-virtual {v0}, Ljava/lang/StackTraceElement;->getLineNumber()I

    move-result v0

    .line 191
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, "("

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "):"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static a(Landroid/app/Activity;Z)V
    .locals 2

    .prologue
    .line 330
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xb

    if-ge v0, v1, :cond_1

    .line 335
    :cond_0
    :goto_0
    return-void

    .line 332
    :cond_1
    invoke-virtual {p0}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    .line 333
    if-eqz p0, :cond_0

    .line 334
    invoke-virtual {v0, p1}, Landroid/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    goto :goto_0
.end method

.method public static a(Landroid/app/Dialog;Z)V
    .locals 4

    .prologue
    .line 339
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xb

    if-ge v0, v1, :cond_1

    .line 381
    :cond_0
    :goto_0
    return-void

    .line 343
    :cond_1
    if-eqz p0, :cond_0

    .line 344
    invoke-virtual {p0}, Landroid/app/Dialog;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    .line 350
    const v0, 0x102002c

    invoke-virtual {p0, v0}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 352
    if-eqz v0, :cond_0

    .line 353
    new-instance v2, Lcom/acmeaom/android/myradar/b/c;

    invoke-direct {v2, p0}, Lcom/acmeaom/android/myradar/b/c;-><init>(Landroid/app/Dialog;)V

    .line 360
    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    .line 363
    instance-of v3, v1, Landroid/widget/FrameLayout;

    if-eqz v3, :cond_3

    .line 364
    invoke-interface {v1}, Landroid/view/ViewParent;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 366
    instance-of v3, v0, Landroid/widget/LinearLayout;

    if-eqz v3, :cond_2

    .line 368
    check-cast v0, Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_0

    :cond_2
    move-object v0, v1

    .line 372
    check-cast v0, Landroid/widget/FrameLayout;

    invoke-virtual {v0, v2}, Landroid/widget/FrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_0

    .line 377
    :cond_3
    invoke-virtual {v0, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_0
.end method

.method public static a(Landroid/opengl/GLSurfaceView;Z)V
    .locals 2

    .prologue
    .line 384
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xb

    if-ge v0, v1, :cond_0

    .line 387
    :goto_0
    return-void

    .line 386
    :cond_0
    invoke-virtual {p0, p1}, Landroid/opengl/GLSurfaceView;->setPreserveEGLContextOnPause(Z)V

    goto :goto_0
.end method

.method public static a(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 96
    const-string v0, ""

    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    invoke-static {v0, v1}, Lcom/acmeaom/android/myradar/b/a;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 97
    return-void
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 155
    invoke-static {}, Lcom/acmeaom/android/myradar/b/a;->r()Landroid/content/Context;

    move-result-object v1

    .line 156
    new-instance v2, Landroid/os/Handler;

    invoke-virtual {v1}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {v2, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 157
    if-nez p1, :cond_0

    const-string v0, ""

    :goto_0
    invoke-static {p0, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 158
    new-instance v0, Lcom/acmeaom/android/myradar/b/b;

    invoke-direct {v0, p1, p0, v1}, Lcom/acmeaom/android/myradar/b/b;-><init>(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)V

    invoke-virtual {v2, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 164
    return-void

    :cond_0
    move-object v0, p1

    .line 157
    goto :goto_0
.end method

.method public static a(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 1

    .prologue
    .line 83
    invoke-static {}, Lcom/acmeaom/android/myradar/b/a;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 84
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v0

    .line 86
    :cond_0
    invoke-static {p1}, Lcom/acmeaom/android/myradar/app/MyRadarApplication;->a(Ljava/lang/Throwable;)V

    .line 87
    const-string v0, "unexpected exception"

    invoke-static {p0, v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 89
    return-void
.end method

.method public static a(Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 3

    .prologue
    .line 135
    invoke-static {}, Lcom/acmeaom/android/myradar/b/a;->a()Z

    move-result v0

    if-nez v0, :cond_0

    .line 139
    :goto_0
    return-void

    .line 138
    :cond_0
    const-string v0, "DLog"

    const-string v1, "%@"

    const-string v2, "%s"

    invoke-virtual {p0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public static a(Ljava/lang/Throwable;)V
    .locals 1

    .prologue
    .line 92
    const-string v0, ""

    invoke-static {v0, p0}, Lcom/acmeaom/android/myradar/b/a;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 93
    return-void
.end method

.method public static a(Ljavax/microedition/khronos/egl/EGL10;)V
    .locals 1

    .prologue
    .line 295
    invoke-static {p0}, Lcom/acmeaom/android/myradar/b/a;->c(Ljavax/microedition/khronos/egl/EGL10;)Landroid/opengl/GLException;

    move-result-object v0

    .line 296
    if-eqz v0, :cond_0

    .line 297
    invoke-static {v0}, Lcom/acmeaom/android/myradar/b/a;->b(Ljava/lang/Throwable;)V

    .line 299
    :cond_0
    return-void
.end method

.method public static a()Z
    .locals 2

    .prologue
    .line 66
    sget-object v0, Lcom/acmeaom/android/myradar/b/a;->c:Ljava/lang/Boolean;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/acmeaom/android/myradar/b/a;->c:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    .line 69
    :goto_0
    return v0

    .line 68
    :cond_0
    invoke-static {}, Lcom/acmeaom/android/myradar/b/a;->o()Landroid/content/pm/PackageInfo;

    move-result-object v0

    .line 69
    if-eqz v0, :cond_1

    iget-object v1, v0, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    if-eqz v1, :cond_1

    iget-object v0, v0, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    :goto_1
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    sput-object v0, Lcom/acmeaom/android/myradar/b/a;->c:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public static b(I)V
    .locals 2

    .prologue
    .line 391
    int-to-long v0, p0

    :try_start_0
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 395
    :goto_0
    return-void

    .line 392
    :catch_0
    move-exception v0

    .line 393
    invoke-static {}, Lcom/acmeaom/android/myradar/b/a;->c()V

    goto :goto_0
.end method

.method public static b(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 167
    invoke-static {}, Lcom/acmeaom/android/myradar/b/a;->q()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p0}, Lcom/acmeaom/android/myradar/b/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 168
    return-void
.end method

.method public static b(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 3

    .prologue
    .line 207
    invoke-static {}, Lcom/acmeaom/android/myradar/b/a;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 208
    invoke-static {p0}, Lcom/acmeaom/android/myradar/b/a;->g(Ljava/lang/String;)V

    .line 210
    :cond_0
    invoke-static {}, Lcom/acmeaom/android/myradar/b/a;->q()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 211
    return-void
.end method

.method public static b(Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 2

    .prologue
    .line 142
    const-string v0, "ALog"

    invoke-static {p0, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 143
    return-void
.end method

.method public static b(Ljava/lang/Throwable;)V
    .locals 2

    .prologue
    .line 195
    invoke-static {}, Lcom/acmeaom/android/myradar/b/a;->q()Ljava/lang/String;

    move-result-object v0

    const-string v1, "loge"

    invoke-static {v0, v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 196
    return-void
.end method

.method public static b(Ljavax/microedition/khronos/egl/EGL10;)V
    .locals 1

    .prologue
    .line 302
    invoke-static {p0}, Lcom/acmeaom/android/myradar/b/a;->c(Ljavax/microedition/khronos/egl/EGL10;)Landroid/opengl/GLException;

    move-result-object v0

    .line 303
    if-eqz v0, :cond_0

    .line 304
    invoke-static {v0}, Lcom/acmeaom/android/myradar/b/a;->a(Ljava/lang/Throwable;)V

    .line 306
    :cond_0
    return-void
.end method

.method public static b()Z
    .locals 2

    .prologue
    .line 75
    sget-object v0, Lcom/acmeaom/android/myradar/b/a;->d:Ljava/lang/Boolean;

    if-eqz v0, :cond_0

    .line 76
    sget-object v0, Lcom/acmeaom/android/myradar/b/a;->d:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    .line 78
    :goto_0
    return v0

    :cond_0
    sget-object v0, Lcom/acmeaom/android/myradar/app/MyRadarApplication;->a:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "com.acmeaom.android.myradarpro"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    sput-object v0, Lcom/acmeaom/android/myradar/b/a;->d:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    goto :goto_0
.end method

.method private static c(Ljavax/microedition/khronos/egl/EGL10;)Landroid/opengl/GLException;
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 309
    invoke-static {}, Lcom/acmeaom/android/myradar/b/a;->a()Z

    move-result v1

    if-nez v1, :cond_1

    .line 317
    :cond_0
    :goto_0
    return-object v0

    .line 313
    :cond_1
    invoke-interface {p0}, Ljavax/microedition/khronos/egl/EGL10;->eglGetError()I

    move-result v1

    .line 314
    const/16 v2, 0x3000

    if-eq v1, v2, :cond_0

    .line 315
    new-instance v0, Landroid/opengl/GLException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/opengl/GLException;-><init>(ILjava/lang/String;)V

    goto :goto_0
.end method

.method public static c()V
    .locals 2

    .prologue
    .line 100
    const-string v0, ""

    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1}, Ljava/lang/RuntimeException;-><init>()V

    invoke-static {v0, v1}, Lcom/acmeaom/android/myradar/b/a;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 101
    return-void
.end method

.method public static c(Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 199
    invoke-static {}, Lcom/acmeaom/android/myradar/b/a;->q()Ljava/lang/String;

    move-result-object v0

    .line 200
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 201
    invoke-static {}, Lcom/acmeaom/android/myradar/b/a;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 202
    invoke-static {p0}, Lcom/acmeaom/android/myradar/b/a;->g(Ljava/lang/String;)V

    .line 204
    :cond_0
    return-void
.end method

.method public static d(Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 214
    invoke-static {}, Lcom/acmeaom/android/myradar/b/a;->q()Ljava/lang/String;

    move-result-object v0

    .line 215
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 216
    return-void
.end method

.method public static d()Z
    .locals 2

    .prologue
    .line 130
    sget-object v0, Lcom/acmeaom/android/myradar/b/a;->f:Ljava/lang/Boolean;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/acmeaom/android/myradar/b/a;->f:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    .line 131
    :goto_0
    return v0

    :cond_0
    invoke-static {}, Lcom/acmeaom/android/myradar/b/a;->p()I

    move-result v0

    const/4 v1, 0x4

    if-ne v0, v1, :cond_1

    const/4 v0, 0x1

    :goto_1
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    sput-object v0, Lcom/acmeaom/android/myradar/b/a;->f:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public static e()Ljava/lang/String;
    .locals 3

    .prologue
    .line 149
    new-instance v0, Landroid/os/Debug$MemoryInfo;

    invoke-direct {v0}, Landroid/os/Debug$MemoryInfo;-><init>()V

    .line 150
    invoke-static {v0}, Landroid/os/Debug;->getMemoryInfo(Landroid/os/Debug$MemoryInfo;)V

    .line 151
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Native:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, v0, Landroid/os/Debug$MemoryInfo;->nativePrivateDirty:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " KB Dalvik:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v0, v0, Landroid/os/Debug$MemoryInfo;->dalvikPrivateDirty:I

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " KB"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static e(Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 219
    invoke-static {}, Lcom/acmeaom/android/myradar/b/a;->a()Z

    move-result v0

    if-nez v0, :cond_0

    .line 224
    :goto_0
    return-void

    .line 222
    :cond_0
    invoke-static {}, Lcom/acmeaom/android/myradar/b/a;->q()Ljava/lang/String;

    move-result-object v0

    .line 223
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public static f()V
    .locals 2

    .prologue
    .line 235
    invoke-static {}, Lcom/acmeaom/android/myradar/b/a;->a()Z

    move-result v0

    if-nez v0, :cond_0

    .line 240
    :goto_0
    return-void

    .line 238
    :cond_0
    invoke-static {}, Lcom/acmeaom/android/myradar/b/a;->q()Ljava/lang/String;

    move-result-object v0

    .line 239
    const-string v1, "logd"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public static f(Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 227
    invoke-static {}, Lcom/acmeaom/android/myradar/b/a;->a()Z

    move-result v0

    if-nez v0, :cond_0

    .line 232
    :goto_0
    return-void

    .line 230
    :cond_0
    invoke-static {}, Lcom/acmeaom/android/myradar/b/a;->q()Ljava/lang/String;

    move-result-object v0

    .line 231
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public static g()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 265
    invoke-static {}, Lcom/acmeaom/android/myradar/b/a;->a()Z

    move-result v0

    if-nez v0, :cond_1

    .line 275
    :cond_0
    return-void

    .line 266
    :cond_1
    invoke-static {}, Landroid/opengl/GLES20;->glGetError()I

    move-result v0

    .line 267
    if-eqz v0, :cond_0

    .line 268
    new-instance v1, Landroid/opengl/GLException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {v0}, Landroid/opengl/GLU;->gluErrorString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v0, v2}, Landroid/opengl/GLException;-><init>(ILjava/lang/String;)V

    .line 269
    const/4 v0, 0x1

    new-array v0, v0, [I

    .line 270
    const v2, 0x8b8d

    invoke-static {v2, v0, v4}, Landroid/opengl/GLES20;->glGetIntegerv(I[II)V

    .line 271
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "current program: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    aget v0, v0, v4

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/acmeaom/android/myradar/b/a;->c(Ljava/lang/String;)V

    .line 272
    invoke-static {}, Lcom/acmeaom/android/c/g/a;->j()V

    .line 273
    throw v1
.end method

.method public static g(Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 457
    invoke-static {}, Lcom/acmeaom/android/myradar/b/a;->r()Landroid/content/Context;

    move-result-object v0

    .line 458
    new-instance v1, Landroid/os/Handler;

    invoke-virtual {v0}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 459
    new-instance v2, Lcom/acmeaom/android/myradar/b/d;

    invoke-direct {v2, p0, v0}, Lcom/acmeaom/android/myradar/b/d;-><init>(Ljava/lang/String;Landroid/content/Context;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 465
    const-string v0, "toast"

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 466
    return-void
.end method

.method public static h()I
    .locals 3

    .prologue
    .line 279
    sget-object v0, Lcom/acmeaom/android/myradar/b/a;->a:Ljava/lang/Integer;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/acmeaom/android/myradar/b/a;->a:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 283
    :goto_0
    return v0

    .line 280
    :cond_0
    new-instance v1, Landroid/util/DisplayMetrics;

    invoke-direct {v1}, Landroid/util/DisplayMetrics;-><init>()V

    .line 281
    invoke-static {}, Lcom/acmeaom/android/myradar/b/a;->r()Landroid/content/Context;

    move-result-object v0

    const-string v2, "window"

    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    .line 282
    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 283
    iget v0, v1, Landroid/util/DisplayMetrics;->densityDpi:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    sput-object v0, Lcom/acmeaom/android/myradar/b/a;->a:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    goto :goto_0
.end method

.method public static i()F
    .locals 2

    .prologue
    .line 287
    invoke-static {}, Lcom/acmeaom/android/myradar/b/a;->h()I

    move-result v0

    int-to-float v0, v0

    const/high16 v1, 0x43200000

    div-float/2addr v0, v1

    return v0
.end method

.method public static j()Z
    .locals 2

    .prologue
    .line 431
    const-string v0, "com.android.vending"

    invoke-static {}, Lcom/acmeaom/android/myradar/b/a;->s()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public static k()Z
    .locals 2

    .prologue
    .line 440
    sget-object v0, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    const-string v1, "Amazon"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    sget-object v0, Landroid/os/Build;->MODEL:Ljava/lang/String;

    const-string v1, "Kindle Fire"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Landroid/os/Build;->MODEL:Ljava/lang/String;

    const-string v1, "KF"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/acmeaom/android/myradar/b/a;->j()Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    .line 449
    :goto_0
    return v0

    .line 440
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static l()Landroid/content/SharedPreferences;
    .locals 1

    .prologue
    .line 476
    sget-object v0, Lcom/acmeaom/android/myradar/app/MyRadarApplication;->a:Landroid/content/Context;

    invoke-static {v0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    return-object v0
.end method

.method public static m()Landroid/content/Context;
    .locals 1

    .prologue
    .line 480
    sget-object v0, Lcom/acmeaom/android/myradar/app/MyRadarApplication;->a:Landroid/content/Context;

    return-object v0
.end method

.method public static n()I
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 485
    :try_start_0
    invoke-static {}, Lcom/acmeaom/android/myradar/b/a;->m()Landroid/content/Context;

    move-result-object v1

    .line 486
    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const/4 v3, 0x0

    invoke-virtual {v2, v1, v3}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v1

    .line 488
    iget v0, v1, Landroid/content/pm/PackageInfo;->versionCode:I
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 492
    :goto_0
    return v0

    .line 489
    :catch_0
    move-exception v1

    .line 491
    const-string v2, "Could not get package name"

    invoke-static {v2, v1}, Lcom/acmeaom/android/myradar/b/a;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method private static o()Landroid/content/pm/PackageInfo;
    .locals 3

    .prologue
    .line 48
    invoke-static {}, Lcom/acmeaom/android/myradar/b/a;->r()Landroid/content/Context;

    move-result-object v0

    .line 49
    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    .line 50
    if-eqz v1, :cond_0

    .line 52
    :try_start_0
    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 53
    if-eqz v0, :cond_0

    .line 60
    :goto_0
    return-object v0

    .line 56
    :catch_0
    move-exception v0

    .line 60
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static p()I
    .locals 1

    .prologue
    .line 121
    sget-object v0, Lcom/acmeaom/android/myradar/b/a;->e:Ljava/lang/Integer;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/acmeaom/android/myradar/b/a;->e:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 125
    :goto_0
    return v0

    .line 122
    :cond_0
    invoke-static {}, Lcom/acmeaom/android/myradar/b/a;->r()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->screenLayout:I

    .line 124
    and-int/lit8 v0, v0, 0xf

    .line 125
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    sput-object v0, Lcom/acmeaom/android/myradar/b/a;->e:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    goto :goto_0
.end method

.method private static q()Ljava/lang/String;
    .locals 1

    .prologue
    .line 175
    const/4 v0, 0x3

    invoke-static {v0}, Lcom/acmeaom/android/myradar/b/a;->a(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static r()Landroid/content/Context;
    .locals 1

    .prologue
    .line 291
    sget-object v0, Lcom/acmeaom/android/myradar/app/MyRadarApplication;->a:Landroid/content/Context;

    return-object v0
.end method

.method private static s()Ljava/lang/String;
    .locals 2

    .prologue
    .line 435
    sget-object v0, Lcom/acmeaom/android/myradar/app/MyRadarApplication;->a:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 436
    sget-object v1, Lcom/acmeaom/android/myradar/app/MyRadarApplication;->a:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->getInstallerPackageName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
