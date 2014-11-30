.class Ldolphin/webkit/fp;
.super Ljava/lang/Object;
.source "PluginFullScreenHolder.java"


# static fields
.field private static f:Ldolphin/webkit/fs;


# instance fields
.field private final a:Ldolphin/webkit/WebViewClassic;

.field private final b:I

.field private final c:I

.field private d:I

.field private e:Z

.field private g:Landroid/view/View;

.field private final h:Ldolphin/webkit/WebChromeClient$CustomViewCallback;


# direct methods
.method constructor <init>(Ldolphin/webkit/WebViewClassic;II)V
    .locals 1

    .prologue
    .line 59
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 51
    const/4 v0, -0x1

    iput v0, p0, Ldolphin/webkit/fp;->d:I

    .line 292
    new-instance v0, Ldolphin/webkit/fr;

    invoke-direct {v0, p0}, Ldolphin/webkit/fr;-><init>(Ldolphin/webkit/fp;)V

    iput-object v0, p0, Ldolphin/webkit/fp;->h:Ldolphin/webkit/WebChromeClient$CustomViewCallback;

    .line 60
    iput-object p1, p0, Ldolphin/webkit/fp;->a:Ldolphin/webkit/WebViewClassic;

    .line 61
    iput p3, p0, Ldolphin/webkit/fp;->b:I

    .line 62
    iput p2, p0, Ldolphin/webkit/fp;->c:I

    .line 63
    return-void
.end method

.method static synthetic a(Ldolphin/webkit/fp;)Ldolphin/webkit/WebViewClassic;
    .locals 1

    .prologue
    .line 45
    iget-object v0, p0, Ldolphin/webkit/fp;->a:Ldolphin/webkit/WebViewClassic;

    return-object v0
.end method

.method static synthetic a(Ldolphin/webkit/fs;)Ldolphin/webkit/fs;
    .locals 0

    .prologue
    .line 45
    sput-object p0, Ldolphin/webkit/fp;->f:Ldolphin/webkit/fs;

    return-object p0
.end method

.method static synthetic b(Ldolphin/webkit/fp;)I
    .locals 1

    .prologue
    .line 45
    iget v0, p0, Ldolphin/webkit/fp;->b:I

    return v0
.end method

