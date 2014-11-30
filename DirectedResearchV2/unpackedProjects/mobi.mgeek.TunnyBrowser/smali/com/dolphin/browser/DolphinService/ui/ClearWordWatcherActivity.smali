.class public Lcom/dolphin/browser/DolphinService/ui/ClearWordWatcherActivity;
.super Lmobi/mgeek/TunnyBrowser/BaseActivity;
.source "ClearWordWatcherActivity.java"


# instance fields
.field private a:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/widget/TextView;",
            ">;"
        }
    .end annotation
.end field

.field private b:Landroid/graphics/drawable/Drawable;

.field private c:Landroid/view/View$OnFocusChangeListener;

.field private d:Landroid/text/TextWatcher;

.field private e:Landroid/view/View$OnTouchListener;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 23
    invoke-direct {p0}, Lmobi/mgeek/TunnyBrowser/BaseActivity;-><init>()V

    .line 67
    new-instance v0, Lcom/dolphin/browser/DolphinService/ui/l;

    invoke-direct {v0, p0}, Lcom/dolphin/browser/DolphinService/ui/l;-><init>(Lcom/dolphin/browser/DolphinService/ui/ClearWordWatcherActivity;)V

    iput-object v0, p0, Lcom/dolphin/browser/DolphinService/ui/ClearWordWatcherActivity;->c:Landroid/view/View$OnFocusChangeListener;

    .line 81
    new-instance v0, Lcom/dolphin/browser/DolphinService/ui/m;

    invoke-direct {v0, p0}, Lcom/dolphin/browser/DolphinService/ui/m;-><init>(Lcom/dolphin/browser/DolphinService/ui/ClearWordWatcherActivity;)V

    iput-object v0, p0, Lcom/dolphin/browser/DolphinService/ui/ClearWordWatcherActivity;->d:Landroid/text/TextWatcher;

    .line 111
    new-instance v0, Lcom/dolphin/browser/DolphinService/ui/n;

    invoke-direct {v0, p0}, Lcom/dolphin/browser/DolphinService/ui/n;-><init>(Lcom/dolphin/browser/DolphinService/ui/ClearWordWatcherActivity;)V

    iput-object v0, p0, Lcom/dolphin/browser/DolphinService/ui/ClearWordWatcherActivity;->e:Landroid/view/View$OnTouchListener;

    return-void
.end method

.method static synthetic a(Lcom/dolphin/browser/DolphinService/ui/ClearWordWatcherActivity;)Landroid/graphics/drawable/Drawable;
    .locals 1

    .prologue
    .line 23
    iget-object v0, p0, Lcom/dolphin/browser/DolphinService/ui/ClearWordWatcherActivity;->b:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method private a()V
    .locals 3

    .prologue
    .line 60
    iget-object v0, p0, Lcom/dolphin/browser/DolphinService/ui/ClearWordWatcherActivity;->a:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 61
    iget-object v2, p0, Lcom/dolphin/browser/DolphinService/ui/ClearWordWatcherActivity;->d:Landroid/text/TextWatcher;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->removeTextChangedListener(Landroid/text/TextWatcher;)V

    goto :goto_0

    .line 64
    :cond_0
    iget-object v0, p0, Lcom/dolphin/browser/DolphinService/ui/ClearWordWatcherActivity;->a:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 65
    return-void
.end method

.method static synthetic b(Lcom/dolphin/browser/DolphinService/ui/ClearWordWatcherActivity;)Ljava/util/ArrayList;
    .locals 1

    .prologue
    .line 23
    iget-object v0, p0, Lcom/dolphin/browser/DolphinService/ui/ClearWordWatcherActivity;->a:Ljava/util/ArrayList;

    return-object v0
.end method


# virtual methods
.method protected a(Landroid/widget/TextView;)V
    .locals 1

    .prologue
    .line 44
    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/dolphin/browser/DolphinService/ui/ClearWordWatcherActivity;->a:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 45
    iget-object v0, p0, Lcom/dolphin/browser/DolphinService/ui/ClearWordWatcherActivity;->d:Landroid/text/TextWatcher;

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 46
    iget-object v0, p0, Lcom/dolphin/browser/DolphinService/ui/ClearWordWatcherActivity;->e:Landroid/view/View$OnTouchListener;

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 47
    iget-object v0, p0, Lcom/dolphin/browser/DolphinService/ui/ClearWordWatcherActivity;->c:Landroid/view/View$OnFocusChangeListener;

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 48
    iget-object v0, p0, Lcom/dolphin/browser/DolphinService/ui/ClearWordWatcherActivity;->a:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 50
    :cond_0
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2

    .prologue
    .line 30
    invoke-super {p0, p1}, Lmobi/mgeek/TunnyBrowser/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 32
    invoke-static {}, Lcom/dolphin/browser/util/bb;->a()Lcom/dolphin/browser/util/bb;

    move-result-object v0

    sget-object v1, Lcom/dolphin/browser/n/a;->f:Lmobi/mgeek/TunnyBrowser/R$drawable;

    const v1, 0x7f020107

    invoke-virtual {v0, v1}, Lcom/dolphin/browser/util/bb;->f(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/dolphin/browser/DolphinService/ui/ClearWordWatcherActivity;->b:Landroid/graphics/drawable/Drawable;

    .line 33
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/dolphin/browser/DolphinService/ui/ClearWordWatcherActivity;->a:Ljava/util/ArrayList;

    .line 34
    return-void
.end method

.method protected onDestroy()V
    .locals 0

    .prologue
    .line 38
    invoke-super {p0}, Lmobi/mgeek/TunnyBrowser/BaseActivity;->onDestroy()V

    .line 40
    invoke-direct {p0}, Lcom/dolphin/browser/DolphinService/ui/ClearWordWatcherActivity;->a()V

    .line 41
    return-void
.end method
