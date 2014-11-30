.class public Lcom/dolphin/browser/sidebar/CustomMenuLinearLayout;
.super Landroid/widget/LinearLayout;
.source "CustomMenuLinearLayout.java"


# instance fields
.field private a:Lcom/dolphin/browser/ui/menu/a;

.field private b:Lcom/dolphin/browser/ui/menu/d;

.field private c:Landroid/view/Window$Callback;

.field private d:Lcom/dolphin/browser/sidebar/u;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 26
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/dolphin/browser/sidebar/CustomMenuLinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 27
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2

    .prologue
    .line 30
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 22
    new-instance v0, Lcom/dolphin/browser/sidebar/u;

    const/4 v1, 0x6

    invoke-direct {v0, p0, v1}, Lcom/dolphin/browser/sidebar/u;-><init>(Lcom/dolphin/browser/sidebar/CustomMenuLinearLayout;I)V

    iput-object v0, p0, Lcom/dolphin/browser/sidebar/CustomMenuLinearLayout;->d:Lcom/dolphin/browser/sidebar/u;

    .line 31
    return-void
.end method

.method static synthetic a(Lcom/dolphin/browser/sidebar/CustomMenuLinearLayout;)Landroid/view/Window$Callback;
    .locals 1

    .prologue
    .line 17
    iget-object v0, p0, Lcom/dolphin/browser/sidebar/CustomMenuLinearLayout;->c:Landroid/view/Window$Callback;

    return-object v0
.end method

.method private declared-synchronized a()V
    .locals 1

    .prologue
    .line 63
    monitor-enter p0

    const/4 v0, 0x0

    :try_start_0
    iput-object v0, p0, Lcom/dolphin/browser/sidebar/CustomMenuLinearLayout;->a:Lcom/dolphin/browser/ui/menu/a;

    .line 65
    iget-object v0, p0, Lcom/dolphin/browser/sidebar/CustomMenuLinearLayout;->b:Lcom/dolphin/browser/ui/menu/d;

    if-eqz v0, :cond_0

    .line 66
    iget-object v0, p0, Lcom/dolphin/browser/sidebar/CustomMenuLinearLayout;->b:Lcom/dolphin/browser/ui/menu/d;

    invoke-virtual {v0}, Lcom/dolphin/browser/ui/menu/d;->a()V

    .line 67
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/dolphin/browser/sidebar/CustomMenuLinearLayout;->b:Lcom/dolphin/browser/ui/menu/d;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 69
    :cond_0
    monitor-exit p0

    return-void

    .line 63
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method static synthetic b(Lcom/dolphin/browser/sidebar/CustomMenuLinearLayout;)Lcom/dolphin/browser/ui/menu/a;
    .locals 1

    .prologue
    .line 17
    iget-object v0, p0, Lcom/dolphin/browser/sidebar/CustomMenuLinearLayout;->a:Lcom/dolphin/browser/ui/menu/a;

    return-object v0
.end method

.method static synthetic c(Lcom/dolphin/browser/sidebar/CustomMenuLinearLayout;)V
    .locals 0

    .prologue
    .line 17
    invoke-direct {p0}, Lcom/dolphin/browser/sidebar/CustomMenuLinearLayout;->a()V

    return-void
.end method


# virtual methods
.method public showContextMenuForChild(Landroid/view/View;)Z
    .locals 2

    .prologue
    .line 37
    iget-object v0, p0, Lcom/dolphin/browser/sidebar/CustomMenuLinearLayout;->a:Lcom/dolphin/browser/ui/menu/a;

    if-nez v0, :cond_0

    .line 38
    new-instance v0, Lcom/dolphin/browser/ui/menu/a;

    invoke-virtual {p0}, Lcom/dolphin/browser/sidebar/CustomMenuLinearLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/dolphin/browser/ui/menu/a;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/dolphin/browser/sidebar/CustomMenuLinearLayout;->a:Lcom/dolphin/browser/ui/menu/a;

    .line 39
    iget-object v0, p0, Lcom/dolphin/browser/sidebar/CustomMenuLinearLayout;->a:Lcom/dolphin/browser/ui/menu/a;

    iget-object v1, p0, Lcom/dolphin/browser/sidebar/CustomMenuLinearLayout;->d:Lcom/dolphin/browser/sidebar/u;

    invoke-virtual {v0, v1}, Lcom/dolphin/browser/ui/menu/a;->setCallback(Lcom/dolphin/browser/ui/menu/MenuBuilder$Callback;)V

    .line 44
    :goto_0
    :try_start_0
    iget-object v0, p0, Lcom/dolphin/browser/sidebar/CustomMenuLinearLayout;->a:Lcom/dolphin/browser/ui/menu/a;

    invoke-virtual {p1}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lcom/dolphin/browser/ui/menu/a;->a(Landroid/view/View;Landroid/os/IBinder;)Lcom/dolphin/browser/ui/menu/d;

    move-result-object v0

    iput-object v0, p0, Lcom/dolphin/browser/sidebar/CustomMenuLinearLayout;->b:Lcom/dolphin/browser/ui/menu/d;

    .line 46
    iget-object v0, p0, Lcom/dolphin/browser/sidebar/CustomMenuLinearLayout;->b:Lcom/dolphin/browser/ui/menu/d;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    .line 50
    :goto_1
    return v0

    .line 41
    :cond_0
    iget-object v0, p0, Lcom/dolphin/browser/sidebar/CustomMenuLinearLayout;->a:Lcom/dolphin/browser/ui/menu/a;

    invoke-virtual {v0}, Lcom/dolphin/browser/ui/menu/a;->clearAll()V

    goto :goto_0

    .line 46
    :cond_1
    const/4 v0, 0x0

    goto :goto_1

    .line 47
    :catch_0
    move-exception v0

    .line 48
    invoke-static {v0}, Lcom/dolphin/browser/util/Log;->w(Ljava/lang/Throwable;)I

    .line 50
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->showContextMenuForChild(Landroid/view/View;)Z

    move-result v0

    goto :goto_1
.end method
