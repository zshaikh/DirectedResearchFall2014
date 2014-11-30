.class public Lcom/dolphin/browser/search/ui/z;
.super Landroid/app/Dialog;
.source "SearchEngineSelectDialog.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# instance fields
.field a:Landroid/content/Context;

.field private b:Lcom/mgeek/android/ui/VerticalSearchGridView;

.field private c:Landroid/view/View;

.field private d:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/dolphin/browser/search/b/b;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;ILjava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "I",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 40
    invoke-direct {p0, p1, p2}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    .line 41
    iput-object p1, p0, Lcom/dolphin/browser/search/ui/z;->a:Landroid/content/Context;

    .line 42
    iget-object v0, p0, Lcom/dolphin/browser/search/ui/z;->a:Landroid/content/Context;

    invoke-direct {p0, v0}, Lcom/dolphin/browser/search/ui/z;->a(Landroid/content/Context;)V

    .line 43
    return-void
.end method

.method private a()Ljava/lang/String;
    .locals 14

    .prologue
    const-wide/32 v12, 0x1ea6e00

    const-wide/32 v10, 0x28de80

    const-wide/32 v8, 0x93a80

    const-wide/32 v6, 0x15180

    const-wide/16 v4, 0xe10

    .line 120
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 121
    invoke-static {}, Lmobi/mgeek/TunnyBrowser/BrowserSettings;->getInstance()Lmobi/mgeek/TunnyBrowser/BrowserSettings;

    move-result-object v2

    invoke-virtual {v2}, Lmobi/mgeek/TunnyBrowser/BrowserSettings;->getInstallTime()J

    move-result-wide v2

    .line 122
    sub-long/2addr v0, v2

    const-wide/16 v2, 0x3e8

    div-long/2addr v0, v2

    .line 124
    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-gtz v2, :cond_0

    .line 125
    const-string v0, "error"

    .line 149
    :goto_0
    return-object v0

    .line 128
    :cond_0
    const-string v2, "error"

    .line 129
    cmp-long v2, v0, v4

    if-gez v2, :cond_3

    .line 130
    const-wide/16 v2, 0x708

    cmp-long v2, v0, v2

    if-lez v2, :cond_1

    .line 131
    const-string v0, "30m"

    goto :goto_0

    .line 132
    :cond_1
    const-wide/16 v2, 0x258

    cmp-long v0, v0, v2

    if-lez v0, :cond_2

    .line 133
    const-string v0, "10m"

    goto :goto_0

    .line 135
    :cond_2
    const-string v0, "5m"

    goto :goto_0

    .line 137
    :cond_3
    cmp-long v2, v0, v6

    if-gez v2, :cond_4

    .line 138
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    div-long/2addr v0, v4

    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "h"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 139
    :cond_4
    cmp-long v2, v0, v8

    if-gez v2, :cond_5

    .line 140
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    div-long/2addr v0, v6

    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "d"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 141
    :cond_5
    cmp-long v2, v0, v10

    if-gez v2, :cond_6

    .line 142
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    div-long/2addr v0, v8

    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "w"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 143
    :cond_6
    cmp-long v2, v0, v12

    if-gez v2, :cond_7

    .line 144
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    div-long/2addr v0, v10

    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "mon"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 146
    :cond_7
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    div-long/2addr v0, v12

    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "y"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0
.end method

