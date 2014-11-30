.class public abstract Lcom/dolphin/browser/ui/view/ContentWrapper;
.super Landroid/view/ViewGroup;
.source "ContentWrapper.java"


# instance fields
.field a:Lcom/dolphin/browser/ui/view/d;

.field private b:Lcom/dolphin/browser/ui/menu/a;

.field private c:Lcom/dolphin/browser/ui/menu/d;

.field private d:Landroid/view/Window$Callback;

.field private e:Ljava/lang/Boolean;

.field private f:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/dolphin/browser/ui/view/e;",
            ">;"
        }
    .end annotation
.end field

.field private g:Lcom/dolphin/browser/ui/view/c;

.field private h:Z

.field private i:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2

    .prologue
    .line 84
    invoke-direct {p0, p1, p2}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 59
    new-instance v0, Lcom/dolphin/browser/ui/view/d;

    const/4 v1, 0x6

    invoke-direct {v0, p0, v1}, Lcom/dolphin/browser/ui/view/d;-><init>(Lcom/dolphin/browser/ui/view/ContentWrapper;I)V

    iput-object v0, p0, Lcom/dolphin/browser/ui/view/ContentWrapper;->a:Lcom/dolphin/browser/ui/view/d;

    .line 118
    new-instance v0, Lcom/dolphin/browser/ui/view/a;

    invoke-direct {v0, p0}, Lcom/dolphin/browser/ui/view/a;-><init>(Lcom/dolphin/browser/ui/view/ContentWrapper;)V

    iput-object v0, p0, Lcom/dolphin/browser/ui/view/ContentWrapper;->i:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

    .line 85
    invoke-direct {p0, p1}, Lcom/dolphin/browser/ui/view/ContentWrapper;->a(Landroid/content/Context;)V

    .line 86
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 2

    .prologue
    .line 96
    invoke-direct {p0, p1, p2, p3}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 59
    new-instance v0, Lcom/dolphin/browser/ui/view/d;

    const/4 v1, 0x6

    invoke-direct {v0, p0, v1}, Lcom/dolphin/browser/ui/view/d;-><init>(Lcom/dolphin/browser/ui/view/ContentWrapper;I)V

    iput-object v0, p0, Lcom/dolphin/browser/ui/view/ContentWrapper;->a:Lcom/dolphin/browser/ui/view/d;

    .line 118
    new-instance v0, Lcom/dolphin/browser/ui/view/a;

    invoke-direct {v0, p0}, Lcom/dolphin/browser/ui/view/a;-><init>(Lcom/dolphin/browser/ui/view/ContentWrapper;)V

    iput-object v0, p0, Lcom/dolphin/browser/ui/view/ContentWrapper;->i:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

    .line 97
    invoke-direct {p0, p1}, Lcom/dolphin/browser/ui/view/ContentWrapper;->a(Landroid/content/Context;)V

    .line 98
    return-void
.end method

.method static synthetic a(Lcom/dolphin/browser/ui/view/ContentWrapper;)Ljava/lang/Boolean;
    .locals 1

    .prologue
    .line 43
    iget-object v0, p0, Lcom/dolphin/browser/ui/view/ContentWrapper;->e:Ljava/lang/Boolean;

    return-object v0
.end method

.method static synthetic a(Lcom/dolphin/browser/ui/view/ContentWrapper;Ljava/lang/Boolean;)Ljava/lang/Boolean;
    .locals 0

    .prologue
    .line 43
    iput-object p1, p0, Lcom/dolphin/browser/ui/view/ContentWrapper;->e:Ljava/lang/Boolean;

    return-object p1
.end method

.method private declared-synchronized a()V
    .locals 1

    .prologue
    .line 177
    monitor-enter p0

    const/4 v0, 0x0

    :try_start_0
    iput-object v0, p0, Lcom/dolphin/browser/ui/view/ContentWrapper;->b:Lcom/dolphin/browser/ui/menu/a;

    .line 179
    iget-object v0, p0, Lcom/dolphin/browser/ui/view/ContentWrapper;->c:Lcom/dolphin/browser/ui/menu/d;

    if-eqz v0, :cond_0

    .line 180
    iget-object v0, p0, Lcom/dolphin/browser/ui/view/ContentWrapper;->c:Lcom/dolphin/browser/ui/menu/d;

    invoke-virtual {v0}, Lcom/dolphin/browser/ui/menu/d;->a()V

    .line 181
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/dolphin/browser/ui/view/ContentWrapper;->c:Lcom/dolphin/browser/ui/menu/d;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 183
    :cond_0
    monitor-exit p0

    return-void

    .line 177
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private a(Landroid/content/Context;)V
    .locals 2

    .prologue
    .line 101
    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lcom/dolphin/browser/ui/view/ContentWrapper;->f:Ljava/util/ArrayList;

    .line 102
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/dolphin/browser/ui/view/ContentWrapper;->e:Ljava/lang/Boolean;

    .line 103
    invoke-virtual {p0}, Lcom/dolphin/browser/ui/view/ContentWrapper;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    iget-object v1, p0, Lcom/dolphin/browser/ui/view/ContentWrapper;->i:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 104
    return-void
.end method

