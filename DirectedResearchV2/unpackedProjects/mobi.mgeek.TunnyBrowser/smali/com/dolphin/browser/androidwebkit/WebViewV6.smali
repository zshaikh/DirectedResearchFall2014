.class Lcom/dolphin/browser/androidwebkit/WebViewV6;
.super Lcom/dolphin/browser/androidwebkit/WebViewV7;
.source "WebViewV6.java"


# annotations
.annotation build Lcom/dolphin/browser/annotation/KeepClass;
.end annotation


# static fields
.field public static final d:D

.field private static f:F

.field private static g:Z

.field private static h:Ljava/lang/reflect/Field;

.field private static i:Ljava/lang/reflect/Field;

.field private static j:Ljava/lang/reflect/Field;

.field private static k:Ljava/lang/reflect/Field;

.field private static l:Ljava/lang/reflect/Field;

.field private static m:Ljava/lang/reflect/Field;

.field private static n:Ljava/lang/reflect/Field;

.field private static o:Ljava/lang/reflect/Field;

.field private static p:Ljava/lang/reflect/Method;


# instance fields
.field private e:Lcom/dolphin/browser/core/q;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 74
    const v0, 0x3c23d70a

    sput v0, Lcom/dolphin/browser/androidwebkit/WebViewV6;->f:F

    .line 75
    const/4 v0, 0x0

    sput-boolean v0, Lcom/dolphin/browser/androidwebkit/WebViewV6;->g:Z

    .line 87
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    float-to-double v0, v0

    sput-wide v0, Lcom/dolphin/browser/androidwebkit/WebViewV6;->d:D

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 39
    invoke-direct {p0, p1}, Lcom/dolphin/browser/androidwebkit/WebViewV7;-><init>(Landroid/content/Context;)V

    .line 40
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .prologue
    .line 50
    invoke-direct {p0, p1, p2}, Lcom/dolphin/browser/androidwebkit/WebViewV7;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 51
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .prologue
    .line 62
    invoke-direct {p0, p1, p2, p3}, Lcom/dolphin/browser/androidwebkit/WebViewV7;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 63
    return-void
.end method

.method static synthetic I()Z
    .locals 1

    .prologue
    .line 30
    sget-boolean v0, Lcom/dolphin/browser/androidwebkit/WebViewV6;->g:Z

    return v0
.end method

.method static synthetic J()Ljava/lang/reflect/Field;
    .locals 1

    .prologue
    .line 30
    sget-object v0, Lcom/dolphin/browser/androidwebkit/WebViewV6;->h:Ljava/lang/reflect/Field;

    return-object v0
.end method

.method static synthetic K()Ljava/lang/reflect/Field;
    .locals 1

    .prologue
    .line 30
    sget-object v0, Lcom/dolphin/browser/androidwebkit/WebViewV6;->i:Ljava/lang/reflect/Field;

    return-object v0
.end method

.method static synthetic L()Ljava/lang/reflect/Field;
    .locals 1

    .prologue
    .line 30
    sget-object v0, Lcom/dolphin/browser/androidwebkit/WebViewV6;->j:Ljava/lang/reflect/Field;

    return-object v0
.end method

.method static synthetic M()Ljava/lang/reflect/Field;
    .locals 1

    .prologue
    .line 30
    sget-object v0, Lcom/dolphin/browser/androidwebkit/WebViewV6;->k:Ljava/lang/reflect/Field;

    return-object v0
.end method

.method static synthetic N()Ljava/lang/reflect/Field;
    .locals 1

    .prologue
    .line 30
    sget-object v0, Lcom/dolphin/browser/androidwebkit/WebViewV6;->l:Ljava/lang/reflect/Field;

    return-object v0
.end method

.method static synthetic O()Ljava/lang/reflect/Field;
    .locals 1

    .prologue
    .line 30
    sget-object v0, Lcom/dolphin/browser/androidwebkit/WebViewV6;->m:Ljava/lang/reflect/Field;

    return-object v0
.end method

.method static synthetic P()Ljava/lang/reflect/Field;
    .locals 1

    .prologue
    .line 30
    sget-object v0, Lcom/dolphin/browser/androidwebkit/WebViewV6;->n:Ljava/lang/reflect/Field;

    return-object v0
.end method

.method static synthetic Q()Ljava/lang/reflect/Field;
    .locals 1

    .prologue
    .line 30
    sget-object v0, Lcom/dolphin/browser/androidwebkit/WebViewV6;->o:Ljava/lang/reflect/Field;

    return-object v0
.end method

.method static synthetic R()Ljava/lang/reflect/Method;
    .locals 1

    .prologue
    .line 30
    sget-object v0, Lcom/dolphin/browser/androidwebkit/WebViewV6;->p:Ljava/lang/reflect/Method;

    return-object v0
.end method