.method private a(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 77
    invoke-static {}, Lcom/dolphin/browser/search/a/c;->a()Lcom/dolphin/browser/search/a/c;

    move-result-object v0

    .line 78
    invoke-virtual {v0}, Lcom/dolphin/browser/search/a/c;->d()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/dolphin/browser/search/ui/z;->d:Ljava/util/List;

    .line 79
    return-void
.end method

.method private a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4

    .prologue
    .line 115
    const-string v0, "search engine change"

    invoke-direct {p0}, Lcom/dolphin/browser/search/ui/z;->a()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "||"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/dolphin/browser/util/Tracker$DefaultTracker;->trackEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 117
    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 4

    .prologue
    const/4 v3, -0x2

    .line 47
    invoke-super {p0, p1}, Landroid/app/Dialog;->onCreate(Landroid/os/Bundle;)V

    .line 48
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/dolphin/browser/search/ui/z;->requestWindowFeature(I)Z

    .line 49
    sget-object v0, Lcom/dolphin/browser/n/a;->h:Lmobi/mgeek/TunnyBrowser/R$layout;

    const v0, 0x7f0300d5

    invoke-virtual {p0, v0}, Lcom/dolphin/browser/search/ui/z;->setContentView(I)V

    .line 50
    sget-object v0, Lcom/dolphin/browser/n/a;->g:Lmobi/mgeek/TunnyBrowser/R$id;

    const v0, 0x7f0802f4

    invoke-virtual {p0, v0}, Lcom/dolphin/browser/search/ui/z;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/mgeek/android/ui/VerticalSearchGridView;

    iput-object v0, p0, Lcom/dolphin/browser/search/ui/z;->b:Lcom/mgeek/android/ui/VerticalSearchGridView;

    .line 52
    sget-object v0, Lcom/dolphin/browser/n/a;->g:Lmobi/mgeek/TunnyBrowser/R$id;

    const v0, 0x7f0802f3

    invoke-virtual {p0, v0}, Lcom/dolphin/browser/search/ui/z;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/dolphin/browser/search/ui/z;->c:Landroid/view/View;

    .line 53
    iget-object v0, p0, Lcom/dolphin/browser/search/ui/z;->c:Landroid/view/View;

    invoke-static {}, Lcom/dolphin/browser/extensions/ThemeManager;->a()Lcom/dolphin/browser/extensions/ThemeManager;

    move-result-object v1

    sget-object v2, Lcom/dolphin/browser/n/a;->f:Lmobi/mgeek/TunnyBrowser/R$drawable;

    const v2, 0x7f020261

    invoke-virtual {v1, v2}, Lcom/dolphin/browser/extensions/ThemeManager;->c(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 55
    iget-object v0, p0, Lcom/dolphin/browser/search/ui/z;->b:Lcom/mgeek/android/ui/VerticalSearchGridView;

    iget-object v1, p0, Lcom/dolphin/browser/search/ui/z;->d:Ljava/util/List;

    invoke-virtual {v0, v1}, Lcom/mgeek/android/ui/VerticalSearchGridView;->a(Ljava/util/List;)V

    .line 57
    iget-object v0, p0, Lcom/dolphin/browser/search/ui/z;->b:Lcom/mgeek/android/ui/VerticalSearchGridView;

    invoke-virtual {v0, p0}, Lcom/mgeek/android/ui/VerticalSearchGridView;->a(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 59
    invoke-virtual {p0}, Lcom/dolphin/browser/search/ui/z;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    .line 60
    iput v3, v0, Landroid/view/WindowManager$LayoutParams;->width:I

    .line 61
    iput v3, v0, Landroid/view/WindowManager$LayoutParams;->height:I

    .line 62
    const/16 v1, 0x33

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 63
    invoke-virtual {p0}, Lcom/dolphin/browser/search/ui/z;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 64
    return-void
.end method

.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .line 98
    iget-object v0, p0, Lcom/dolphin/browser/search/ui/z;->d:Ljava/util/List;

    invoke-interface {v0, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/dolphin/browser/search/b/b;

    .line 99
    if-eqz v0, :cond_1

    .line 100
    const-string v1, ""

    .line 101
    invoke-static {}, Lmobi/mgeek/TunnyBrowser/BrowserSettings;->getInstance()Lmobi/mgeek/TunnyBrowser/BrowserSettings;

    move-result-object v2

    invoke-virtual {v2}, Lmobi/mgeek/TunnyBrowser/BrowserSettings;->getSearchEngine()Lcom/dolphin/browser/search/g;

    move-result-object v2

    .line 102
    if-eqz v2, :cond_0

    .line 103
    invoke-interface {v2}, Lcom/dolphin/browser/search/g;->b()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    .line 105
    :cond_0
    invoke-static {}, Lmobi/mgeek/TunnyBrowser/BrowserSettings;->getInstance()Lmobi/mgeek/TunnyBrowser/BrowserSettings;

    move-result-object v2

    invoke-virtual {p0}, Lcom/dolphin/browser/search/ui/z;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v2, v3, v0}, Lmobi/mgeek/TunnyBrowser/BrowserSettings;->a(Landroid/content/Context;Lcom/dolphin/browser/search/b/b;)V

    .line 106
    invoke-static {}, Lcom/dolphin/browser/search/a/c;->a()Lcom/dolphin/browser/search/a/c;

    move-result-object v2

    invoke-virtual {v2}, Lcom/dolphin/browser/search/a/c;->h()V

    .line 107
    invoke-static {}, Lcom/dolphin/browser/search/i;->a()Lcom/dolphin/browser/search/i;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/dolphin/browser/search/i;->a(Z)V

    .line 108
    invoke-virtual {v0}, Lcom/dolphin/browser/search/b/b;->b()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v1, v2}, Lcom/dolphin/browser/search/ui/z;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 109
    invoke-virtual {v0}, Lcom/dolphin/browser/search/b/b;->b()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/dolphin/browser/util/b/b;->a(Ljava/lang/String;)V

    .line 111
    :cond_1
    invoke-virtual {p0}, Lcom/dolphin/browser/search/ui/z;->dismiss()V

    .line 112
    return-void
.end method

.method protected onStart()V
    .locals 0

    .prologue
    .line 68
    invoke-super {p0}, Landroid/app/Dialog;->onStart()V

    .line 69
    return-void
.end method

.method protected onStop()V
    .locals 0

    .prologue
    .line 73
    invoke-super {p0}, Landroid/app/Dialog;->onStop()V

    .line 74
    return-void
.end method
