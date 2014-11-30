.class Ldolphin/webkit/BrowserFrame;
.super Ldolphin/util/j;
.source "BrowserFrame.java"


# annotations
.annotation build Ldolphin/webkit/annotation/CalledByJNI;
.end annotation


# static fields
.field static b:Ldolphin/webkit/JWebCoreJavaBridge;

.field static final synthetic c:Z


# instance fields
.field a:Z

.field private final d:Ldolphin/webkit/ae;

.field private final e:Ldolphin/webkit/WebSettingsClassic;

.field private final f:Landroid/content/Context;

.field private final g:Ldolphin/webkit/WebViewCore;

.field private h:I

.field private i:Z

.field private j:Z

.field private k:Z

.field private l:Z

.field private m:Z

.field mNativeFrame:I
    .annotation build Ldolphin/webkit/annotation/CalledByJNI;
    .end annotation
.end field

.field private n:Z

.field private o:I

.field private p:Z

.field private q:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private r:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private s:Ldolphin/webkit/ep;

.field private final t:Ldolphin/webkit/gq;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 71
    const-class v0, Ldolphin/webkit/BrowserFrame;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Ldolphin/webkit/BrowserFrame;->c:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 3

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x1

    const/4 v2, 0x0

    .line 209
    invoke-direct {p0}, Ldolphin/util/j;-><init>()V

    .line 90
    iput-boolean v0, p0, Ldolphin/webkit/BrowserFrame;->i:Z

    .line 92
    iput-boolean v0, p0, Ldolphin/webkit/BrowserFrame;->j:Z

    .line 93
    iput-boolean v0, p0, Ldolphin/webkit/BrowserFrame;->k:Z

    .line 94
    iput-boolean v1, p0, Ldolphin/webkit/BrowserFrame;->l:Z

    .line 96
    iput-boolean v0, p0, Ldolphin/webkit/BrowserFrame;->m:Z

    .line 100
    iput-boolean v1, p0, Ldolphin/webkit/BrowserFrame;->n:Z

    .line 101
    const/4 v0, -0x1

    iput v0, p0, Ldolphin/webkit/BrowserFrame;->o:I

    .line 111
    iput-object v2, p0, Ldolphin/webkit/BrowserFrame;->s:Ldolphin/webkit/ep;

    .line 210
    const-string v0, "[PageLoadLog]"

    const-string v1, "[BrowserFrame.BrowserFrame]"

    invoke-static {v0, v1}, Ldolphin/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 211
    invoke-static {p1}, Ldolphin/webkit/BrowserFrame;->a(Landroid/content/Context;)V

    .line 213
    iput-object v2, p0, Ldolphin/webkit/BrowserFrame;->g:Ldolphin/webkit/WebViewCore;

    .line 214
    new-instance v0, Ldolphin/webkit/WebSettingsClassic;

    invoke-direct {v0, p1, v2}, Ldolphin/webkit/WebSettingsClassic;-><init>(Landroid/content/Context;Ldolphin/webkit/WebViewClassic;)V

    iput-object v0, p0, Ldolphin/webkit/BrowserFrame;->e:Ldolphin/webkit/WebSettingsClassic;

    .line 215
    iget-object v0, p0, Ldolphin/webkit/BrowserFrame;->e:Ldolphin/webkit/WebSettingsClassic;

    invoke-virtual {v0}, Ldolphin/webkit/WebSettingsClassic;->ensurePrefetchUserAgentString()V

    .line 216
    iput-object v2, p0, Ldolphin/webkit/BrowserFrame;->t:Ldolphin/webkit/gq;

    .line 217
    iput-object p1, p0, Ldolphin/webkit/BrowserFrame;->f:Landroid/content/Context;

    .line 218
    iput-object v2, p0, Ldolphin/webkit/BrowserFrame;->d:Ldolphin/webkit/ae;

    .line 219
    invoke-direct {p0}, Ldolphin/webkit/BrowserFrame;->nativeCreatePrefetchFrame()V

    .line 221
    invoke-direct {p0}, Ldolphin/webkit/BrowserFrame;->nativeCreateDownloadFrame()V

    .line 223
    invoke-direct {p0}, Ldolphin/webkit/BrowserFrame;->nativeStartupInit()V

    .line 224
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ldolphin/webkit/WebViewCore;Ldolphin/webkit/ae;Ldolphin/webkit/WebSettingsClassic;Ljava/util/Map;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ldolphin/webkit/WebViewCore;",
            "Ldolphin/webkit/ae;",
            "Ldolphin/webkit/WebSettingsClassic;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x1

    .line 180
    invoke-direct {p0}, Ldolphin/util/j;-><init>()V

    .line 90
    iput-boolean v0, p0, Ldolphin/webkit/BrowserFrame;->i:Z

    .line 92
    iput-boolean v0, p0, Ldolphin/webkit/BrowserFrame;->j:Z

    .line 93
    iput-boolean v0, p0, Ldolphin/webkit/BrowserFrame;->k:Z

    .line 94
    iput-boolean v1, p0, Ldolphin/webkit/BrowserFrame;->l:Z

    .line 96
    iput-boolean v0, p0, Ldolphin/webkit/BrowserFrame;->m:Z

    .line 100
    iput-boolean v1, p0, Ldolphin/webkit/BrowserFrame;->n:Z

    .line 101
    const/4 v0, -0x1

    iput v0, p0, Ldolphin/webkit/BrowserFrame;->o:I

    .line 111
    const/4 v0, 0x0

    iput-object v0, p0, Ldolphin/webkit/BrowserFrame;->s:Ldolphin/webkit/ep;

    .line 182
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 184
    invoke-static {p1}, Ldolphin/webkit/BrowserFrame;->a(Landroid/content/Context;)V

    .line 186
    iput-object p5, p0, Ldolphin/webkit/BrowserFrame;->q:Ljava/util/Map;

    .line 187
    iget-object v0, p0, Ldolphin/webkit/BrowserFrame;->q:Ljava/util/Map;

    if-nez v0, :cond_0

    .line 188
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Ldolphin/webkit/BrowserFrame;->q:Ljava/util/Map;

    .line 190
    :cond_0
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Ldolphin/webkit/BrowserFrame;->r:Ljava/util/Set;

    .line 192
    iput-object p4, p0, Ldolphin/webkit/BrowserFrame;->e:Ldolphin/webkit/WebSettingsClassic;

    .line 193
    iput-object p1, p0, Ldolphin/webkit/BrowserFrame;->f:Landroid/content/Context;

    .line 194
    iput-object p3, p0, Ldolphin/webkit/BrowserFrame;->d:Ldolphin/webkit/ae;

    .line 195
    iput-object p2, p0, Ldolphin/webkit/BrowserFrame;->g:Ldolphin/webkit/WebViewCore;

    .line 197
    new-instance v0, Ldolphin/webkit/gq;

    iget-object v1, p0, Ldolphin/webkit/BrowserFrame;->g:Ldolphin/webkit/WebViewCore;

    iget-object v2, p0, Ldolphin/webkit/BrowserFrame;->d:Ldolphin/webkit/ae;

    invoke-direct {v0, v1, v2}, Ldolphin/webkit/gq;-><init>(Ldolphin/webkit/WebViewCore;Ldolphin/webkit/ae;)V

    iput-object v0, p0, Ldolphin/webkit/BrowserFrame;->t:Ldolphin/webkit/gq;

    .line 198
    iget-object v0, p0, Ldolphin/webkit/BrowserFrame;->q:Ljava/util/Map;

    const-string v1, "searchBoxJavaBridge_"

    iget-object v2, p0, Ldolphin/webkit/BrowserFrame;->t:Ldolphin/webkit/gq;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 200
    invoke-virtual {p1}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v0

    .line 201
    invoke-virtual {p3}, Ldolphin/webkit/ae;->e()Ldolphin/webkit/WebBackForwardList;

    move-result-object v1

    invoke-direct {p0, p2, v0, v1}, Ldolphin/webkit/BrowserFrame;->nativeCreateFrame(Ldolphin/webkit/WebViewCore;Landroid/content/res/AssetManager;Ldolphin/webkit/WebBackForwardList;)V

    .line 206
    return-void
.end method