.method static synthetic S()F
    .locals 1

    .prologue
    .line 30
    sget v0, Lcom/dolphin/browser/androidwebkit/WebViewV6;->f:F

    return v0
.end method

.method private T()V
    .locals 8

    .prologue
    .line 112
    :try_start_0
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    const/4 v4, 0x3

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-static/range {v0 .. v7}, Landroid/view/MotionEvent;->obtain(JJIFFI)Landroid/view/MotionEvent;

    move-result-object v0

    .line 114
    invoke-static {p0, v0}, Lcom/dolphin/browser/androidwebkit/WebViewV6;->a(Lcom/dolphin/browser/androidwebkit/WebViewV6;Landroid/view/MotionEvent;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 117
    :goto_0
    return-void

    .line 115
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method static synthetic a(Ljava/lang/reflect/Field;)Ljava/lang/reflect/Field;
    .locals 0

    .prologue
    .line 30
    sput-object p0, Lcom/dolphin/browser/androidwebkit/WebViewV6;->h:Ljava/lang/reflect/Field;

    return-object p0
.end method

.method static synthetic a(Ljava/lang/reflect/Method;)Ljava/lang/reflect/Method;
    .locals 0

    .prologue
    .line 30
    sput-object p0, Lcom/dolphin/browser/androidwebkit/WebViewV6;->p:Ljava/lang/reflect/Method;

    return-object p0
.end method

.method private a(F)V
    .locals 2

    .prologue
    .line 98
    :try_start_0
    sget-object v0, Lcom/dolphin/browser/androidwebkit/WebViewV6;->j:Ljava/lang/reflect/Field;

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    invoke-virtual {v0, p0, v1}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 101
    :goto_0
    return-void

    .line 99
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method private a(J)V
    .locals 2

    .prologue
    .line 91
    :try_start_0
    sget-object v0, Lcom/dolphin/browser/androidwebkit/WebViewV6;->i:Ljava/lang/reflect/Field;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, p0, v1}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 94
    :goto_0
    return-void

    .line 92
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method static synthetic a(Lcom/dolphin/browser/androidwebkit/WebViewV6;)V
    .locals 0

    .prologue
    .line 30
    invoke-direct {p0}, Lcom/dolphin/browser/androidwebkit/WebViewV6;->T()V

    return-void
.end method

.method static synthetic a(Lcom/dolphin/browser/androidwebkit/WebViewV6;Landroid/view/MotionEvent;)Z
    .locals 1

    .prologue
    .line 30
    invoke-super {p0, p1}, Lcom/dolphin/browser/androidwebkit/MyWebView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method

.method static synthetic b(Ljava/lang/reflect/Field;)Ljava/lang/reflect/Field;
    .locals 0

    .prologue
    .line 30
    sput-object p0, Lcom/dolphin/browser/androidwebkit/WebViewV6;->i:Ljava/lang/reflect/Field;

    return-object p0
.end method

.method private b(F)V
    .locals 2

    .prologue
    .line 105
    :try_start_0
    sget-object v0, Lcom/dolphin/browser/androidwebkit/WebViewV6;->k:Ljava/lang/reflect/Field;

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    invoke-virtual {v0, p0, v1}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 108
    :goto_0
    return-void

    .line 106
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method static synthetic c(Ljava/lang/reflect/Field;)Ljava/lang/reflect/Field;
    .locals 0

    .prologue
    .line 30
    sput-object p0, Lcom/dolphin/browser/androidwebkit/WebViewV6;->j:Ljava/lang/reflect/Field;

    return-object p0
.end method

.method static synthetic d(Ljava/lang/reflect/Field;)Ljava/lang/reflect/Field;
    .locals 0

    .prologue
    .line 30
    sput-object p0, Lcom/dolphin/browser/androidwebkit/WebViewV6;->k:Ljava/lang/reflect/Field;

    return-object p0
.end method

.method static synthetic d(Z)Z
    .locals 0

    .prologue
    .line 30
    sput-boolean p0, Lcom/dolphin/browser/androidwebkit/WebViewV6;->g:Z

    return p0
.end method

.method static synthetic e(Ljava/lang/reflect/Field;)Ljava/lang/reflect/Field;
    .locals 0

    .prologue
    .line 30
    sput-object p0, Lcom/dolphin/browser/androidwebkit/WebViewV6;->l:Ljava/lang/reflect/Field;

    return-object p0
.end method

.method static synthetic f(Ljava/lang/reflect/Field;)Ljava/lang/reflect/Field;
    .locals 0

    .prologue
    .line 30
    sput-object p0, Lcom/dolphin/browser/androidwebkit/WebViewV6;->m:Ljava/lang/reflect/Field;

    return-object p0
.end method

.method static synthetic g(Ljava/lang/reflect/Field;)Ljava/lang/reflect/Field;
    .locals 0

    .prologue
    .line 30
    sput-object p0, Lcom/dolphin/browser/androidwebkit/WebViewV6;->n:Ljava/lang/reflect/Field;

    return-object p0