.method private b(Landroid/view/View;)V
    .locals 8

    .prologue
    .line 67
    :try_start_0
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    .line 68
    const-string v1, "npp"

    invoke-virtual {v4, v1}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v1

    .line 69
    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 70
    invoke-virtual {v1, p1}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I

    move-result v6

    .line 72
    move-object v0, p1

    check-cast v0, Landroid/view/SurfaceView;

    move-object v3, v0

    .line 73
    invoke-virtual {v3}, Landroid/view/SurfaceView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v7

    new-instance v1, Ldolphin/webkit/fq;

    move-object v2, p0

    move-object v5, p1

    invoke-direct/range {v1 .. v6}, Ldolphin/webkit/fq;-><init>(Ldolphin/webkit/fp;Landroid/view/SurfaceView;Ljava/lang/Class;Landroid/view/View;I)V

    invoke-interface {v7, v1}, Landroid/view/SurfaceHolder;->addCallback(Landroid/view/SurfaceHolder$Callback;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 135
    :goto_0
    return-void

    .line 133
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method static synthetic c(Ldolphin/webkit/fp;)Landroid/view/View;
    .locals 1

    .prologue
    .line 45
    iget-object v0, p0, Ldolphin/webkit/fp;->g:Landroid/view/View;

    return-object v0
.end method

.method private c(Landroid/view/View;)V
    .locals 4

    .prologue
    .line 140
    :try_start_0
    iget-object v0, p0, Ldolphin/webkit/fp;->a:Ldolphin/webkit/WebViewClassic;

    invoke-virtual {v0}, Ldolphin/webkit/WebViewClassic;->d()Ldolphin/webkit/WebView;

    move-result-object v0

    invoke-virtual {v0}, Ldolphin/webkit/WebView;->getActivityContext()Landroid/app/Activity;

    move-result-object v0

    .line 142
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    .line 143
    const-string v2, "mBrowserActivity"

    invoke-virtual {v1, v2}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v2

    .line 144
    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 145
    invoke-virtual {v2, p1, v0}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 147
    sget-boolean v2, Ldolphin/webkit/VersionInfo;->IS_ICS:Z

    if-eqz v2, :cond_0

    .line 148
    invoke-direct {p0, p1}, Ldolphin/webkit/fp;->b(Landroid/view/View;)V

    .line 149
    :cond_0
    const-string v2, "mContext"

    invoke-virtual {v1, v2}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v1

    .line 150
    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 151
    invoke-virtual {v1, p1, v0}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 154
    :goto_0
    return-void

    .line 152
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method private d(Landroid/view/View;)V
    .locals 3

    .prologue
    .line 158
    :try_start_0
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    .line 159
    const-string v1, "mBrowserOrientationSettingOverriden"

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v1

    .line 160
    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 161
    invoke-virtual {v1, p1}, Ljava/lang/reflect/Field;->getBoolean(Ljava/lang/Object;)Z

    move-result v1

    iput-boolean v1, p0, Ldolphin/webkit/fp;->e:Z

    .line 163
    const-string v1, "mBrowserOrientationSetting"

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    .line 164
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 165
    invoke-virtual {v0, p1}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I

    move-result v0

    iput v0, p0, Ldolphin/webkit/fp;->d:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 168
    :goto_0
    return-void

    .line 166
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method private e(Landroid/view/View;)V
    .locals 2

    .prologue
    .line 172
    :try_start_0
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    .line 173
    const-string v1, "mBrowserOrientationSettingOverriden"

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    .line 174
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 175
    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 178
    :goto_0
    return-void

    .line 176
    :catch_0
    move-exception v0

    goto :goto_0
.end method


# virtual methods
.method public a()V
    .locals 6

    .prologue
    const/4 v5, -0x1

    .line 214
    iget-object v0, p0, Ldolphin/webkit/fp;->a:Ldolphin/webkit/WebViewClassic;

    invoke-virtual {v0}, Ldolphin/webkit/WebViewClassic;->aa()Ldolphin/webkit/ViewManager;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 215
    iget-object v0, p0, Ldolphin/webkit/fp;->a:Ldolphin/webkit/WebViewClassic;

    invoke-virtual {v0}, Ldolphin/webkit/WebViewClassic;->aa()Ldolphin/webkit/ViewManager;

    move-result-object v0

    invoke-virtual {v0}, Ldolphin/webkit/ViewManager;->e()V

    .line 217
    :cond_0
    iget-object v0, p0, Ldolphin/webkit/fp;->g:Landroid/view/View;

    invoke-direct {p0, v0}, Ldolphin/webkit/fp;->d(Landroid/view/View;)V

    .line 218
    iget-object v0, p0, Ldolphin/webkit/fp;->a:Ldolphin/webkit/WebViewClassic;

    invoke-virtual {v0}, Ldolphin/webkit/WebViewClassic;->d()Ldolphin/webkit/WebView;

    move-result-object v0

    invoke-virtual {v0}, Ldolphin/webkit/WebView;->getActivityContext()Landroid/app/Activity;

    move-result-object v1

    .line 220
    iget-object v0, p0, Ldolphin/webkit/fp;->a:Ldolphin/webkit/WebViewClassic;

    invoke-virtual {v0}, Ldolphin/webkit/WebViewClassic;->F()Ldolphin/webkit/WebChromeClient;

    move-result-object v0

    .line 221
    sget-object v2, Ldolphin/webkit/fp;->f:Ldolphin/webkit/fs;

    iget v3, p0, Ldolphin/webkit/fp;->c:I

    iget-object v4, p0, Ldolphin/webkit/fp;->h:Ldolphin/webkit/WebChromeClient$CustomViewCallback;

    invoke-virtual {v0, v2, v3, v4}, Ldolphin/webkit/WebChromeClient;->onShowCustomView(Landroid/view/View;ILdolphin/webkit/WebChromeClient$CustomViewCallback;)V

    .line 223
    new-instance v2, Landroid/widget/FrameLayout$LayoutParams;

    const/16 v0, 0x11

    invoke-direct {v2, v5, v5, v0}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    .line 227
    invoke-virtual {v1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    .line 228
    iget-object v3, p0, Ldolphin/webkit/fp;->g:Landroid/view/View;

    invoke-virtual {v0, v3, v2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 230
    iget v0, p0, Ldolphin/webkit/fp;->c:I

    invoke-virtual {v1, v0}, Landroid/app/Activity;->setRequestedOrientation(I)V

    .line 231
    return-void
.end method

.method public a(Landroid/view/View;)V
    .locals 3

    .prologue
    const/4 v2, -0x1

    .line 184
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "com.adobe.flashplayer.FlashPaintSurface"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 185
    invoke-direct {p0, p1}, Ldolphin/webkit/fp;->c(Landroid/view/View;)V

    .line 189
    :cond_0
    new-instance v0, Ldolphin/webkit/fs;

    iget-object v1, p0, Ldolphin/webkit/fp;->a:Ldolphin/webkit/WebViewClassic;

    invoke-virtual {v1}, Ldolphin/webkit/WebViewClassic;->l()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Ldolphin/webkit/fs;-><init>(Ldolphin/webkit/fp;Landroid/content/Context;)V

    sput-object v0, Ldolphin/webkit/fp;->f:Ldolphin/webkit/fs;

    .line 190
    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    const/16 v1, 0x11

    invoke-direct {v0, v2, v2, v1}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    .line 196
    sget-object v0, Ldolphin/webkit/fp;->f:Ldolphin/webkit/fs;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ldolphin/webkit/fs;->setVisibility(I)V

    .line 202
    instance-of v0, p1, Landroid/view/SurfaceView;

    if-eqz v0, :cond_1

    move-object v0, p1

    .line 203
    check-cast v0, Landroid/view/SurfaceView;

    .line 204
    invoke-virtual {v0}, Landroid/view/SurfaceView;->isFixedSize()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 205
    invoke-virtual {v0}, Landroid/view/SurfaceView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v0

    invoke-interface {v0}, Landroid/view/SurfaceHolder;->setSizeFromLayout()V

    .line 209
    :cond_1
    iput-object p1, p0, Ldolphin/webkit/fp;->g:Landroid/view/View;

    .line 210
    return-void
.end method

.method public b()V
    .locals 3

    .prologue
    .line 234
    iget-object v0, p0, Ldolphin/webkit/fp;->a:Ldolphin/webkit/WebViewClassic;

    invoke-virtual {v0}, Ldolphin/webkit/WebViewClassic;->F()Ldolphin/webkit/WebChromeClient;

    move-result-object v0

    .line 235
    invoke-virtual {v0}, Ldolphin/webkit/WebChromeClient;->onHideCustomView()V

    .line 237
    iget-boolean v0, p0, Ldolphin/webkit/fp;->e:Z

    if-eqz v0, :cond_1

    .line 238
    const/4 v0, 0x0

    iput-boolean v0, p0, Ldolphin/webkit/fp;->e:Z

    .line 239
    iget-object v0, p0, Ldolphin/webkit/fp;->a:Ldolphin/webkit/WebViewClassic;

    invoke-virtual {v0}, Ldolphin/webkit/WebViewClassic;->d()Ldolphin/webkit/WebView;

    move-result-object v0

    invoke-virtual {v0}, Ldolphin/webkit/WebView;->getActivityContext()Landroid/app/Activity;

    move-result-object v0

    .line 241
    iget v1, p0, Ldolphin/webkit/fp;->d:I

    const/4 v2, -0x1

    if-ne v1, v2, :cond_0

    .line 245
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/Activity;->setRequestedOrientation(I)V

    .line 247
    :cond_0
    iget v1, p0, Ldolphin/webkit/fp;->d:I

    invoke-virtual {v0, v1}, Landroid/app/Activity;->setRequestedOrientation(I)V

    .line 248
    iget-object v0, p0, Ldolphin/webkit/fp;->g:Landroid/view/View;

    invoke-direct {p0, v0}, Ldolphin/webkit/fp;->e(Landroid/view/View;)V

    .line 250
    :cond_1
    return-void
.end method