.method static synthetic b(Lcom/dolphin/browser/ui/view/ContentWrapper;)Ljava/util/ArrayList;
    .locals 1

    .prologue
    .line 43
    iget-object v0, p0, Lcom/dolphin/browser/ui/view/ContentWrapper;->f:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic c(Lcom/dolphin/browser/ui/view/ContentWrapper;)Lcom/dolphin/browser/ui/view/c;
    .locals 1

    .prologue
    .line 43
    iget-object v0, p0, Lcom/dolphin/browser/ui/view/ContentWrapper;->g:Lcom/dolphin/browser/ui/view/c;

    return-object v0
.end method

.method static synthetic d(Lcom/dolphin/browser/ui/view/ContentWrapper;)Landroid/view/Window$Callback;
    .locals 1

    .prologue
    .line 43
    iget-object v0, p0, Lcom/dolphin/browser/ui/view/ContentWrapper;->d:Landroid/view/Window$Callback;

    return-object v0
.end method

.method static synthetic e(Lcom/dolphin/browser/ui/view/ContentWrapper;)Lcom/dolphin/browser/ui/menu/a;
    .locals 1

    .prologue
    .line 43
    iget-object v0, p0, Lcom/dolphin/browser/ui/view/ContentWrapper;->b:Lcom/dolphin/browser/ui/menu/a;

    return-object v0
.end method

.method static synthetic f(Lcom/dolphin/browser/ui/view/ContentWrapper;)V
    .locals 0

    .prologue
    .line 43
    invoke-direct {p0}, Lcom/dolphin/browser/ui/view/ContentWrapper;->a()V

    return-void
.end method


# virtual methods
.method public createContextMenu(Landroid/view/ContextMenu;)V
    .locals 0

    .prologue
    .line 170
    return-void
.end method

.method protected dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 2

    .prologue
    .line 191
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->dispatchDraw(Landroid/graphics/Canvas;)V

    .line 193
    iget-boolean v0, p0, Lcom/dolphin/browser/ui/view/ContentWrapper;->h:Z

    if-nez v0, :cond_0

    .line 195
    invoke-virtual {p0}, Lcom/dolphin/browser/ui/view/ContentWrapper;->getHandler()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/dolphin/browser/ui/view/b;

    invoke-direct {v1, p0}, Lcom/dolphin/browser/ui/view/b;-><init>(Lcom/dolphin/browser/ui/view/ContentWrapper;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 205
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/dolphin/browser/ui/view/ContentWrapper;->h:Z

    .line 207
    :cond_0
    return-void
.end method

.method public showContextMenuForChild(Landroid/view/View;)Z
    .locals 2

    .prologue
    .line 152
    iget-object v0, p0, Lcom/dolphin/browser/ui/view/ContentWrapper;->b:Lcom/dolphin/browser/ui/menu/a;

    if-nez v0, :cond_0

    .line 153
    new-instance v0, Lcom/dolphin/browser/ui/menu/a;

    invoke-virtual {p0}, Lcom/dolphin/browser/ui/view/ContentWrapper;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/dolphin/browser/ui/menu/a;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/dolphin/browser/ui/view/ContentWrapper;->b:Lcom/dolphin/browser/ui/menu/a;

    .line 154
    iget-object v0, p0, Lcom/dolphin/browser/ui/view/ContentWrapper;->b:Lcom/dolphin/browser/ui/menu/a;

    iget-object v1, p0, Lcom/dolphin/browser/ui/view/ContentWrapper;->a:Lcom/dolphin/browser/ui/view/d;

    invoke-virtual {v0, v1}, Lcom/dolphin/browser/ui/menu/a;->setCallback(Lcom/dolphin/browser/ui/menu/MenuBuilder$Callback;)V

    .line 159
    :goto_0
    :try_start_0
    iget-object v0, p0, Lcom/dolphin/browser/ui/view/ContentWrapper;->b:Lcom/dolphin/browser/ui/menu/a;

    invoke-virtual {p1}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lcom/dolphin/browser/ui/menu/a;->a(Landroid/view/View;Landroid/os/IBinder;)Lcom/dolphin/browser/ui/menu/d;

    move-result-object v0

    iput-object v0, p0, Lcom/dolphin/browser/ui/view/ContentWrapper;->c:Lcom/dolphin/browser/ui/menu/d;

    .line 160
    iget-object v0, p0, Lcom/dolphin/browser/ui/view/ContentWrapper;->c:Lcom/dolphin/browser/ui/menu/d;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    .line 164
    :goto_1
    return v0

    .line 156
    :cond_0
    iget-object v0, p0, Lcom/dolphin/browser/ui/view/ContentWrapper;->b:Lcom/dolphin/browser/ui/menu/a;

    invoke-virtual {v0}, Lcom/dolphin/browser/ui/menu/a;->clearAll()V

    goto :goto_0

    .line 160
    :cond_1
    const/4 v0, 0x0

    goto :goto_1

    .line 161
    :catch_0
    move-exception v0

    .line 162
    invoke-static {v0}, Lcom/dolphin/browser/util/Log;->w(Ljava/lang/Throwable;)I

    .line 164
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->showContextMenuForChild(Landroid/view/View;)Z

    move-result v0

    goto :goto_1
.end method