.end method

.method static synthetic h(Ljava/lang/reflect/Field;)Ljava/lang/reflect/Field;
    .locals 0

    .prologue
    .line 30
    sput-object p0, Lcom/dolphin/browser/androidwebkit/WebViewV6;->o:Ljava/lang/reflect/Field;

    return-object p0
.end method


# virtual methods
.method protected H()Z
    .locals 1

    .prologue
    .line 323
    const/4 v0, 0x1

    return v0
.end method

.method a(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    .prologue
    .line 328
    const/4 v0, 0x0

    .line 329
    const-string v1, "mWebViewCore"

    .line 332
    :try_start_0
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v1

    const-string v2, "mWebViewCore"

    invoke-virtual {v1, v2}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v1

    .line 340
    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 341
    invoke-virtual {v1, p1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 346
    :goto_0
    return-object v0

    .line 342
    :catch_0
    move-exception v1

    .line 343
    const-string v2, "MyWebView"

    invoke-static {v2, v1}, Lcom/dolphin/browser/util/Log;->e(Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method protected a(Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 67
    invoke-super {p0, p1}, Lcom/dolphin/browser/androidwebkit/WebViewV7;->a(Landroid/content/Context;)V

    .line 68
    invoke-virtual {p0, p1}, Lcom/dolphin/browser/androidwebkit/WebViewV6;->b(Landroid/content/Context;)V

    .line 69
    return-void
.end method

.method protected a(Landroid/view/MotionEvent;)V
    .locals 4

    .prologue
    .line 297
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v0

    .line 298
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    .line 299
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    .line 300
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    .line 301
    iget-object v2, p0, Lcom/dolphin/browser/androidwebkit/WebViewV6;->e:Lcom/dolphin/browser/core/q;

    invoke-virtual {v2, p1}, Lcom/dolphin/browser/core/q;->a(Landroid/view/MotionEvent;)Z

    .line 302
    iget-object v2, p0, Lcom/dolphin/browser/androidwebkit/WebViewV6;->e:Lcom/dolphin/browser/core/q;

    invoke-virtual {v2}, Lcom/dolphin/browser/core/q;->b()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 303
    invoke-direct {p0, v0, v1}, Lcom/dolphin/browser/androidwebkit/WebViewV6;->a(J)V

    .line 319
    :cond_0
    :goto_0
    return-void

    .line 306
    :cond_1
    iget-object v0, p0, Lcom/dolphin/browser/androidwebkit/WebViewV6;->e:Lcom/dolphin/browser/core/q;

    invoke-virtual {v0}, Lcom/dolphin/browser/core/q;->c()F

    move-result v0

    .line 307
    iget-object v1, p0, Lcom/dolphin/browser/androidwebkit/WebViewV6;->e:Lcom/dolphin/browser/core/q;

    invoke-virtual {v1}, Lcom/dolphin/browser/core/q;->d()F

    move-result v1

    .line 308
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    and-int/lit16 v2, v2, 0xff

    .line 309
    const/4 v3, 0x5

    if-ne v2, v3, :cond_2

    .line 310
    invoke-direct {p0}, Lcom/dolphin/browser/androidwebkit/WebViewV6;->T()V

    goto :goto_0

    .line 312
    :cond_2
    const/4 v3, 0x6

    if-ne v2, v3, :cond_3

    .line 314
    invoke-direct {p0, v0}, Lcom/dolphin/browser/androidwebkit/WebViewV6;->a(F)V

    .line 315
    invoke-direct {p0, v1}, Lcom/dolphin/browser/androidwebkit/WebViewV6;->b(F)V

    goto :goto_0

    .line 316
    :cond_3
    const/4 v0, 0x2

    if-ne v2, v0, :cond_0

    goto :goto_0
.end method

.method protected b(Landroid/content/Context;)V
    .locals 2

    .prologue
    .line 290
    iget-object v0, p0, Lcom/dolphin/browser/androidwebkit/WebViewV6;->e:Lcom/dolphin/browser/core/q;

    if-nez v0, :cond_0

    .line 291
    new-instance v0, Lcom/dolphin/browser/core/q;

    new-instance v1, Lcom/dolphin/browser/androidwebkit/ew;

    invoke-direct {v1, p0}, Lcom/dolphin/browser/androidwebkit/ew;-><init>(Lcom/dolphin/browser/androidwebkit/WebViewV6;)V

    invoke-direct {v0, p1, v1}, Lcom/dolphin/browser/core/q;-><init>(Landroid/content/Context;Lcom/dolphin/browser/core/s;)V

    iput-object v0, p0, Lcom/dolphin/browser/androidwebkit/WebViewV6;->e:Lcom/dolphin/browser/core/q;

    .line 293
    :cond_0
    return-void
.end method
