.class public Lcom/mgeek/android/ui/MainScreen;
.super Landroid/widget/RelativeLayout;
.source "MainScreen.java"

# interfaces
.implements Lmobi/mgeek/TunnyBrowser/fl;
.implements Lmobi/mgeek/TunnyBrowser/ft;


# instance fields
.field a:Lcom/mgeek/android/ui/ah;

.field private b:Lcom/dolphin/browser/ui/menu/a;

.field private c:Lcom/dolphin/browser/ui/menu/d;

.field private d:Landroid/view/Window$Callback;

.field private e:Ljava/lang/Boolean;

.field private f:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/mgeek/android/ui/ai;",
            ">;"
        }
    .end annotation
.end field

.field private g:Lcom/mgeek/android/ui/ag;

.field private h:Z

.field private i:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

.field private j:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    .prologue
    .line 59
    invoke-direct {p0, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    .line 49
    new-instance v0, Lcom/mgeek/android/ui/ah;

    const/4 v1, 0x6

    invoke-direct {v0, p0, v1}, Lcom/mgeek/android/ui/ah;-><init>(Lcom/mgeek/android/ui/MainScreen;I)V

    iput-object v0, p0, Lcom/mgeek/android/ui/MainScreen;->a:Lcom/mgeek/android/ui/ah;

    .line 98
    new-instance v0, Lcom/mgeek/android/ui/ae;

    invoke-direct {v0, p0}, Lcom/mgeek/android/ui/ae;-><init>(Lcom/mgeek/android/ui/MainScreen;)V

    iput-object v0, p0, Lcom/mgeek/android/ui/MainScreen;->i:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

    .line 60
    invoke-direct {p0, p1}, Lcom/mgeek/android/ui/MainScreen;->a(Landroid/content/Context;)V

    .line 61
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2

    .prologue
    .line 65
    invoke-direct {p0, p1, p2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 49
    new-instance v0, Lcom/mgeek/android/ui/ah;

    const/4 v1, 0x6

    invoke-direct {v0, p0, v1}, Lcom/mgeek/android/ui/ah;-><init>(Lcom/mgeek/android/ui/MainScreen;I)V

    iput-object v0, p0, Lcom/mgeek/android/ui/MainScreen;->a:Lcom/mgeek/android/ui/ah;

    .line 98
    new-instance v0, Lcom/mgeek/android/ui/ae;

    invoke-direct {v0, p0}, Lcom/mgeek/android/ui/ae;-><init>(Lcom/mgeek/android/ui/MainScreen;)V

    iput-object v0, p0, Lcom/mgeek/android/ui/MainScreen;->i:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

    .line 66
    invoke-direct {p0, p1}, Lcom/mgeek/android/ui/MainScreen;->a(Landroid/content/Context;)V

    .line 67
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 2

    .prologue
    .line 71
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 49
    new-instance v0, Lcom/mgeek/android/ui/ah;

    const/4 v1, 0x6

    invoke-direct {v0, p0, v1}, Lcom/mgeek/android/ui/ah;-><init>(Lcom/mgeek/android/ui/MainScreen;I)V

    iput-object v0, p0, Lcom/mgeek/android/ui/MainScreen;->a:Lcom/mgeek/android/ui/ah;

    .line 98
    new-instance v0, Lcom/mgeek/android/ui/ae;

    invoke-direct {v0, p0}, Lcom/mgeek/android/ui/ae;-><init>(Lcom/mgeek/android/ui/MainScreen;)V

    iput-object v0, p0, Lcom/mgeek/android/ui/MainScreen;->i:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

    .line 72
    invoke-direct {p0, p1}, Lcom/mgeek/android/ui/MainScreen;->a(Landroid/content/Context;)V

    .line 73
    return-void
.end method

.method static synthetic a(Lcom/mgeek/android/ui/MainScreen;)Ljava/lang/Boolean;
    .locals 1

    .prologue
    .line 32
    iget-object v0, p0, Lcom/mgeek/android/ui/MainScreen;->e:Ljava/lang/Boolean;

    return-object v0
.end method

.method static synthetic a(Lcom/mgeek/android/ui/MainScreen;Ljava/lang/Boolean;)Ljava/lang/Boolean;
    .locals 0

    .prologue
    .line 32
    iput-object p1, p0, Lcom/mgeek/android/ui/MainScreen;->e:Ljava/lang/Boolean;

    return-object p1
.end method

.method private a(Landroid/content/Context;)V
    .locals 2

    .prologue
    .line 77
    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lcom/mgeek/android/ui/MainScreen;->f:Ljava/util/ArrayList;

    .line 78
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/mgeek/android/ui/MainScreen;->e:Ljava/lang/Boolean;

    .line 79
    invoke-virtual {p0}, Lcom/mgeek/android/ui/MainScreen;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    iget-object v1, p0, Lcom/mgeek/android/ui/MainScreen;->i:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 80
    invoke-virtual {p0}, Lcom/mgeek/android/ui/MainScreen;->a()V

    .line 81
    return-void
.end method

.method static synthetic b(Lcom/mgeek/android/ui/MainScreen;)Ljava/util/ArrayList;
    .locals 1

    .prologue
    .line 32
    iget-object v0, p0, Lcom/mgeek/android/ui/MainScreen;->f:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic c(Lcom/mgeek/android/ui/MainScreen;)Lcom/mgeek/android/ui/ag;
    .locals 1

    .prologue
    .line 32
    iget-object v0, p0, Lcom/mgeek/android/ui/MainScreen;->g:Lcom/mgeek/android/ui/ag;

    return-object v0
.end method

.method static synthetic d(Lcom/mgeek/android/ui/MainScreen;)Landroid/view/Window$Callback;
    .locals 1

    .prologue
    .line 32
    iget-object v0, p0, Lcom/mgeek/android/ui/MainScreen;->d:Landroid/view/Window$Callback;

    return-object v0
.end method

.method static synthetic e(Lcom/mgeek/android/ui/MainScreen;)Lcom/dolphin/browser/ui/menu/a;
    .locals 1

    .prologue
    .line 32
    iget-object v0, p0, Lcom/mgeek/android/ui/MainScreen;->b:Lcom/dolphin/browser/ui/menu/a;

    return-object v0
.end method

.method private declared-synchronized f()V
    .locals 1

    .prologue
    .line 162
    monitor-enter p0

    const/4 v0, 0x0

    :try_start_0
    iput-object v0, p0, Lcom/mgeek/android/ui/MainScreen;->b:Lcom/dolphin/browser/ui/menu/a;

    .line 164
    iget-object v0, p0, Lcom/mgeek/android/ui/MainScreen;->c:Lcom/dolphin/browser/ui/menu/d;

    if-eqz v0, :cond_0

    .line 165
    iget-object v0, p0, Lcom/mgeek/android/ui/MainScreen;->c:Lcom/dolphin/browser/ui/menu/d;

    invoke-virtual {v0}, Lcom/dolphin/browser/ui/menu/d;->a()V

    .line 166
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/mgeek/android/ui/MainScreen;->c:Lcom/dolphin/browser/ui/menu/d;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 168
    :cond_0
    monitor-exit p0

    return-void

    .line 162
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method static synthetic f(Lcom/mgeek/android/ui/MainScreen;)V
    .locals 0

    .prologue
    .line 32
    invoke-direct {p0}, Lcom/mgeek/android/ui/MainScreen;->f()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 2

    .prologue
    .line 185
    invoke-static {}, Lcom/dolphin/browser/util/cu;->a()Z

    move-result v0

    if-nez v0, :cond_0

    .line 186
    invoke-static {}, Lcom/dolphin/browser/theme/ar;->a()Lcom/dolphin/browser/theme/i;

    move-result-object v0

    sget-object v1, Lcom/dolphin/browser/n/a;->d:Lmobi/mgeek/TunnyBrowser/R$color;

    const v1, 0x7f0a015e

    invoke-interface {v0, v1}, Lcom/dolphin/browser/theme/i;->a(I)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/mgeek/android/ui/MainScreen;->setBackgroundColor(I)V

    .line 189
    :cond_0
    return-void
.end method

.method public a(Landroid/graphics/Canvas;)V
    .locals 1

    .prologue
    .line 285
    invoke-static {}, Lcom/dolphin/browser/core/TabManager;->getInstance()Lcom/dolphin/browser/core/TabManager;

    move-result-object v0

    .line 286
    if-eqz v0, :cond_0

    .line 287
    invoke-virtual {v0}, Lcom/dolphin/browser/core/TabManager;->removeAllTab()V

    .line 289
    :cond_0
    invoke-static {}, Lcom/dolphin/browser/util/cu;->a()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 290
    invoke-static {}, Lcom/dolphin/browser/theme/bf;->a()Lcom/dolphin/browser/theme/bf;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/dolphin/browser/theme/bf;->a(Landroid/view/View;Landroid/graphics/Canvas;)V

    .line 294
    :goto_0
    return-void

    .line 292
    :cond_1
    invoke-virtual {p0, p1}, Lcom/mgeek/android/ui/MainScreen;->draw(Landroid/graphics/Canvas;)V

    goto :goto_0
.end method

.method public a(Landroid/graphics/Canvas;I)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 178
    iput p2, p0, Lcom/mgeek/android/ui/MainScreen;->j:I

    .line 179
    invoke-virtual {p0}, Lcom/mgeek/android/ui/MainScreen;->getWidth()I

    move-result v0

    invoke-virtual {p0}, Lcom/mgeek/android/ui/MainScreen;->getHeight()I

    move-result v1

    invoke-virtual {p1, v2, v2, v0, v1}, Landroid/graphics/Canvas;->clipRect(IIII)Z

    .line 180
    invoke-virtual {p0, p1}, Lcom/mgeek/android/ui/MainScreen;->dispatchDraw(Landroid/graphics/Canvas;)V

    .line 181
    return-void
.end method

.method public a(Landroid/view/Window$Callback;)V
    .locals 0

    .prologue
    .line 128
    iput-object p1, p0, Lcom/mgeek/android/ui/MainScreen;->d:Landroid/view/Window$Callback;

    .line 129
    return-void
.end method

.method public a(Lcom/mgeek/android/ui/ag;)V
    .locals 0

    .prologue
    .line 85
    iput-object p1, p0, Lcom/mgeek/android/ui/MainScreen;->g:Lcom/mgeek/android/ui/ag;

    .line 86
    return-void
.end method

.method public a(Lcom/mgeek/android/ui/ai;)V
    .locals 1

    .prologue
    .line 90
    iget-object v0, p0, Lcom/mgeek/android/ui/MainScreen;->f:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 91
    return-void
.end method

.method public a_(Z)V
    .locals 0

    .prologue
    .line 316
    return-void
.end method

.method public b()Landroid/view/View;
    .locals 0

    .prologue
    .line 298
    return-object p0
.end method

.method public b(Lcom/mgeek/android/ui/ai;)V
    .locals 1

    .prologue
    .line 95
    iget-object v0, p0, Lcom/mgeek/android/ui/MainScreen;->f:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 96
    return-void
.end method

.method public b(Z)V
    .locals 0

    .prologue
    .line 326
    return-void
.end method

.method public c(Z)V
    .locals 0

    .prologue
    .line 330
    return-void
.end method

.method public c()Z
    .locals 1

    .prologue
    .line 334
    const/4 v0, 0x0

    return v0
.end method

.method public createContextMenu(Landroid/view/ContextMenu;)V
    .locals 0

    .prologue
    .line 154
    return-void
.end method

.method public d(Z)V
    .locals 0

    .prologue
    .line 361
    return-void
.end method

.method public d()Z
    .locals 1

    .prologue
    .line 344
    const/4 v0, 0x1

    return v0
.end method

.method protected dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 2

    .prologue
    .line 194
    invoke-static {}, Lcom/dolphin/browser/theme/bf;->a()Lcom/dolphin/browser/theme/bf;

    move-result-object v0

    iget v1, p0, Lcom/mgeek/android/ui/MainScreen;->j:I

    invoke-virtual {v0, p0, p1, v1}, Lcom/dolphin/browser/theme/bf;->a(Landroid/view/View;Landroid/graphics/Canvas;I)V

    .line 195
    invoke-super {p0, p1}, Landroid/widget/RelativeLayout;->dispatchDraw(Landroid/graphics/Canvas;)V

    .line 197
    iget-boolean v0, p0, Lcom/mgeek/android/ui/MainScreen;->h:Z

    if-nez v0, :cond_0

    .line 199
    invoke-virtual {p0}, Lcom/mgeek/android/ui/MainScreen;->getHandler()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/mgeek/android/ui/af;

    invoke-direct {v1, p0}, Lcom/mgeek/android/ui/af;-><init>(Lcom/mgeek/android/ui/MainScreen;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 210
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/mgeek/android/ui/MainScreen;->h:Z

    .line 212
    :cond_0
    return-void
.end method

.method public e()V
    .locals 0

    .prologue
    .line 356
    return-void
.end method

.method public showContextMenuForChild(Landroid/view/View;)Z
    .locals 2

    .prologue
    .line 135
    iget-object v0, p0, Lcom/mgeek/android/ui/MainScreen;->b:Lcom/dolphin/browser/ui/menu/a;

    if-nez v0, :cond_0

    .line 136
    new-instance v0, Lcom/dolphin/browser/ui/menu/a;

    invoke-virtual {p0}, Lcom/mgeek/android/ui/MainScreen;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/dolphin/browser/ui/menu/a;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/mgeek/android/ui/MainScreen;->b:Lcom/dolphin/browser/ui/menu/a;

    .line 137
    iget-object v0, p0, Lcom/mgeek/android/ui/MainScreen;->b:Lcom/dolphin/browser/ui/menu/a;

    iget-object v1, p0, Lcom/mgeek/android/ui/MainScreen;->a:Lcom/mgeek/android/ui/ah;

    invoke-virtual {v0, v1}, Lcom/dolphin/browser/ui/menu/a;->setCallback(Lcom/dolphin/browser/ui/menu/MenuBuilder$Callback;)V

    .line 142
    :goto_0
    :try_start_0
    iget-object v0, p0, Lcom/mgeek/android/ui/MainScreen;->b:Lcom/dolphin/browser/ui/menu/a;

    invoke-virtual {p1}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lcom/dolphin/browser/ui/menu/a;->a(Landroid/view/View;Landroid/os/IBinder;)Lcom/dolphin/browser/ui/menu/d;

    move-result-object v0

    iput-object v0, p0, Lcom/mgeek/android/ui/MainScreen;->c:Lcom/dolphin/browser/ui/menu/d;

    .line 143
    iget-object v0, p0, Lcom/mgeek/android/ui/MainScreen;->c:Lcom/dolphin/browser/ui/menu/d;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    .line 147
    :goto_1
    return v0

    .line 139
    :cond_0
    iget-object v0, p0, Lcom/mgeek/android/ui/MainScreen;->b:Lcom/dolphin/browser/ui/menu/a;

    invoke-virtual {v0}, Lcom/dolphin/browser/ui/menu/a;->clearAll()V

    goto :goto_0

    .line 143
    :cond_1
    const/4 v0, 0x0

    goto :goto_1

    .line 144
    :catch_0
    move-exception v0

    .line 145
    invoke-static {v0}, Lcom/dolphin/browser/util/Log;->w(Ljava/lang/Throwable;)I

    .line 147
    invoke-super {p0, p1}, Landroid/widget/RelativeLayout;->showContextMenuForChild(Landroid/view/View;)Z

    move-result v0

    goto :goto_1
.end method