.method static a(ILandroid/content/Context;)Ljava/lang/String;
    .locals 3

    .prologue
    .line 1192
    packed-switch p0, :pswitch_data_0

    .line 1230
    const-string v0, "webkit"

    const-string v1, "getRawResFilename got incompatible resource ID"

    invoke-static {v0, v1}, Ldolphin/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1231
    const-string v0, ""

    .line 1244
    :goto_0
    return-object v0

    .line 1194
    :pswitch_0
    sget v0, Ldolphin/webkit/R$raw;->nodomain:I

    .line 1233
    :goto_1
    new-instance v1, Landroid/util/TypedValue;

    invoke-direct {v1}, Landroid/util/TypedValue;-><init>()V

    .line 1234
    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Ldolphin/webkit/WebKitResources;->getValue(ILandroid/util/TypedValue;Z)V

    .line 1235
    const/4 v0, 0x3

    if-ne p0, v0, :cond_1

    .line 1236
    iget-object v0, v1, Landroid/util/TypedValue;->string:Ljava/lang/CharSequence;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1237
    const/16 v1, 0x2f

    invoke-virtual {v0, v1}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v1

    .line 1238
    if-gez v1, :cond_0

    .line 1239
    const-string v0, "webkit"

    const-string v1, "Can\'t find drawable directory."

    invoke-static {v0, v1}, Ldolphin/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1240
    const-string v0, ""

    goto :goto_0

    .line 1198
    :pswitch_1
    sget v0, Ldolphin/webkit/R$raw;->loaderror:I

    goto :goto_1

    .line 1205
    :pswitch_2
    sget v0, Ldolphin/webkit/R$drawable;->btn_zoom_page_normal:I

    goto :goto_1

    .line 1209
    :pswitch_3
    sget v0, Ldolphin/webkit/R$string;->upload_file:I

    invoke-static {v0}, Ldolphin/webkit/WebKitResources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 1213
    :pswitch_4
    sget v0, Ldolphin/webkit/R$string;->reset:I

    invoke-static {v0}, Ldolphin/webkit/WebKitResources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 1217
    :pswitch_5
    sget v0, Ldolphin/webkit/R$string;->submit:I

    invoke-static {v0}, Ldolphin/webkit/WebKitResources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 1221
    :pswitch_6
    sget v0, Ldolphin/webkit/R$string;->no_file_chosen:I

    invoke-static {v0}, Ldolphin/webkit/WebKitResources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 1225
    :pswitch_7
    sget v0, Ldolphin/webkit/R$string;->formSubmitErrorNoItemSelected:I

    invoke-static {v0}, Ldolphin/webkit/WebKitResources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 1242
    :cond_0
    const/4 v2, 0x0

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {v0, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 1244
    :cond_1
    iget-object v0, v1, Landroid/util/TypedValue;->string:Ljava/lang/CharSequence;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 1192
    nop

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
    .end packed-switch
.end method

.method static a(Landroid/content/Context;)V
    .locals 3

    .prologue
    .line 151
    sget-object v0, Ldolphin/webkit/BrowserFrame;->b:Ldolphin/webkit/JWebCoreJavaBridge;

    if-nez v0, :cond_0

    .line 152
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    .line 153
    new-instance v0, Ldolphin/webkit/JWebCoreJavaBridge;

    invoke-direct {v0}, Ldolphin/webkit/JWebCoreJavaBridge;-><init>()V

    sput-object v0, Ldolphin/webkit/BrowserFrame;->b:Ldolphin/webkit/JWebCoreJavaBridge;

    .line 155
    const-string v0, "activity"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    .line 157
    invoke-virtual {v0}, Landroid/app/ActivityManager;->getMemoryClass()I

    move-result v0

    const/16 v2, 0x10

    if-le v0, v2, :cond_1

    .line 158
    sget-object v0, Ldolphin/webkit/BrowserFrame;->b:Ldolphin/webkit/JWebCoreJavaBridge;

    const/high16 v2, 0x800000

    invoke-virtual {v0, v2}, Ldolphin/webkit/JWebCoreJavaBridge;->setCacheSize(I)V

    .line 163
    :goto_0
    invoke-static {v1}, Ldolphin/webkit/CacheManager;->a(Landroid/content/Context;)V

    .line 165
    invoke-static {v1}, Ldolphin/webkit/CookieSyncManager;->createInstance(Landroid/content/Context;)Ldolphin/webkit/CookieSyncManager;

    .line 167
    invoke-static {v1}, Ldolphin/webkit/fu;->a(Landroid/content/Context;)Ldolphin/webkit/fu;

    .line 169
    :cond_0
    return-void

    .line 160
    :cond_1
    sget-object v0, Ldolphin/webkit/BrowserFrame;->b:Ldolphin/webkit/JWebCoreJavaBridge;

    const/high16 v2, 0x400000

    invoke-virtual {v0, v2}, Ldolphin/webkit/JWebCoreJavaBridge;->setCacheSize(I)V

    goto :goto_0
.end method

.method static synthetic a(Ldolphin/webkit/BrowserFrame;I)V
    .locals 0

    .prologue
    .line 72
    invoke-direct {p0, p1}, Ldolphin/webkit/BrowserFrame;->nativeAuthenticationCancel(I)V

    return-void
.end method

.method static synthetic a(Ldolphin/webkit/BrowserFrame;II)V
    .locals 0

    .prologue
    .line 72
    invoke-direct {p0, p1, p2}, Ldolphin/webkit/BrowserFrame;->nativeSslCertErrorCancel(II)V

    return-void
.end method

.method static synthetic a(Ldolphin/webkit/BrowserFrame;ILjava/lang/String;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 72
    invoke-direct {p0, p1, p2, p3}, Ldolphin/webkit/BrowserFrame;->nativeAuthenticationProceed(ILjava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private adBlockUpdate(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .annotation build Ldolphin/webkit/annotation/CalledByJNI;
    .end annotation

    .prologue
    .line 1473
    :try_start_0
    iget-object v0, p0, Ldolphin/webkit/BrowserFrame;->d:Ldolphin/webkit/ae;

    if-eqz v0, :cond_0

    .line 1474
    iget-object v0, p0, Ldolphin/webkit/BrowserFrame;->d:Ldolphin/webkit/ae;

    invoke-virtual {v0, p1, p2}, Ldolphin/webkit/ae;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1479
    :cond_0
    :goto_0
    return-void

    .line 1477
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method private autoLogin(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .annotation build Ldolphin/webkit/annotation/CalledByJNI;
    .end annotation

    .prologue
    .line 1455
    iget-object v0, p0, Ldolphin/webkit/BrowserFrame;->d:Ldolphin/webkit/ae;

    if-eqz v0, :cond_0

    .line 1456
    iget-object v0, p0, Ldolphin/webkit/BrowserFrame;->d:Ldolphin/webkit/ae;

    invoke-virtual {v0, p1, p2, p3}, Ldolphin/webkit/ae;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1457
    :cond_0
    return-void
.end method

.method private b(Ljava/lang/String;)Ljava/io/InputStream;
    .locals 7

    .prologue
    const/4 v5, 0x0

    const/4 v4, -0x1

    const/4 v0, 0x0

    .line 761
    const-string v1, "file:///android_asset/"

    .line 762
    const-string v1, "file:///android_res/"

    .line 763
    const-string v1, "content:"

    .line 765
    const-string v1, "file:///android_res/"

    invoke-virtual {p1, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 766
    const-string v1, "file:///android_res/"

    const-string v2, ""

    invoke-virtual {p1, v1, v2}, Ljava/lang/String;->replaceFirst(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 767
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_2

    .line 768
    :cond_0
    const-string v2, "webkit"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "url has length 0 "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Ldolphin/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 832
    :cond_1
    :goto_0
    return-object v0

    .line 771
    :cond_2
    const/16 v2, 0x2f

    invoke-virtual {v1, v2}, Ljava/lang/String;->indexOf(I)I

    move-result v2

    .line 772
    const/16 v3, 0x2e

    invoke-virtual {v1, v3, v2}, Ljava/lang/String;->indexOf(II)I

    move-result v3

    .line 773
    if-eq v2, v4, :cond_3

    if-ne v3, v4, :cond_4

    .line 774
    :cond_3
    const-string v2, "webkit"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Incorrect res path: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Ldolphin/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 777
    :cond_4
    invoke-virtual {v1, v5, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    .line 778
    add-int/lit8 v2, v2, 0x1

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    .line 781
    :try_start_0
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v3

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v6, p0, Ldolphin/webkit/BrowserFrame;->f:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ".R$"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v3

    .line 784
    invoke-virtual {v3, v2}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v2

    .line 785
    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I

    move-result v2

    .line 786
    new-instance v3, Landroid/util/TypedValue;

    invoke-direct {v3}, Landroid/util/TypedValue;-><init>()V

    .line 787
    const/4 v4, 0x1

    invoke-static {v2, v3, v4}, Ldolphin/webkit/WebKitResources;->getValue(ILandroid/util/TypedValue;Z)V

    .line 788
    iget v2, v3, Landroid/util/TypedValue;->type:I

    const/4 v4, 0x3

    if-ne v2, v4, :cond_5

    .line 789
    iget-object v2, p0, Ldolphin/webkit/BrowserFrame;->f:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v2

    iget v4, v3, Landroid/util/TypedValue;->assetCookie:I

    iget-object v3, v3, Landroid/util/TypedValue;->string:Ljava/lang/CharSequence;

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v5, 0x2

    invoke-virtual {v2, v4, v3, v5}, Landroid/content/res/AssetManager;->openNonAsset(ILjava/lang/String;I)Ljava/io/InputStream;

    move-result-object v0

    goto/16 :goto_0

    .line 794
    :cond_5
    const-string v2, "webkit"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "not of type string: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Ldolphin/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    .line 797
    :catch_0
    move-exception v2

    .line 798
    const-string v2, "webkit"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Exception: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Ldolphin/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 801
    :cond_6
    const-string v1, "file:///android_asset/"

    invoke-virtual {p1, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 802
    const-string v1, "file:///android_asset/"

    const-string v2, ""

    invoke-virtual {p1, v1, v2}, Ljava/lang/String;->replaceFirst(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 804
    :try_start_1
    iget-object v2, p0, Ldolphin/webkit/BrowserFrame;->f:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v2

    .line 805
    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_3

    move-result-object v1

    .line 807
    :try_start_2
    invoke-virtual {v1}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x2

    invoke-virtual {v2, v3, v4}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;I)Ljava/io/InputStream;
    :try_end_2
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_3

    move-result-object v0

    goto/16 :goto_0

    .line 808
    :catch_1
    move-exception v2

    .line 810
    :try_start_3
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v2

    invoke-virtual {v1}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v1

    const/4 v3, 0x2

    invoke-virtual {v2, v1, v3}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;I)Ljava/io/InputStream;
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_3

    move-result-object v0

    goto/16 :goto_0

    .line 815
    :cond_7
    iget-object v1, p0, Ldolphin/webkit/BrowserFrame;->e:Ldolphin/webkit/WebSettingsClassic;

    invoke-virtual {v1}, Ldolphin/webkit/WebSettingsClassic;->getAllowContentAccess()Z

    move-result v1

    if-eqz v1, :cond_1

    const-string v1, "content:"

    invoke-virtual {p1, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 821
    const/16 v1, 0x3f

    :try_start_4
    invoke-virtual {p1, v1}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v1

    .line 822
    if-eq v1, v4, :cond_8

    .line 823
    const/4 v2, 0x0

    invoke-virtual {p1, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    .line 825
    :cond_8
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 826
    iget-object v2, p0, Ldolphin/webkit/BrowserFrame;->f:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2

    move-result-object v0

    goto/16 :goto_0

    .line 827
    :catch_2
    move-exception v1

    .line 828
    const-string v1, "webkit"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Exception: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Ldolphin/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 812
    :catch_3
    move-exception v1

    goto/16 :goto_0
.end method

.method static synthetic b(Ldolphin/webkit/BrowserFrame;I)V
    .locals 0

    .prologue
    .line 72
    invoke-direct {p0, p1}, Ldolphin/webkit/BrowserFrame;->nativeSslCertErrorProceed(I)V

    return-void
.end method

.method private native childFramesAsText()Ljava/lang/String;
.end method

.method private closeWindow(Ldolphin/webkit/WebViewCore;)V
    .locals 2
    .annotation build Ldolphin/webkit/annotation/CalledByJNI;
    .end annotation

    .prologue
    .line 1136
    iget-object v0, p0, Ldolphin/webkit/BrowserFrame;->d:Ldolphin/webkit/ae;

    if-eqz v0, :cond_0

    .line 1137
    iget-object v0, p0, Ldolphin/webkit/BrowserFrame;->d:Ldolphin/webkit/ae;

    invoke-virtual {p1}, Ldolphin/webkit/WebViewCore;->getWebViewClassic()Ldolphin/webkit/WebViewClassic;

    move-result-object v1

    invoke-virtual {v0, v1}, Ldolphin/webkit/ae;->a(Ldolphin/webkit/WebViewClassic;)V

    .line 1138
    :cond_0
    return-void
.end method

.method private createWindow(ZZ)Ldolphin/webkit/BrowserFrame;
    .locals 1
    .annotation build Ldolphin/webkit/annotation/CalledByJNI;
    .end annotation

    .prologue
    .line 1117
    iget-object v0, p0, Ldolphin/webkit/BrowserFrame;->d:Ldolphin/webkit/ae;

    if-nez v0, :cond_0

    .line 1118
    const/4 v0, 0x0

    .line 1119
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Ldolphin/webkit/BrowserFrame;->d:Ldolphin/webkit/ae;

    invoke-virtual {v0, p1, p2}, Ldolphin/webkit/ae;->a(ZZ)Ldolphin/webkit/BrowserFrame;

    move-result-object v0

    goto :goto_0
.end method

.method private decidePolicyForFormResubmission(I)V
    .locals 3
    .annotation build Ldolphin/webkit/annotation/CalledByJNI;
    .end annotation

    .prologue
    const/16 v2, 0x3eb

    .line 1146
    iget-object v0, p0, Ldolphin/webkit/BrowserFrame;->d:Ldolphin/webkit/ae;

    if-nez v0, :cond_0

    .line 1153
    :goto_0
    return-void

    .line 1148
    :cond_0
    const/4 v0, 0x2

    invoke-virtual {p0, v2, p1, v0}, Ldolphin/webkit/BrowserFrame;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    .line 1150
    const/4 v1, 0x0

    invoke-virtual {p0, v2, p1, v1}, Ldolphin/webkit/BrowserFrame;->obtainMessage(III)Landroid/os/Message;

    move-result-object v1

    .line 1152
    iget-object v2, p0, Ldolphin/webkit/BrowserFrame;->d:Ldolphin/webkit/ae;

    invoke-virtual {v2, v0, v1}, Ldolphin/webkit/ae;->a(Landroid/os/Message;Landroid/os/Message;)V

    goto :goto_0
.end method

.method private density()F
    .locals 1
    .annotation build Ldolphin/webkit/annotation/CalledByJNI;
    .end annotation

    .prologue
    .line 1249
    invoke-static {}, Ldolphin/webkit/WebKitResources;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    return v0
.end method

.method private didFinishLoading()V
    .locals 2
    .annotation build Ldolphin/webkit/annotation/CalledByJNI;
    .end annotation

    .prologue
    .line 1422
    iget-object v0, p0, Ldolphin/webkit/BrowserFrame;->s:Ldolphin/webkit/ep;

    if-eqz v0, :cond_0

    .line 1423
    iget-object v0, p0, Ldolphin/webkit/BrowserFrame;->s:Ldolphin/webkit/ep;

    iget-object v1, p0, Ldolphin/webkit/BrowserFrame;->f:Landroid/content/Context;

    invoke-virtual {v0, v1}, Ldolphin/webkit/ep;->a(Landroid/content/Context;)V

    .line 1424
    const/4 v0, 0x0

    iput-object v0, p0, Ldolphin/webkit/BrowserFrame;->s:Ldolphin/webkit/ep;

    .line 1426
    :cond_0
    return-void
.end method

.method private didLoadMainResource()V
    .locals 0
    .annotation build Ldolphin/webkit/annotation/CalledByJNI;
    .end annotation

    .prologue
    .line 1091
    return-void
.end method

.method private didReceiveAuthenticationChallenge(ILjava/lang/String;Ljava/lang/String;ZZ)V
    .locals 2
    .annotation build Ldolphin/webkit/annotation/CalledByJNI;
    .end annotation

    .prologue
    .line 1268
    new-instance v0, Ldolphin/webkit/v;

    invoke-direct {v0, p0, p4, p1, p5}, Ldolphin/webkit/v;-><init>(Ldolphin/webkit/BrowserFrame;ZIZ)V

    .line 1290
    iget-object v1, p0, Ldolphin/webkit/BrowserFrame;->d:Ldolphin/webkit/ae;

    if-eqz v1, :cond_0

    .line 1291
    iget-object v1, p0, Ldolphin/webkit/BrowserFrame;->d:Ldolphin/webkit/ae;

    invoke-virtual {v1, v0, p2, p3}, Ldolphin/webkit/ae;->a(Ldolphin/webkit/HttpAuthHandler;Ljava/lang/String;Ljava/lang/String;)V

    .line 1292
    :cond_0
    return-void
.end method

.method private didReceiveData([BI)V
    .locals 1
    .annotation build Ldolphin/webkit/annotation/CalledByJNI;
    .end annotation

    .prologue
    .line 1417
    iget-object v0, p0, Ldolphin/webkit/BrowserFrame;->s:Ldolphin/webkit/ep;

    if-eqz v0, :cond_0

    iget-object v0, p0, Ldolphin/webkit/BrowserFrame;->s:Ldolphin/webkit/ep;

    invoke-virtual {v0, p1, p2}, Ldolphin/webkit/ep;->a([BI)V

    .line 1418
    :cond_0
    return-void
.end method

.method private didReceiveIcon(Landroid/graphics/Bitmap;)V
    .locals 1
    .annotation build Ldolphin/webkit/annotation/CalledByJNI;
    .end annotation

    .prologue
    .line 1100
    iget-object v0, p0, Ldolphin/webkit/BrowserFrame;->d:Ldolphin/webkit/ae;

    if-eqz v0, :cond_0

    .line 1101
    iget-object v0, p0, Ldolphin/webkit/BrowserFrame;->d:Ldolphin/webkit/ae;

    invoke-virtual {v0, p1}, Ldolphin/webkit/ae;->a(Landroid/graphics/Bitmap;)V

    .line 1102
    :cond_0
    return-void
.end method

.method private didReceiveTouchIconUrl(Ljava/lang/String;Z)V
    .locals 1
    .annotation build Ldolphin/webkit/annotation/CalledByJNI;
    .end annotation

    .prologue
    .line 1107
    iget-object v0, p0, Ldolphin/webkit/BrowserFrame;->d:Ldolphin/webkit/ae;

    if-eqz v0, :cond_0

    .line 1108
    iget-object v0, p0, Ldolphin/webkit/BrowserFrame;->d:Ldolphin/webkit/ae;

    invoke-virtual {v0, p1, p2}, Ldolphin/webkit/ae;->b(Ljava/lang/String;Z)V

    .line 1109
    :cond_0
    return-void
.end method

.method private native documentAsText()Ljava/lang/String;
.end method

.method private documentFinished(Ljava/lang/String;IZ)V
    .locals 2
    .annotation build Ldolphin/webkit/annotation/CalledByJNI;
    .end annotation

    .prologue
    .line 488
    if-eqz p3, :cond_0

    iget-object v0, p0, Ldolphin/webkit/BrowserFrame;->d:Ldolphin/webkit/ae;

    if-eqz v0, :cond_0

    .line 489
    const/4 v0, 0x1

    iput-boolean v0, p0, Ldolphin/webkit/BrowserFrame;->k:Z

    .line 490
    iget-object v0, p0, Ldolphin/webkit/BrowserFrame;->d:Ldolphin/webkit/ae;

    invoke-virtual {v0, p1}, Ldolphin/webkit/ae;->c(Ljava/lang/String;)V

    .line 491
    iget-object v0, p0, Ldolphin/webkit/BrowserFrame;->d:Ldolphin/webkit/ae;

    const/4 v1, 0x5

    invoke-virtual {v0, p1, v1}, Ldolphin/webkit/ae;->a(Ljava/lang/String;I)V

    .line 492
    iget-object v0, p0, Ldolphin/webkit/BrowserFrame;->d:Ldolphin/webkit/ae;

    const/16 v1, 0x64

    invoke-virtual {v0, v1}, Ldolphin/webkit/ae;->a(I)V

    .line 493
    iget-object v0, p0, Ldolphin/webkit/BrowserFrame;->g:Ldolphin/webkit/WebViewCore;

    invoke-virtual {v0}, Ldolphin/webkit/WebViewCore;->contentDraw()V

    .line 495
    :cond_0
    return-void
.end method

.method private downloadStart(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V
    .locals 7
    .annotation build Ldolphin/webkit/annotation/CalledByJNI;
    .end annotation

    .prologue
    .line 1389
    invoke-virtual {p4}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1391
    const/16 v0, 0x2e

    :try_start_0
    invoke-virtual {p1, v0}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    .line 1392
    invoke-static {}, Ldolphin/webkit/MimeTypeMap;->a()Ldolphin/webkit/MimeTypeMap;

    move-result-object v1

    invoke-virtual {v1, v0}, Ldolphin/webkit/MimeTypeMap;->b(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 1394
    if-nez v0, :cond_0

    .line 1395
    :try_start_1
    const-string v0, ""
    :try_end_1
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_1 .. :try_end_1} :catch_1

    .line 1400
    :cond_0
    :goto_0
    invoke-static {}, Ldolphin/webkit/MimeTypeMap;->a()Ldolphin/webkit/MimeTypeMap;

    move-result-object v1

    invoke-virtual {v1, v0, p1, p3}, Ldolphin/webkit/MimeTypeMap;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 1403
    invoke-static {v4}, Ldolphin/webkit/ax;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 1404
    new-instance v0, Ldolphin/webkit/ep;

    invoke-direct {v0, v4}, Ldolphin/webkit/ep;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Ldolphin/webkit/BrowserFrame;->s:Ldolphin/webkit/ep;

    .line 1410
    :cond_1
    :goto_1
    return-void

    .line 1406
    :cond_2
    iget-object v0, p0, Ldolphin/webkit/BrowserFrame;->d:Ldolphin/webkit/ae;

    if-eqz v0, :cond_1

    .line 1407
    iget-object v0, p0, Ldolphin/webkit/BrowserFrame;->d:Ldolphin/webkit/ae;

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-wide v5, p5

    invoke-virtual/range {v0 .. v6}, Ldolphin/webkit/ae;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)Z

    goto :goto_1

    .line 1396
    :catch_0
    move-exception v0

    move-object v0, p4

    goto :goto_0

    :catch_1
    move-exception v1

    goto :goto_0

    :cond_3
    move-object v0, p4

    goto :goto_0
.end method

.method private native externalRepresentation()Ljava/lang/String;
.end method

.method private getFile(Ljava/lang/String;[BII)I
    .locals 5
    .annotation build Ldolphin/webkit/annotation/CalledByJNI;
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 729
    .line 731
    :try_start_0
    iget-object v0, p0, Ldolphin/webkit/BrowserFrame;->f:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object v2

    .line 733
    invoke-virtual {v2}, Ljava/io/InputStream;->available()I

    move-result v0

    .line 734
    if-gt v0, p4, :cond_0

    if-eqz p2, :cond_0

    array-length v3, p2

    sub-int/2addr v3, p3

    if-lt v3, v0, :cond_0

    .line 736
    invoke-virtual {v2, p2, p3, v0}, Ljava/io/InputStream;->read([BII)I

    .line 740
    :goto_0
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    .line 748
    :goto_1
    return v0

    :cond_0
    move v0, v1

    .line 738
    goto :goto_0

    .line 741
    :catch_0
    move-exception v0

    .line 742
    const-string v2, "webkit"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "FileNotFoundException:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Ldolphin/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move v0, v1

    .line 747
    goto :goto_1

    .line 744
    :catch_1
    move-exception v0

    .line 745
    const-string v2, "webkit"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "IOException: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Ldolphin/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move v0, v1

    .line 746
    goto :goto_1
.end method

.method private getFileSize(Ljava/lang/String;)I
    .locals 3
    .annotation build Ldolphin/webkit/annotation/CalledByJNI;
    .end annotation

    .prologue
    .line 707
    const/4 v0, 0x0

    .line 709
    :try_start_0
    iget-object v1, p0, Ldolphin/webkit/BrowserFrame;->f:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object v1

    .line 711
    invoke-virtual {v1}, Ljava/io/InputStream;->available()I

    move-result v0

    .line 712
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 714
    :goto_0
    return v0

    .line 713
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method private getRawResFilename(I)Ljava/lang/String;
    .locals 1
    .annotation build Ldolphin/webkit/annotation/CalledByJNI;
    .end annotation

    .prologue
    .line 1188
    iget-object v0, p0, Ldolphin/webkit/BrowserFrame;->f:Landroid/content/Context;

    invoke-static {p1, v0}, Ldolphin/webkit/BrowserFrame;->a(ILandroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private native getUsernamePassword(Ljava/lang/String;)[Ljava/lang/String;
.end method

.method private native hasPasswordField()Z
.end method

.method private loadFinished(Ljava/lang/String;IZ)V
    .locals 2
    .annotation build Ldolphin/webkit/annotation/CalledByJNI;
    .end annotation

    .prologue
    .line 468
    if-nez p3, :cond_0

    if-nez p2, :cond_1

    .line 469
    :cond_0
    if-eqz p3, :cond_1

    iget-object v0, p0, Ldolphin/webkit/BrowserFrame;->d:Ldolphin/webkit/ae;

    if-eqz v0, :cond_1

    .line 470
    invoke-direct {p0}, Ldolphin/webkit/BrowserFrame;->o()V

    .line 471
    iget-object v0, p0, Ldolphin/webkit/BrowserFrame;->d:Ldolphin/webkit/ae;

    invoke-virtual {v0}, Ldolphin/webkit/ae;->h()V

    .line 472
    iget-object v0, p0, Ldolphin/webkit/BrowserFrame;->d:Ldolphin/webkit/ae;

    invoke-virtual {v0, p1}, Ldolphin/webkit/ae;->b(Ljava/lang/String;)V

    .line 473
    iget-object v0, p0, Ldolphin/webkit/BrowserFrame;->d:Ldolphin/webkit/ae;

    const/4 v1, 0x6

    invoke-virtual {v0, p1, v1}, Ldolphin/webkit/ae;->a(Ljava/lang/String;I)V

    .line 476
    :cond_1
    return-void
.end method

.method private loadStarted(Ljava/lang/String;Landroid/graphics/Bitmap;IZ)V
    .locals 3
    .annotation build Ldolphin/webkit/annotation/CalledByJNI;
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 390
    iput-boolean p4, p0, Ldolphin/webkit/BrowserFrame;->p:Z

    .line 392
    if-nez p4, :cond_0

    if-nez p3, :cond_2

    .line 393
    :cond_0
    iput p3, p0, Ldolphin/webkit/BrowserFrame;->h:I

    .line 395
    if-eqz p4, :cond_2

    .line 397
    iget-object v0, p0, Ldolphin/webkit/BrowserFrame;->d:Ldolphin/webkit/ae;

    if-eqz v0, :cond_1

    .line 398
    iget-object v0, p0, Ldolphin/webkit/BrowserFrame;->d:Ldolphin/webkit/ae;

    invoke-virtual {v0, p1, p2}, Ldolphin/webkit/ae;->a(Ljava/lang/String;Landroid/graphics/Bitmap;)V

    .line 399
    iget-object v0, p0, Ldolphin/webkit/BrowserFrame;->d:Ldolphin/webkit/ae;

    const/4 v1, 0x2

    invoke-virtual {v0, p1, v1}, Ldolphin/webkit/ae;->a(Ljava/lang/String;I)V

    .line 403
    :cond_1
    iput-boolean v2, p0, Ldolphin/webkit/BrowserFrame;->i:Z

    .line 405
    iput-boolean v2, p0, Ldolphin/webkit/BrowserFrame;->j:Z

    .line 406
    iput-boolean v2, p0, Ldolphin/webkit/BrowserFrame;->k:Z

    .line 408
    iput-boolean v2, p0, Ldolphin/webkit/BrowserFrame;->m:Z

    .line 411
    iget-object v0, p0, Ldolphin/webkit/BrowserFrame;->g:Ldolphin/webkit/WebViewCore;

    invoke-virtual {v0}, Ldolphin/webkit/WebViewCore;->clearContent()V

    .line 412
    iget-object v0, p0, Ldolphin/webkit/BrowserFrame;->g:Ldolphin/webkit/WebViewCore;

    const/16 v1, 0x82

    invoke-virtual {v0, v1}, Ldolphin/webkit/WebViewCore;->removeMessages(I)V

    .line 415
    :cond_2
    return-void
.end method

.method private maybeSavePassword([BLjava/lang/String;Ljava/lang/String;)V
    .locals 2
    .annotation build Ldolphin/webkit/annotation/CalledByJNI;
    .end annotation

    .prologue
    .line 995
    iget-object v0, p0, Ldolphin/webkit/BrowserFrame;->d:Ldolphin/webkit/ae;

    if-nez v0, :cond_1

    .line 1023
    :cond_0
    :goto_0
    return-void

    .line 998
    :cond_1
    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    invoke-virtual {p2}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    if-eqz p3, :cond_0

    invoke-virtual {p3}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1003
    iget-object v0, p0, Ldolphin/webkit/BrowserFrame;->e:Ldolphin/webkit/WebSettingsClassic;

    invoke-virtual {v0}, Ldolphin/webkit/WebSettingsClassic;->getSavePassword()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Ldolphin/webkit/BrowserFrame;->e:Ldolphin/webkit/WebSettingsClassic;

    invoke-virtual {v0}, Ldolphin/webkit/WebSettingsClassic;->isPrivateBrowsingEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1012
    :try_start_0
    new-instance v0, Ldolphin/net/e;

    iget-object v1, p0, Ldolphin/webkit/BrowserFrame;->d:Ldolphin/webkit/ae;

    invoke-virtual {v1}, Ldolphin/webkit/ae;->e()Ldolphin/webkit/WebBackForwardList;

    move-result-object v1

    invoke-virtual {v1}, Ldolphin/webkit/WebBackForwardList;->getCurrentItem()Ldolphin/webkit/WebHistoryItem;

    move-result-object v1

    invoke-virtual {v1}, Ldolphin/webkit/WebHistoryItem;->getUrl()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ldolphin/net/e;-><init>(Ljava/lang/String;)V

    .line 1015
    if-eqz v0, :cond_0

    .line 1016
    iget-object v1, p0, Ldolphin/webkit/BrowserFrame;->d:Ldolphin/webkit/ae;

    invoke-virtual {v0}, Ldolphin/net/e;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0, p2, p3}, Ldolphin/webkit/ae;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/net/ParseException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1020
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method private native nativeAddJavascriptInterface(ILjava/lang/Object;Ljava/lang/String;)V
.end method

.method private native nativeAuthenticationCancel(I)V
.end method

.method private native nativeAuthenticationProceed(ILjava/lang/String;Ljava/lang/String;)V
.end method

.method private native nativeCallPolicyFunction(II)V
.end method

.method private native nativeCreateDownloadFrame()V
.end method

.method private native nativeCreateFrame(Ldolphin/webkit/WebViewCore;Landroid/content/res/AssetManager;Ldolphin/webkit/WebBackForwardList;)V
.end method

.method private native nativeCreatePrefetchFrame()V
.end method

.method private native nativeGetCurrentPageInformation(I)Ldolphin/webkit/WebView$PageInformation;
.end method

.method private native nativeGetShouldStartScrolledRight(I)Z
.end method

.method private native nativeGoBackOrForward(I)V
.end method

.method private native nativeLoadData(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
.end method

.method private native nativeLoadUrl(Ljava/lang/String;Ljava/util/Map;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation
.end method

.method private native nativeOrientationChanged(I)V
.end method

.method private native nativePostUrl(Ljava/lang/String;[B)V
.end method

.method private native nativeSaveWebArchive(Ljava/lang/String;Z)Ljava/lang/String;
.end method

.method private native nativeSetForPreread(IZ)V
.end method

.method private native nativeSslCertErrorCancel(II)V
.end method

.method private native nativeSslCertErrorProceed(I)V
.end method

.method private native nativeStartupInit()V
.end method

.method private native nativeStopLoading()V
.end method

.method private o()V
    .locals 1

    .prologue
    const/4 v0, 0x1

    .line 342
    iput-boolean v0, p0, Ldolphin/webkit/BrowserFrame;->m:Z

    .line 343
    iput-boolean v0, p0, Ldolphin/webkit/BrowserFrame;->i:Z

    .line 344
    iput-boolean v0, p0, Ldolphin/webkit/BrowserFrame;->j:Z

    .line 345
    return-void
.end method

.method private reportError(ILjava/lang/String;Ljava/lang/String;)V
    .locals 1
    .annotation build Ldolphin/webkit/annotation/CalledByJNI;
    .end annotation

    .prologue
    .line 333
    invoke-direct {p0}, Ldolphin/webkit/BrowserFrame;->o()V

    .line 334
    if-eqz p2, :cond_0

    invoke-virtual {p2}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 335
    :cond_0
    iget-object v0, p0, Ldolphin/webkit/BrowserFrame;->f:Landroid/content/Context;

    invoke-static {p1, v0}, Ldolphin/net/http/k;->a(ILandroid/content/Context;)Ljava/lang/String;

    move-result-object p2

    .line 337
    :cond_1
    iget-object v0, p0, Ldolphin/webkit/BrowserFrame;->d:Ldolphin/webkit/ae;

    if-eqz v0, :cond_2

    .line 338
    iget-object v0, p0, Ldolphin/webkit/BrowserFrame;->d:Ldolphin/webkit/ae;

    invoke-virtual {v0, p1, p2, p3}, Ldolphin/webkit/ae;->a(ILjava/lang/String;Ljava/lang/String;)V

    .line 339
    :cond_2
    return-void
.end method

.method private reportSslCertError(II[BLjava/lang/String;)V
    .locals 3
    .annotation build Ldolphin/webkit/annotation/CalledByJNI;
    .end annotation

    .prologue
    .line 1306
    :try_start_0
    new-instance v0, Lorg/apache/harmony/security/provider/cert/X509CertImpl;

    invoke-direct {v0, p3}, Lorg/apache/harmony/security/provider/cert/X509CertImpl;-><init>([B)V

    .line 1307
    new-instance v1, Landroid/net/http/SslCertificate;

    invoke-direct {v1, v0}, Landroid/net/http/SslCertificate;-><init>(Ljava/security/cert/X509Certificate;)V

    .line 1308
    invoke-static {p2, v1, p4}, Ldolphin/net/http/SslError;->SslErrorFromChromiumErrorCode(ILandroid/net/http/SslCertificate;Ljava/lang/String;)Ldolphin/net/http/SslError;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 1315
    iget-object v1, p0, Ldolphin/webkit/BrowserFrame;->d:Ldolphin/webkit/ae;

    .line 1317
    invoke-static {}, Ldolphin/webkit/gt;->a()Ldolphin/webkit/gt;

    move-result-object v2

    invoke-virtual {v2, v0}, Ldolphin/webkit/gt;->b(Ldolphin/net/http/SslError;)Z

    move-result v2

    if-nez v2, :cond_0

    invoke-virtual {v1, p4}, Ldolphin/webkit/ae;->e(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1318
    :cond_0
    invoke-direct {p0, p1}, Ldolphin/webkit/BrowserFrame;->nativeSslCertErrorProceed(I)V

    .line 1319
    invoke-virtual {v1, v0}, Ldolphin/webkit/ae;->a(Ldolphin/net/http/SslError;)V

    .line 1343
    :goto_0
    return-void

    .line 1309
    :catch_0
    move-exception v0

    .line 1311
    const-string v0, "webkit"

    const-string v1, "Can\'t get the certificate from WebKit, canceling"

    invoke-static {v0, v1}, Ldolphin/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1312
    invoke-direct {p0, p1, p2}, Ldolphin/webkit/BrowserFrame;->nativeSslCertErrorCancel(II)V

    goto :goto_0

    .line 1323
    :cond_1
    new-instance v2, Ldolphin/webkit/w;

    invoke-direct {v2, p0, v0, p1, p2}, Ldolphin/webkit/w;-><init>(Ldolphin/webkit/BrowserFrame;Ldolphin/net/http/SslError;II)V

    .line 1342
    invoke-virtual {v1, v2, v0}, Ldolphin/webkit/ae;->a(Ldolphin/webkit/SslErrorHandler;Ldolphin/net/http/SslError;)V

    goto :goto_0
.end method

.method private requestClientCert(ILjava/lang/String;)V
    .locals 3
    .annotation build Ldolphin/webkit/annotation/CalledByJNI;
    .end annotation

    .prologue
    .line 1354
    invoke-static {}, Ldolphin/webkit/gu;->a()Ldolphin/webkit/gu;

    move-result-object v0

    .line 1355
    invoke-virtual {v0, p2}, Ldolphin/webkit/gu;->b(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1357
    invoke-virtual {v0, p2}, Ldolphin/webkit/gu;->d(Ljava/lang/String;)Ljava/security/PrivateKey;

    move-result-object v1

    .line 1358
    invoke-static {v1}, Landroid/support/i;->a(Ljava/security/PrivateKey;)I

    move-result v2

    .line 1359
    if-eqz v2, :cond_1

    .line 1360
    invoke-virtual {v0, p2}, Ldolphin/webkit/gu;->e(Ljava/lang/String;)[[B

    move-result-object v0

    invoke-virtual {p0, p1, v2, v0}, Ldolphin/webkit/BrowserFrame;->nativeSslClientCert(II[[B)V

    .line 1377
    :cond_0
    :goto_0
    return-void

    .line 1364
    :cond_1
    invoke-interface {v1}, Ljava/security/PrivateKey;->getEncoded()[B

    move-result-object v1

    invoke-virtual {v0, p2}, Ldolphin/webkit/gu;->e(Ljava/lang/String;)[[B

    move-result-object v0

    invoke-virtual {p0, p1, v1, v0}, Ldolphin/webkit/BrowserFrame;->nativeSslClientCert(I[B[[B)V

    goto :goto_0

    .line 1368
    :cond_2
    invoke-virtual {v0, p2}, Ldolphin/webkit/gu;->c(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 1370
    const/4 v1, 0x0

    const/4 v0, 0x0

    check-cast v0, [[B

    invoke-virtual {p0, p1, v1, v0}, Ldolphin/webkit/BrowserFrame;->nativeSslClientCert(II[[B)V

    goto :goto_0

    .line 1373
    :cond_3
    iget-object v1, p0, Ldolphin/webkit/BrowserFrame;->d:Ldolphin/webkit/ae;

    if-eqz v1, :cond_0

    .line 1374
    iget-object v1, p0, Ldolphin/webkit/BrowserFrame;->d:Ldolphin/webkit/ae;

    new-instance v2, Ldolphin/webkit/ay;

    invoke-direct {v2, p0, p1, p2, v0}, Ldolphin/webkit/ay;-><init>(Ldolphin/webkit/BrowserFrame;ILjava/lang/String;Ldolphin/webkit/gu;)V

    invoke-virtual {v1, v2, p2}, Ldolphin/webkit/ae;->a(Ldolphin/webkit/ay;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private requestFocus()V
    .locals 1
    .annotation build Ldolphin/webkit/annotation/CalledByJNI;
    .end annotation

    .prologue
    .line 1127
    iget-object v0, p0, Ldolphin/webkit/BrowserFrame;->d:Ldolphin/webkit/ae;

    if-eqz v0, :cond_0

    .line 1128
    iget-object v0, p0, Ldolphin/webkit/BrowserFrame;->d:Ldolphin/webkit/ae;

    invoke-virtual {v0}, Ldolphin/webkit/ae;->i()V

    .line 1129
    :cond_0
    return-void
.end method

.method private saveFormData(Ljava/util/HashMap;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .annotation build Ldolphin/webkit/annotation/CalledByJNI;
    .end annotation

    .prologue
    .line 420
    iget-object v0, p0, Ldolphin/webkit/BrowserFrame;->d:Ldolphin/webkit/ae;

    if-nez v0, :cond_1

    .line 433
    :cond_0
    :goto_0
    return-void

    .line 422
    :cond_1
    iget-object v0, p0, Ldolphin/webkit/BrowserFrame;->e:Ldolphin/webkit/WebSettingsClassic;

    invoke-virtual {v0}, Ldolphin/webkit/WebSettingsClassic;->getSaveFormData()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 423
    iget-object v0, p0, Ldolphin/webkit/BrowserFrame;->d:Ldolphin/webkit/ae;

    invoke-virtual {v0}, Ldolphin/webkit/ae;->e()Ldolphin/webkit/WebBackForwardList;

    move-result-object v0

    invoke-virtual {v0}, Ldolphin/webkit/WebBackForwardList;->getCurrentItem()Ldolphin/webkit/WebHistoryItem;

    move-result-object v0

    .line 425
    if-eqz v0, :cond_0

    .line 426
    invoke-virtual {v0}, Ldolphin/webkit/WebHistoryItem;->getUrl()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ldolphin/webkit/hy;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 427
    if-eqz v0, :cond_0

    .line 428
    iget-object v1, p0, Ldolphin/webkit/BrowserFrame;->f:Landroid/content/Context;

    invoke-static {v1}, Ldolphin/webkit/kf;->a(Landroid/content/Context;)Ldolphin/webkit/kf;

    move-result-object v1

    invoke-virtual {v1, v0, p1}, Ldolphin/webkit/kf;->c(Ljava/lang/String;Ljava/util/HashMap;)V

    goto :goto_0
.end method

.method private native setCacheDisabled(Z)V
.end method

.method private setCertificate([B)V
    .locals 3
    .annotation build Ldolphin/webkit/annotation/CalledByJNI;
    .end annotation

    .prologue
    .line 1434
    iget-object v0, p0, Ldolphin/webkit/BrowserFrame;->d:Ldolphin/webkit/ae;

    if-nez v0, :cond_0

    .line 1444
    :goto_0
    return-void

    .line 1437
    :cond_0
    :try_start_0
    new-instance v0, Lorg/apache/harmony/security/provider/cert/X509CertImpl;

    invoke-direct {v0, p1}, Lorg/apache/harmony/security/provider/cert/X509CertImpl;-><init>([B)V

    .line 1438
    iget-object v1, p0, Ldolphin/webkit/BrowserFrame;->d:Ldolphin/webkit/ae;

    new-instance v2, Landroid/net/http/SslCertificate;

    invoke-direct {v2, v0}, Landroid/net/http/SslCertificate;-><init>(Ljava/security/cert/X509Certificate;)V

    invoke-virtual {v1, v2}, Ldolphin/webkit/ae;->a(Landroid/net/http/SslCertificate;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1439
    :catch_0
    move-exception v0

    .line 1441
    const-string v0, "webkit"

    const-string v1, "Can\'t get the certificate from WebKit, canceling"

    invoke-static {v0, v1}, Ldolphin/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private setProgress(I)V
    .locals 3
    .annotation build Ldolphin/webkit/annotation/CalledByJNI;
    .end annotation

    .prologue
    .line 1065
    iget-object v0, p0, Ldolphin/webkit/BrowserFrame;->d:Ldolphin/webkit/ae;

    if-nez v0, :cond_1

    .line 1083
    :cond_0
    :goto_0
    return-void

    .line 1069
    :cond_1
    iget v0, p0, Ldolphin/webkit/BrowserFrame;->h:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_2

    iget v0, p0, Ldolphin/webkit/BrowserFrame;->h:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_3

    :cond_2
    iget-object v0, p0, Ldolphin/webkit/BrowserFrame;->e:Ldolphin/webkit/WebSettingsClassic;

    invoke-virtual {v0}, Ldolphin/webkit/WebSettingsClassic;->getShowProgressWhileBackOrForward()Z

    move-result v0

    if-eqz v0, :cond_4

    :cond_3
    iget-boolean v0, p0, Ldolphin/webkit/BrowserFrame;->k:Z

    if-nez v0, :cond_4

    .line 1072
    iget-object v0, p0, Ldolphin/webkit/BrowserFrame;->d:Ldolphin/webkit/ae;

    invoke-virtual {v0, p1}, Ldolphin/webkit/ae;->a(I)V

    .line 1074
    :cond_4
    const/16 v0, 0x64

    if-ne p1, v0, :cond_5

    .line 1075
    const/16 v0, 0x3e9

    invoke-virtual {p0, v0}, Ldolphin/webkit/BrowserFrame;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    const-wide/16 v1, 0x64

    invoke-virtual {p0, v0, v1, v2}, Ldolphin/webkit/BrowserFrame;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 1080
    :cond_5
    iget-boolean v0, p0, Ldolphin/webkit/BrowserFrame;->i:Z

    if-eqz v0, :cond_0

    const/16 v0, 0x4b

    if-le p1, v0, :cond_0

    .line 1081
    iget-object v0, p0, Ldolphin/webkit/BrowserFrame;->d:Ldolphin/webkit/ae;

    invoke-virtual {v0}, Ldolphin/webkit/ae;->h()V

    goto :goto_0
.end method

.method private setTitle(Ljava/lang/String;)V
    .locals 1
    .annotation build Ldolphin/webkit/annotation/CalledByJNI;
    .end annotation

    .prologue
    .line 593
    iget-object v0, p0, Ldolphin/webkit/BrowserFrame;->d:Ldolphin/webkit/ae;

    if-eqz v0, :cond_0

    .line 594
    iget-object v0, p0, Ldolphin/webkit/BrowserFrame;->d:Ldolphin/webkit/ae;

    invoke-virtual {v0, p1}, Ldolphin/webkit/ae;->g(Ljava/lang/String;)V

    .line 595
    :cond_0
    return-void
.end method

.method private native setUsernamePassword(Ljava/lang/String;Ljava/lang/String;)V
.end method

.method private shouldInterceptRequest(Ljava/lang/String;)Ldolphin/webkit/WebResourceResponse;
    .locals 5
    .annotation build Ldolphin/webkit/annotation/CalledByJNI;
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 1028
    iget-object v1, p0, Ldolphin/webkit/BrowserFrame;->d:Ldolphin/webkit/ae;

    if-nez v1, :cond_0

    .line 1054
    :goto_0
    return-object v0

    .line 1031
    :cond_0
    invoke-direct {p0, p1}, Ldolphin/webkit/BrowserFrame;->b(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v2

    .line 1032
    if-eqz v2, :cond_1

    .line 1033
    new-instance v1, Ldolphin/webkit/WebResourceResponse;

    invoke-direct {v1, v0, v0, v2}, Ldolphin/webkit/WebResourceResponse;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/io/InputStream;)V

    move-object v0, v1

    goto :goto_0

    .line 1038
    :cond_1
    iget-object v1, p0, Ldolphin/webkit/BrowserFrame;->e:Ldolphin/webkit/WebSettingsClassic;

    invoke-virtual {v1}, Ldolphin/webkit/WebSettingsClassic;->getAllowFileAccess()Z

    move-result v1

    if-nez v1, :cond_2

    const-string v1, "file://"

    invoke-virtual {p1, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1039
    new-instance v1, Ldolphin/webkit/WebResourceResponse;

    invoke-direct {v1, v0, v0, v0}, Ldolphin/webkit/WebResourceResponse;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/io/InputStream;)V

    move-object v0, v1

    goto :goto_0

    .line 1042
    :cond_2
    iget-object v0, p0, Ldolphin/webkit/BrowserFrame;->d:Ldolphin/webkit/ae;

    invoke-virtual {v0, p1}, Ldolphin/webkit/ae;->f(Ljava/lang/String;)Ldolphin/webkit/WebResourceResponse;

    move-result-object v1

    .line 1043
    if-nez v1, :cond_3

    const-string v0, "browser:incognito"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1045
    :try_start_0
    invoke-static {}, Ldolphin/webkit/WebKitResources;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 1046
    sget v2, Ldolphin/webkit/R$raw;->incognito_mode_start_page:I

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->openRawResource(I)Ljava/io/InputStream;

    move-result-object v2

    .line 1048
    new-instance v0, Ldolphin/webkit/WebResourceResponse;

    const-string v3, "text/html"

    const-string v4, "utf8"

    invoke-direct {v0, v3, v4, v2}, Ldolphin/webkit/WebResourceResponse;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/io/InputStream;)V
    :try_end_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1049
    :catch_0
    move-exception v0

    .line 1051
    const-string v2, "webkit"

    const-string v3, "Failed opening raw.incognito_mode_start_page"

    invoke-static {v2, v3, v0}, Ldolphin/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_3
    move-object v0, v1

    goto :goto_0
.end method

.method private shouldSaveFormData()Z
    .locals 2
    .annotation build Ldolphin/webkit/annotation/CalledByJNI;
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 438
    iget-object v1, p0, Ldolphin/webkit/BrowserFrame;->e:Ldolphin/webkit/WebSettingsClassic;

    invoke-virtual {v1}, Ldolphin/webkit/WebSettingsClassic;->getSaveFormData()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Ldolphin/webkit/BrowserFrame;->d:Ldolphin/webkit/ae;

    if-eqz v1, :cond_0

    .line 439
    iget-object v1, p0, Ldolphin/webkit/BrowserFrame;->d:Ldolphin/webkit/ae;

    invoke-virtual {v1}, Ldolphin/webkit/ae;->e()Ldolphin/webkit/WebBackForwardList;

    move-result-object v1

    invoke-virtual {v1}, Ldolphin/webkit/WebBackForwardList;->getCurrentItem()Ldolphin/webkit/WebHistoryItem;

    move-result-object v1

    .line 441
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ldolphin/webkit/WebHistoryItem;->getUrl()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    .line 443
    :cond_0
    return v0
.end method

.method private transcodeUpdate(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .annotation build Ldolphin/webkit/annotation/CalledByJNI;
    .end annotation

    .prologue
    .line 1462
    :try_start_0
    iget-object v0, p0, Ldolphin/webkit/BrowserFrame;->d:Ldolphin/webkit/ae;

    if-eqz v0, :cond_0

    .line 1463
    iget-object v0, p0, Ldolphin/webkit/BrowserFrame;->d:Ldolphin/webkit/ae;

    invoke-virtual {v0, p1, p2}, Ldolphin/webkit/ae;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1468
    :cond_0
    :goto_0
    return-void

    .line 1466
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method private transitionToCommitted(IZ)V
    .locals 1
    .annotation build Ldolphin/webkit/annotation/CalledByJNI;
    .end annotation

    .prologue
    .line 453
    if-eqz p2, :cond_0

    .line 454
    const/4 v0, 0x1

    iput-boolean v0, p0, Ldolphin/webkit/BrowserFrame;->m:Z

    .line 455
    iget-object v0, p0, Ldolphin/webkit/BrowserFrame;->g:Ldolphin/webkit/WebViewCore;

    invoke-virtual {v0}, Ldolphin/webkit/WebViewCore;->getWebViewClassic()Ldolphin/webkit/WebViewClassic;

    move-result-object v0

    iget-object v0, v0, Ldolphin/webkit/WebViewClassic;->m:Ldolphin/webkit/ViewManager;

    invoke-virtual {v0}, Ldolphin/webkit/ViewManager;->g()V

    .line 457
    :cond_0
    return-void
.end method

.method private updateVisitedHistory(Ljava/lang/String;Z)V
    .locals 1
    .annotation build Ldolphin/webkit/annotation/CalledByJNI;
    .end annotation

    .prologue
    .line 1160
    iget-object v0, p0, Ldolphin/webkit/BrowserFrame;->d:Ldolphin/webkit/ae;

    invoke-virtual {v0, p1, p2}, Ldolphin/webkit/ae;->a(Ljava/lang/String;Z)V

    .line 1161
    return-void
.end method

.method private windowObjectCleared(I)V
    .locals 3
    .annotation build Ldolphin/webkit/annotation/CalledByJNI;
    .end annotation

    .prologue
    .line 648
    iget-object v0, p0, Ldolphin/webkit/BrowserFrame;->q:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 649
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 650
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 651
    iget-object v2, p0, Ldolphin/webkit/BrowserFrame;->q:Ljava/util/Map;

    invoke-interface {v2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .line 652
    if-eqz v2, :cond_0

    .line 653
    iget-object v2, p0, Ldolphin/webkit/BrowserFrame;->q:Ljava/util/Map;

    invoke-interface {v2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-direct {p0, p1, v2, v0}, Ldolphin/webkit/BrowserFrame;->nativeAddJavascriptInterface(ILjava/lang/Object;Ljava/lang/String;)V

    goto :goto_0

    .line 657
    :cond_1
    iget-object v0, p0, Ldolphin/webkit/BrowserFrame;->r:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->clear()V

    .line 659
    const-string v0, "(function(){if (!window.chrome) {  window.chrome = {};}if (!window.chrome.searchBox) {  var sb = window.chrome.searchBox = {};  sb.setSuggestions = function(suggestions) {    if (window.searchBoxJavaBridge_) {      window.searchBoxJavaBridge_.setSuggestions(JSON.stringify(suggestions));    }  };  sb.setValue = function(valueArray) { sb.value = valueArray[0]; };  sb.value = \'\';  sb.x = 0;  sb.y = 0;  sb.width = 0;  sb.height = 0;  sb.selectionStart = 0;  sb.selectionEnd = 0;  sb.verbatim = false;}})();"

    invoke-virtual {p0, v0}, Ldolphin/webkit/BrowserFrame;->stringByEvaluatingJavaScriptFromString(Ljava/lang/String;)Ljava/lang/String;

    .line 660
    return-void
.end method


# virtual methods
.method a(Ljava/lang/String;Z)Ljava/lang/String;
    .locals 1

    .prologue
    .line 304
    invoke-direct {p0, p1, p2}, Ldolphin/webkit/BrowserFrame;->nativeSaveWebArchive(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public a(I)V
    .locals 1

    .prologue
    .line 313
    const/4 v0, 0x1

    iput-boolean v0, p0, Ldolphin/webkit/BrowserFrame;->a:Z

    .line 314
    invoke-direct {p0, p1}, Ldolphin/webkit/BrowserFrame;->nativeGoBackOrForward(I)V

    .line 315
    const/4 v0, 0x0

    iput-boolean v0, p0, Ldolphin/webkit/BrowserFrame;->a:Z

    .line 316
    return-void
.end method

.method a(Landroid/net/http/SslCertificate;)V
    .locals 1

    .prologue
    .line 502
    iget-boolean v0, p0, Ldolphin/webkit/BrowserFrame;->p:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Ldolphin/webkit/BrowserFrame;->d:Ldolphin/webkit/ae;

    if-eqz v0, :cond_0

    .line 505
    iget-object v0, p0, Ldolphin/webkit/BrowserFrame;->d:Ldolphin/webkit/ae;

    invoke-virtual {v0, p1}, Ldolphin/webkit/ae;->a(Landroid/net/http/SslCertificate;)V

    .line 507
    :cond_0
    return-void
.end method

.method public a(Landroid/os/Message;)V
    .locals 1

    .prologue
    .line 603
    invoke-direct {p0}, Ldolphin/webkit/BrowserFrame;->externalRepresentation()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 604
    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    .line 605
    return-void
.end method

.method public a(Ljava/lang/Object;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 685
    sget-boolean v0, Ldolphin/webkit/BrowserFrame;->c:Z

    if-nez v0, :cond_0

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 686
    :cond_0
    invoke-virtual {p0, p2}, Ldolphin/webkit/BrowserFrame;->a(Ljava/lang/String;)V

    .line 688
    iget-object v0, p0, Ldolphin/webkit/BrowserFrame;->q:Ljava/util/Map;

    invoke-interface {v0, p2, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 689
    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 695
    iget-object v0, p0, Ldolphin/webkit/BrowserFrame;->q:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 696
    iget-object v0, p0, Ldolphin/webkit/BrowserFrame;->r:Ljava/util/Set;

    iget-object v1, p0, Ldolphin/webkit/BrowserFrame;->q:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 698
    :cond_0
    return-void
.end method

.method a(Ljava/lang/String;II)V
    .locals 1

    .prologue
    .line 839
    iget-object v0, p0, Ldolphin/webkit/BrowserFrame;->d:Ldolphin/webkit/ae;

    if-eqz v0, :cond_0

    .line 840
    iget-object v0, p0, Ldolphin/webkit/BrowserFrame;->d:Ldolphin/webkit/ae;

    invoke-virtual {v0, p1, p2, p3}, Ldolphin/webkit/ae;->a(Ljava/lang/String;II)V

    .line 841
    :cond_0
    return-void
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 6

    .prologue
    .line 275
    const/4 v0, 0x1

    iput-boolean v0, p0, Ldolphin/webkit/BrowserFrame;->a:Z

    .line 276
    if-eqz p5, :cond_0

    invoke-virtual {p5}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_6

    .line 277
    :cond_0
    const-string v5, "about:blank"

    .line 279
    :goto_0
    if-nez p2, :cond_5

    .line 280
    const-string v2, ""

    .line 285
    :goto_1
    if-eqz p1, :cond_1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_4

    .line 286
    :cond_1
    const-string v1, "about:blank"

    .line 288
    :goto_2
    if-eqz p3, :cond_2

    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_3

    .line 289
    :cond_2
    const-string v3, "text/html"

    :goto_3
    move-object v0, p0

    move-object v4, p4

    .line 291
    invoke-direct/range {v0 .. v5}, Ldolphin/webkit/BrowserFrame;->nativeLoadData(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 292
    const/4 v0, 0x0

    iput-boolean v0, p0, Ldolphin/webkit/BrowserFrame;->a:Z

    .line 293
    return-void

    :cond_3
    move-object v3, p3

    goto :goto_3

    :cond_4
    move-object v1, p1

    goto :goto_2

    :cond_5
    move-object v2, p2

    goto :goto_1

    :cond_6
    move-object v5, p5

    goto :goto_0
.end method

.method public a(Ljava/lang/String;Ljava/util/Map;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 241
    const/4 v0, 0x1

    iput-boolean v0, p0, Ldolphin/webkit/BrowserFrame;->a:Z

    .line 242
    invoke-static {p1}, Ldolphin/webkit/URLUtil;->isJavaScriptUrl(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 244
    const-string v0, "javascript:"

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ldolphin/webkit/BrowserFrame;->stringByEvaluatingJavaScriptFromString(Ljava/lang/String;)Ljava/lang/String;

    .line 249
    :goto_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Ldolphin/webkit/BrowserFrame;->a:Z

    .line 250
    return-void

    .line 247
    :cond_0
    invoke-direct {p0, p1, p2}, Ldolphin/webkit/BrowserFrame;->nativeLoadUrl(Ljava/lang/String;Ljava/util/Map;)V

    goto :goto_0
.end method

.method public a(Ljava/lang/String;[B)V
    .locals 1

    .prologue
    .line 258
    const/4 v0, 0x1

    iput-boolean v0, p0, Ldolphin/webkit/BrowserFrame;->a:Z

    .line 259
    invoke-direct {p0, p1, p2}, Ldolphin/webkit/BrowserFrame;->nativePostUrl(Ljava/lang/String;[B)V

    .line 260
    const/4 v0, 0x0

    iput-boolean v0, p0, Ldolphin/webkit/BrowserFrame;->a:Z

    .line 261
    return-void
.end method

.method public a(Z)V
    .locals 1

    .prologue
    .line 1627
    iget v0, p0, Ldolphin/webkit/BrowserFrame;->mNativeFrame:I

    invoke-direct {p0, v0, p1}, Ldolphin/webkit/BrowserFrame;->nativeSetForPreread(IZ)V

    .line 1628
    return-void
.end method

.method a()Z
    .locals 1

    .prologue
    .line 348
    iget-boolean v0, p0, Ldolphin/webkit/BrowserFrame;->m:Z

    return v0
.end method

.method public b(Landroid/os/Message;)V
    .locals 2

    .prologue
    .line 618
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 619
    iget v1, p1, Landroid/os/Message;->arg1:I

    if-eqz v1, :cond_0

    .line 621
    invoke-direct {p0}, Ldolphin/webkit/BrowserFrame;->documentAsText()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 623
    :cond_0
    iget v1, p1, Landroid/os/Message;->arg2:I

    if-eqz v1, :cond_1

    .line 625
    invoke-direct {p0}, Ldolphin/webkit/BrowserFrame;->childFramesAsText()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 627
    :cond_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 628
    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    .line 629
    return-void
.end method

.method b()Z
    .locals 1

    .prologue
    .line 352
    iget-boolean v0, p0, Ldolphin/webkit/BrowserFrame;->k:Z

    return v0
.end method

.method c()Z
    .locals 1

    .prologue
    .line 356
    iget-boolean v0, p0, Ldolphin/webkit/BrowserFrame;->i:Z

    return v0
.end method

.method public native cacheDisabled()Z
.end method

.method public native clearCache()V
.end method

.method d()I
    .locals 1

    .prologue
    .line 360
    iget v0, p0, Ldolphin/webkit/BrowserFrame;->h:I

    return v0
.end method

.method public native documentHasImages()Z
.end method

.method e()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 364
    iget-boolean v0, p0, Ldolphin/webkit/BrowserFrame;->i:Z

    if-nez v0, :cond_0

    .line 365
    invoke-static {}, Ldolphin/webkit/fo;->b()V

    .line 366
    iput-boolean v1, p0, Ldolphin/webkit/BrowserFrame;->i:Z

    .line 369
    iget-object v0, p0, Ldolphin/webkit/BrowserFrame;->g:Ldolphin/webkit/WebViewCore;

    invoke-virtual {v0, v1}, Ldolphin/webkit/WebViewCore;->contentDraw(Z)V

    .line 371
    :cond_0
    return-void
.end method

.method f()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 374
    iget-boolean v0, p0, Ldolphin/webkit/BrowserFrame;->j:Z

    if-nez v0, :cond_0

    .line 375
    iput-boolean v1, p0, Ldolphin/webkit/BrowserFrame;->j:Z

    .line 378
    iget-object v0, p0, Ldolphin/webkit/BrowserFrame;->g:Ldolphin/webkit/WebViewCore;

    invoke-virtual {v0, v1}, Ldolphin/webkit/WebViewCore;->contentDraw(Z)V

    .line 380
    :cond_0
    return-void
.end method

.method public g()V
    .locals 1

    .prologue
    .line 514
    invoke-virtual {p0}, Ldolphin/webkit/BrowserFrame;->nativeDestroyFrame()V

    .line 515
    const/4 v0, 0x1

    iput-boolean v0, p0, Ldolphin/webkit/BrowserFrame;->n:Z

    .line 516
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Ldolphin/webkit/BrowserFrame;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 517
    return-void
.end method

.method public h()V
    .locals 1

    .prologue
    .line 577
    iget-boolean v0, p0, Ldolphin/webkit/BrowserFrame;->l:Z

    if-eqz v0, :cond_0

    .line 578
    iget v0, p0, Ldolphin/webkit/BrowserFrame;->o:I

    invoke-direct {p0, v0}, Ldolphin/webkit/BrowserFrame;->nativeOrientationChanged(I)V

    .line 579
    const/4 v0, 0x0

    iput-boolean v0, p0, Ldolphin/webkit/BrowserFrame;->l:Z

    .line 581
    :cond_0
    return-void
.end method

.method public handleMessage(Landroid/os/Message;)V
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 525
    iget-boolean v0, p0, Ldolphin/webkit/BrowserFrame;->n:Z

    if-eqz v0, :cond_1

    .line 574
    :cond_0
    :goto_0
    return-void

    .line 528
    :cond_1
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 530
    :pswitch_0
    iget-object v0, p0, Ldolphin/webkit/BrowserFrame;->d:Ldolphin/webkit/ae;

    if-eqz v0, :cond_0

    iget-object v0, p0, Ldolphin/webkit/BrowserFrame;->e:Ldolphin/webkit/WebSettingsClassic;

    invoke-virtual {v0}, Ldolphin/webkit/WebSettingsClassic;->getSavePassword()Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Ldolphin/webkit/BrowserFrame;->e:Ldolphin/webkit/WebSettingsClassic;

    invoke-virtual {v0}, Ldolphin/webkit/WebSettingsClassic;->isPrivateBrowsingEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    :cond_2
    invoke-direct {p0}, Ldolphin/webkit/BrowserFrame;->hasPasswordField()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 531
    iget-object v0, p0, Ldolphin/webkit/BrowserFrame;->d:Ldolphin/webkit/ae;

    invoke-virtual {v0}, Ldolphin/webkit/ae;->e()Ldolphin/webkit/WebBackForwardList;

    move-result-object v0

    invoke-virtual {v0}, Ldolphin/webkit/WebBackForwardList;->getCurrentItem()Ldolphin/webkit/WebHistoryItem;

    move-result-object v0

    .line 533
    if-eqz v0, :cond_0

    .line 534
    new-instance v1, Ldolphin/net/e;

    invoke-virtual {v0}, Ldolphin/webkit/WebHistoryItem;->getUrl()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ldolphin/net/e;-><init>(Ljava/lang/String;)V

    .line 535
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Ldolphin/net/e;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v1}, Ldolphin/net/e;->b()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 536
    iget-object v1, p0, Ldolphin/webkit/BrowserFrame;->f:Landroid/content/Context;

    invoke-static {v1}, Ldolphin/webkit/kf;->a(Landroid/content/Context;)Ldolphin/webkit/kf;

    move-result-object v1

    invoke-virtual {v1, v0}, Ldolphin/webkit/kf;->e(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 539
    if-eqz v0, :cond_0

    aget-object v1, v0, v3

    if-eqz v1, :cond_0

    .line 540
    aget-object v1, v0, v3

    aget-object v0, v0, v4

    invoke-direct {p0, v1, v0}, Ldolphin/webkit/BrowserFrame;->setUsernamePassword(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 548
    :pswitch_1
    iget v0, p1, Landroid/os/Message;->arg1:I

    iget v1, p1, Landroid/os/Message;->arg2:I

    invoke-direct {p0, v0, v1}, Ldolphin/webkit/BrowserFrame;->nativeCallPolicyFunction(II)V

    goto :goto_0

    .line 553
    :pswitch_2
    iget v0, p0, Ldolphin/webkit/BrowserFrame;->o:I

    iget v1, p1, Landroid/os/Message;->arg1:I

    if-eq v0, v1, :cond_0

    .line 554
    iget v0, p1, Landroid/os/Message;->arg1:I

    iput v0, p0, Ldolphin/webkit/BrowserFrame;->o:I

    .line 558
    iput-boolean v4, p0, Ldolphin/webkit/BrowserFrame;->l:Z

    goto :goto_0

    .line 566
    :pswitch_3
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, [Ljava/lang/String;

    check-cast v0, [Ljava/lang/String;

    .line 567
    iget-object v1, p0, Ldolphin/webkit/BrowserFrame;->d:Ldolphin/webkit/ae;

    if-eqz v1, :cond_0

    aget-object v1, v0, v3

    iget-object v2, p0, Ldolphin/webkit/BrowserFrame;->d:Ldolphin/webkit/ae;

    invoke-virtual {v2}, Ldolphin/webkit/ae;->e()Ldolphin/webkit/WebBackForwardList;

    move-result-object v2

    invoke-virtual {v2}, Ldolphin/webkit/WebBackForwardList;->getCurrentItem()Ldolphin/webkit/WebHistoryItem;

    move-result-object v2

    invoke-virtual {v2}, Ldolphin/webkit/WebHistoryItem;->getUrl()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 568
    aget-object v1, v0, v4

    const/4 v2, 0x2

    aget-object v0, v0, v2

    invoke-direct {p0, v1, v0}, Ldolphin/webkit/BrowserFrame;->setUsernamePassword(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 528
    :pswitch_data_0
    .packed-switch 0x3e9
        :pswitch_0
        :pswitch_2
        :pswitch_1
        :pswitch_3
    .end packed-switch
.end method

.method public handleUrl(Ljava/lang/String;)Z
    .locals 3
    .annotation build Ldolphin/webkit/annotation/CalledByJNI;
    .end annotation

    .prologue
    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 668
    iget-boolean v2, p0, Ldolphin/webkit/BrowserFrame;->a:Z

    if-ne v2, v1, :cond_1

    .line 680
    :cond_0
    :goto_0
    return v0

    .line 671
    :cond_1
    iget-object v2, p0, Ldolphin/webkit/BrowserFrame;->d:Ldolphin/webkit/ae;

    if-eqz v2, :cond_2

    iget-object v2, p0, Ldolphin/webkit/BrowserFrame;->d:Ldolphin/webkit/ae;

    invoke-virtual {v2, p1}, Ldolphin/webkit/ae;->d(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 673
    invoke-virtual {p0}, Ldolphin/webkit/BrowserFrame;->e()V

    move v0, v1

    .line 674
    goto :goto_0

    .line 675
    :cond_2
    invoke-static {}, Ldolphin/webkit/Prereader;->b()Ldolphin/webkit/Prereader;

    move-result-object v2

    invoke-virtual {v2, p1}, Ldolphin/webkit/Prereader;->b(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    move v0, v1

    .line 678
    goto :goto_0
.end method

.method i()Ldolphin/webkit/ae;
    .locals 1

    .prologue
    .line 1167
    iget-object v0, p0, Ldolphin/webkit/BrowserFrame;->d:Ldolphin/webkit/ae;

    return-object v0
.end method

.method j()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1174
    iget-object v0, p0, Ldolphin/webkit/BrowserFrame;->e:Ldolphin/webkit/WebSettingsClassic;

    invoke-virtual {v0}, Ldolphin/webkit/WebSettingsClassic;->getUserAgentString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method k()Ldolphin/webkit/gn;
    .locals 1

    .prologue
    .line 1447
    iget-object v0, p0, Ldolphin/webkit/BrowserFrame;->t:Ldolphin/webkit/gq;

    return-object v0
.end method

.method public l()V
    .locals 1

    .prologue
    .line 1561
    iget-boolean v0, p0, Ldolphin/webkit/BrowserFrame;->p:Z

    if-eqz v0, :cond_0

    .line 1562
    invoke-direct {p0}, Ldolphin/webkit/BrowserFrame;->o()V

    .line 1564
    :cond_0
    invoke-direct {p0}, Ldolphin/webkit/BrowserFrame;->nativeStopLoading()V

    .line 1565
    return-void
.end method

.method m()Z
    .locals 1

    .prologue
    .line 1620
    iget v0, p0, Ldolphin/webkit/BrowserFrame;->mNativeFrame:I

    invoke-direct {p0, v0}, Ldolphin/webkit/BrowserFrame;->nativeGetShouldStartScrolledRight(I)Z

    move-result v0

    return v0
.end method

.method public n()Ldolphin/webkit/WebView$PageInformation;
    .locals 1

    .prologue
    .line 1631
    iget v0, p0, Ldolphin/webkit/BrowserFrame;->mNativeFrame:I

    invoke-direct {p0, v0}, Ldolphin/webkit/BrowserFrame;->nativeGetCurrentPageInformation(I)Ldolphin/webkit/WebView$PageInformation;

    move-result-object v0

    return-object v0
.end method

.method public native nativeDestroyFrame()V
.end method

.method native nativeSslClientCert(II[[B)V
.end method

.method native nativeSslClientCert(I[B[[B)V
.end method

.method public native reload(Z)V
.end method

.method public startLoadingPriorityResource(ILjava/lang/String;Ljava/lang/String;Ljava/util/HashMap;[BJIZZZLjava/lang/String;Ljava/lang/String;I)Ldolphin/webkit/LoadListener;
    .locals 14
    .annotation build Ldolphin/webkit/annotation/CalledByJNI;
    .end annotation

    .prologue
    .line 895
    iget-object v1, p0, Ldolphin/webkit/BrowserFrame;->e:Ldolphin/webkit/WebSettingsClassic;

    invoke-virtual {v1}, Ldolphin/webkit/WebSettingsClassic;->ensurePrefetchUserAgentString()V

    .line 897
    iget-object v1, p0, Ldolphin/webkit/BrowserFrame;->e:Ldolphin/webkit/WebSettingsClassic;

    invoke-virtual {v1}, Ldolphin/webkit/WebSettingsClassic;->getCacheMode()I

    move-result v1

    const/4 v2, -0x1

    if-eq v1, v2, :cond_0

    .line 898
    iget-object v1, p0, Ldolphin/webkit/BrowserFrame;->e:Ldolphin/webkit/WebSettingsClassic;

    invoke-virtual {v1}, Ldolphin/webkit/WebSettingsClassic;->getCacheMode()I

    move-result p8

    .line 901
    :cond_0
    const-string v1, "webkit"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Loading url: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Ldolphin/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 902
    const-string v1, "POST"

    move-object/from16 v0, p3

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 905
    if-nez p8, :cond_1

    .line 906
    const/16 p8, 0x2

    .line 908
    :cond_1
    move-object/from16 v0, p2

    invoke-direct {p0, v0}, Ldolphin/webkit/BrowserFrame;->getUsernamePassword(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 909
    if-eqz v1, :cond_2

    .line 910
    const/4 v2, 0x0

    aget-object v2, v1, v2

    .line 911
    const/4 v3, 0x1

    aget-object v1, v1, v3

    .line 912
    move-object/from16 v0, p5

    invoke-direct {p0, v0, v2, v1}, Ldolphin/webkit/BrowserFrame;->maybeSavePassword([BLjava/lang/String;Ljava/lang/String;)V

    .line 917
    :cond_2
    iget-boolean v6, p0, Ldolphin/webkit/BrowserFrame;->p:Z

    .line 930
    iget-object v1, p0, Ldolphin/webkit/BrowserFrame;->f:Landroid/content/Context;

    invoke-static/range {p14 .. p14}, Ldolphin/net/c/d;->a(I)Ldolphin/net/c/d;

    move-result-object v13

    move-object v2, p0

    move-object/from16 v3, p2

    move v4, p1

    move/from16 v5, p11

    move/from16 v7, p9

    move/from16 v8, p10

    move-wide/from16 v9, p6

    move-object/from16 v11, p12

    move-object/from16 v12, p13

    invoke-static/range {v1 .. v13}, Ldolphin/webkit/LoadListener;->getLoadListener(Landroid/content/Context;Ldolphin/webkit/BrowserFrame;Ljava/lang/String;IZZZZJLjava/lang/String;Ljava/lang/String;Ldolphin/net/c/d;)Ldolphin/webkit/LoadListener;

    move-result-object v2

    .line 936
    const-string v1, "dolphin-video-cache"

    move-object/from16 v0, p4

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 937
    const/4 v1, 0x1

    invoke-virtual {v2, v1}, Ldolphin/webkit/LoadListener;->a(Z)V

    .line 938
    const-string v1, "dolphin-video-cache"

    move-object/from16 v0, p4

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 944
    :goto_0
    invoke-static {}, Ldolphin/webkit/LoadListener;->getNativeLoaderCount()I

    move-result v1

    const/16 v3, 0x12c

    if-le v1, v3, :cond_4

    .line 949
    const/4 v1, -0x1

    sget v3, Ldolphin/webkit/R$string;->httpErrorTooManyRequests:I

    invoke-static {v3}, Ldolphin/webkit/WebKitResources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v1, v3}, Ldolphin/webkit/LoadListener;->a(ILjava/lang/String;)V

    .line 977
    :goto_1
    return-object v2

    .line 941
    :cond_3
    const/4 v1, 0x0

    invoke-virtual {v2, v1}, Ldolphin/webkit/LoadListener;->a(Z)V

    goto :goto_0

    .line 958
    :cond_4
    new-instance v3, Ldolphin/webkit/by;

    iget-object v4, p0, Ldolphin/webkit/BrowserFrame;->e:Ldolphin/webkit/WebSettingsClassic;

    iget-object v1, p0, Ldolphin/webkit/BrowserFrame;->d:Ldolphin/webkit/ae;

    if-eqz v1, :cond_7

    iget-object v1, p0, Ldolphin/webkit/BrowserFrame;->d:Ldolphin/webkit/ae;

    move-object/from16 v0, p2

    invoke-virtual {v1, v0}, Ldolphin/webkit/ae;->f(Ljava/lang/String;)Ldolphin/webkit/WebResourceResponse;

    move-result-object v1

    :goto_2
    move-object/from16 v0, p3

    invoke-direct {v3, v2, v4, v0, v1}, Ldolphin/webkit/by;-><init>(Ldolphin/webkit/LoadListener;Ldolphin/webkit/WebSettingsClassic;Ljava/lang/String;Ldolphin/webkit/WebResourceResponse;)V

    .line 960
    move-object/from16 v0, p4

    invoke-virtual {v3, v0}, Ldolphin/webkit/by;->a(Ljava/util/HashMap;)V

    .line 961
    move-object/from16 v0, p5

    invoke-virtual {v3, v0}, Ldolphin/webkit/by;->a([B)V

    .line 964
    const-string v1, "If-Modified-Since"

    move-object/from16 v0, p4

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5

    const-string v1, "If-None-Match"

    move-object/from16 v0, p4

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8

    .line 965
    :cond_5
    const-string v1, "webkit"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Load URL with No Cache mode as WebKit request validation - "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p2

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Ldolphin/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 966
    const/4 v1, 0x2

    invoke-virtual {v3, v1}, Ldolphin/webkit/by;->a(I)V

    .line 974
    :goto_3
    invoke-virtual {v3}, Ldolphin/webkit/by;->a()Z

    move-result v1

    if-nez v1, :cond_6

    .line 975
    const-string v1, "webkit"

    const-string v3, "startLoadingResource fail"

    invoke-static {v1, v3}, Ldolphin/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 977
    :cond_6
    if-nez p11, :cond_9

    move-object v1, v2

    :goto_4
    move-object v2, v1

    goto :goto_1

    .line 958
    :cond_7
    const/4 v1, 0x0

    goto :goto_2

    .line 968
    :cond_8
    const-string v1, "webkit"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Load URL with Cache mode "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v0, p8

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " - "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p2

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Ldolphin/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 969
    move/from16 v0, p8

    invoke-virtual {v3, v0}, Ldolphin/webkit/by;->a(I)V

    goto :goto_3

    .line 977
    :cond_9
    const/4 v1, 0x0

    goto :goto_4
.end method

.method public startLoadingResource(ILjava/lang/String;Ljava/lang/String;Ljava/util/HashMap;[BJIZZZLjava/lang/String;Ljava/lang/String;)Ldolphin/webkit/LoadListener;
    .locals 15
    .annotation build Ldolphin/webkit/annotation/CalledByJNI;
    .end annotation

    .prologue
    .line 873
    const/4 v14, 0x0

    move-object v0, p0

    move/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move-object/from16 v4, p4

    move-object/from16 v5, p5

    move-wide/from16 v6, p6

    move/from16 v8, p8

    move/from16 v9, p9

    move/from16 v10, p10

    move/from16 v11, p11

    move-object/from16 v12, p12

    move-object/from16 v13, p13

    invoke-virtual/range {v0 .. v14}, Ldolphin/webkit/BrowserFrame;->startLoadingPriorityResource(ILjava/lang/String;Ljava/lang/String;Ljava/util/HashMap;[BJIZZZLjava/lang/String;Ljava/lang/String;I)Ldolphin/webkit/LoadListener;

    move-result-object v0

    return-object v0
.end method

.method public native stringByEvaluatingJavaScriptFromString(Ljava/lang/String;)Ljava/lang/String;
.end method
