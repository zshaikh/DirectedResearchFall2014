.class public Lcom/dolphin/browser/tablist/w;
.super Ljava/lang/Object;
.source "CloudTabReceivedManager.java"

# interfaces
.implements Lcom/dolphin/browser/push/s;


# static fields
.field private static a:Lcom/dolphin/browser/tablist/w;


# instance fields
.field private b:Lmobi/mgeek/TunnyBrowser/BrowserActivity;

.field private c:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/dolphin/browser/push/data/h;",
            ">;"
        }
    .end annotation
.end field

.field private d:Lcom/dolphin/browser/ui/fake/AlertDialog;

.field private e:Lcom/dolphin/browser/tablist/ab;


# direct methods
.method private constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    iput-object v0, p0, Lcom/dolphin/browser/tablist/w;->d:Lcom/dolphin/browser/ui/fake/AlertDialog;

    .line 156
    iput-object v0, p0, Lcom/dolphin/browser/tablist/w;->e:Lcom/dolphin/browser/tablist/ab;

    .line 48
    invoke-static {}, Lcom/dolphin/browser/push/p;->a()Lcom/dolphin/browser/push/p;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/dolphin/browser/push/p;->a(Lcom/dolphin/browser/push/s;)V

    .line 49
    return-void
.end method

.method public static a()Lcom/dolphin/browser/tablist/w;
    .locals 1

    .prologue
    .line 43
    sget-object v0, Lcom/dolphin/browser/tablist/w;->a:Lcom/dolphin/browser/tablist/w;

    return-object v0
.end method

.method public static a(Lmobi/mgeek/TunnyBrowser/BrowserActivity;)Lcom/dolphin/browser/tablist/w;
    .locals 2

    .prologue
    .line 32
    sget-object v0, Lcom/dolphin/browser/tablist/w;->a:Lcom/dolphin/browser/tablist/w;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/dolphin/browser/tablist/w;->a:Lcom/dolphin/browser/tablist/w;

    iget-object v0, v0, Lcom/dolphin/browser/tablist/w;->b:Lmobi/mgeek/TunnyBrowser/BrowserActivity;

    if-eq v0, p0, :cond_1

    .line 33
    :cond_0
    new-instance v0, Lcom/dolphin/browser/tablist/w;

    invoke-direct {v0}, Lcom/dolphin/browser/tablist/w;-><init>()V

    sput-object v0, Lcom/dolphin/browser/tablist/w;->a:Lcom/dolphin/browser/tablist/w;

    .line 35
    :cond_1
    sget-object v0, Lcom/dolphin/browser/tablist/w;->a:Lcom/dolphin/browser/tablist/w;

    iput-object p0, v0, Lcom/dolphin/browser/tablist/w;->b:Lmobi/mgeek/TunnyBrowser/BrowserActivity;

    .line 36
    sget-object v0, Lcom/dolphin/browser/tablist/w;->a:Lcom/dolphin/browser/tablist/w;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, v0, Lcom/dolphin/browser/tablist/w;->c:Ljava/util/List;

    .line 37
    sget-object v0, Lcom/dolphin/browser/tablist/w;->a:Lcom/dolphin/browser/tablist/w;

    const/4 v1, 0x0

    iput-object v1, v0, Lcom/dolphin/browser/tablist/w;->d:Lcom/dolphin/browser/ui/fake/AlertDialog;

    .line 38
    sget-object v0, Lcom/dolphin/browser/tablist/w;->a:Lcom/dolphin/browser/tablist/w;

    return-object v0
.end method

.method static synthetic a(Lcom/dolphin/browser/tablist/w;Lcom/dolphin/browser/ui/fake/AlertDialog;)Lcom/dolphin/browser/ui/fake/AlertDialog;
    .locals 0

    .prologue
    .line 24
    iput-object p1, p0, Lcom/dolphin/browser/tablist/w;->d:Lcom/dolphin/browser/ui/fake/AlertDialog;

    return-object p1
.end method

.method static synthetic a(Lcom/dolphin/browser/tablist/w;)Ljava/util/List;
    .locals 1

    .prologue
    .line 24
    iget-object v0, p0, Lcom/dolphin/browser/tablist/w;->c:Ljava/util/List;

    return-object v0
.end method

.method private b()V
    .locals 9

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 53
    invoke-direct {p0}, Lcom/dolphin/browser/tablist/w;->c()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 101
    :cond_0
    :goto_0
    return-void

    .line 56
    :cond_1
    iget-object v0, p0, Lcom/dolphin/browser/tablist/w;->d:Lcom/dolphin/browser/ui/fake/AlertDialog;

    if-nez v0, :cond_0

    .line 57
    invoke-static {}, Lcom/dolphin/browser/extensions/ThemeManager;->a()Lcom/dolphin/browser/extensions/ThemeManager;

    move-result-object v0

    .line 59
    new-instance v1, Lcom/dolphin/browser/ui/fake/AlertDialog$Builder;

    iget-object v2, p0, Lcom/dolphin/browser/tablist/w;->b:Lmobi/mgeek/TunnyBrowser/BrowserActivity;

    invoke-direct {v1, v2}, Lcom/dolphin/browser/ui/fake/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 61
    new-array v2, v6, [[I

    .line 62
    new-array v3, v6, [I

    const v4, 0x101009e

    aput v4, v3, v5

    aput-object v3, v2, v5

    .line 65
    new-array v3, v6, [I

    .line 66
    sget-object v4, Lcom/dolphin/browser/n/a;->d:Lmobi/mgeek/TunnyBrowser/R$color;

    const v4, 0x7f0a0062

    invoke-virtual {v0, v4}, Lcom/dolphin/browser/extensions/ThemeManager;->a(I)I

    move-result v4

    aput v4, v3, v5

    .line 68
    iget-object v4, p0, Lcom/dolphin/browser/tablist/w;->b:Lmobi/mgeek/TunnyBrowser/BrowserActivity;

    invoke-virtual {v4}, Lmobi/mgeek/TunnyBrowser/BrowserActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    .line 69
    sget-object v5, Lcom/dolphin/browser/n/a;->l:Lmobi/mgeek/TunnyBrowser/R$string;

    const v5, 0x7f0e060c

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 70
    sget-object v6, Lcom/dolphin/browser/n/a;->l:Lmobi/mgeek/TunnyBrowser/R$string;

    const v6, 0x7f0e060e

    invoke-virtual {v4, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 71
    sget-object v6, Lcom/dolphin/browser/n/a;->l:Lmobi/mgeek/TunnyBrowser/R$string;

    const v6, 0x7f0e060f

    invoke-virtual {v1, v6}, Lcom/dolphin/browser/ui/fake/AlertDialog$Builder;->setTitle(I)Lcom/dolphin/browser/ui/fake/AlertDialog$Builder;

    move-result-object v1

    sget-object v6, Lcom/dolphin/browser/n/a;->l:Lmobi/mgeek/TunnyBrowser/R$string;

    const v6, 0x7f0e060d

    invoke-virtual {v1, v6}, Lcom/dolphin/browser/ui/fake/AlertDialog$Builder;->setMessage(I)Lcom/dolphin/browser/ui/fake/AlertDialog$Builder;

    move-result-object v1

    new-instance v6, Lcom/dolphin/browser/tablist/z;

    invoke-direct {v6, p0}, Lcom/dolphin/browser/tablist/z;-><init>(Lcom/dolphin/browser/tablist/w;)V

    sget-object v7, Lcom/dolphin/browser/n/a;->f:Lmobi/mgeek/TunnyBrowser/R$drawable;

    const v7, 0x7f0200ae

    invoke-virtual {v0, v7}, Lcom/dolphin/browser/extensions/ThemeManager;->c(I)Landroid/graphics/drawable/Drawable;

    move-result-object v7

    const/4 v8, 0x0

    invoke-virtual {v1, v5, v6, v7, v8}, Lcom/dolphin/browser/ui/fake/AlertDialog$Builder;->a(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;Landroid/graphics/drawable/Drawable;Landroid/content/res/ColorStateList;)Lcom/dolphin/browser/ui/fake/AlertDialog$Builder;

    move-result-object v1

    new-instance v5, Lcom/dolphin/browser/tablist/y;

    invoke-direct {v5, p0}, Lcom/dolphin/browser/tablist/y;-><init>(Lcom/dolphin/browser/tablist/w;)V

    sget-object v6, Lcom/dolphin/browser/n/a;->f:Lmobi/mgeek/TunnyBrowser/R$drawable;

    const v6, 0x7f0200b0

    invoke-virtual {v0, v6}, Lcom/dolphin/browser/extensions/ThemeManager;->c(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    new-instance v6, Landroid/content/res/ColorStateList;

    invoke-direct {v6, v2, v3}, Landroid/content/res/ColorStateList;-><init>([[I[I)V

    invoke-virtual {v1, v4, v5, v0, v6}, Lcom/dolphin/browser/ui/fake/AlertDialog$Builder;->c(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;Landroid/graphics/drawable/Drawable;Landroid/content/res/ColorStateList;)Lcom/dolphin/browser/ui/fake/AlertDialog$Builder;

    move-result-object v0

    new-instance v1, Lcom/dolphin/browser/tablist/x;

    invoke-direct {v1, p0}, Lcom/dolphin/browser/tablist/x;-><init>(Lcom/dolphin/browser/tablist/w;)V

    invoke-virtual {v0, v1}, Lcom/dolphin/browser/ui/fake/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Lcom/dolphin/browser/ui/fake/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/dolphin/browser/ui/fake/AlertDialog$Builder;->create()Lcom/dolphin/browser/ui/fake/AlertDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/dolphin/browser/tablist/w;->d:Lcom/dolphin/browser/ui/fake/AlertDialog;

    goto/16 :goto_0
.end method

.method static synthetic b(Lcom/dolphin/browser/tablist/w;)V
    .locals 0

    .prologue
    .line 24
    invoke-direct {p0}, Lcom/dolphin/browser/tablist/w;->g()V

    return-void
.end method

.method static b(Lcom/dolphin/browser/push/data/h;Z)Z
    .locals 3

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 168
    if-eqz p0, :cond_0

    if-nez p1, :cond_2

    :cond_0
    move v0, v1

    .line 171
    :cond_1
    :goto_0
    return v0

    :cond_2
    invoke-virtual {p0}, Lcom/dolphin/browser/push/data/h;->a()I

    move-result v2

    if-eq v2, v0, :cond_1

    move v0, v1

    goto :goto_0
.end method

.method static synthetic c(Lcom/dolphin/browser/tablist/w;)V
    .locals 0

    .prologue
    .line 24
    invoke-direct {p0}, Lcom/dolphin/browser/tablist/w;->f()V

    return-void
.end method

.method private c()Z
    .locals 1

    .prologue
    .line 105
    iget-object v0, p0, Lcom/dolphin/browser/tablist/w;->c:Ljava/util/List;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/dolphin/browser/tablist/w;->c:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 106
    :cond_0
    const/4 v0, 0x1

    .line 108
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private d()V
    .locals 4

    .prologue
    .line 113
    iget-object v0, p0, Lcom/dolphin/browser/tablist/w;->d:Lcom/dolphin/browser/ui/fake/AlertDialog;

    if-eqz v0, :cond_0

    .line 114
    iget-object v0, p0, Lcom/dolphin/browser/tablist/w;->b:Lmobi/mgeek/TunnyBrowser/BrowserActivity;

    invoke-virtual {v0}, Lmobi/mgeek/TunnyBrowser/BrowserActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget-object v1, Lcom/dolphin/browser/n/a;->l:Lmobi/mgeek/TunnyBrowser/R$string;

    const v1, 0x7f0e060d

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 116
    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/dolphin/browser/tablist/w;->c:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 117
    iget-object v1, p0, Lcom/dolphin/browser/tablist/w;->d:Lcom/dolphin/browser/ui/fake/AlertDialog;

    invoke-virtual {v1, v0}, Lcom/dolphin/browser/ui/fake/AlertDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 118
    iget-object v0, p0, Lcom/dolphin/browser/tablist/w;->d:Lcom/dolphin/browser/ui/fake/AlertDialog;

    invoke-static {v0}, Lcom/dolphin/browser/util/df;->a(Landroid/app/Dialog;)Z

    .line 120
    :cond_0
    return-void
.end method

.method static synthetic d(Lcom/dolphin/browser/tablist/w;)V
    .locals 0

    .prologue
    .line 24
    invoke-direct {p0}, Lcom/dolphin/browser/tablist/w;->b()V

    return-void
.end method

.method private e()V
    .locals 1

    .prologue
    .line 124
    invoke-direct {p0}, Lcom/dolphin/browser/tablist/w;->c()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 131
    :cond_0
    :goto_0
    return-void

    .line 127
    :cond_1
    const/4 v0, 0x1

    invoke-static {v0}, Lcom/dolphin/browser/tablist/cc;->a(Z)V

    .line 128
    iget-object v0, p0, Lcom/dolphin/browser/tablist/w;->e:Lcom/dolphin/browser/tablist/ab;

    if-eqz v0, :cond_0

    .line 129
    iget-object v0, p0, Lcom/dolphin/browser/tablist/w;->e:Lcom/dolphin/browser/tablist/ab;

    invoke-interface {v0}, Lcom/dolphin/browser/tablist/ab;->a()V

    goto :goto_0
.end method

.method static synthetic e(Lcom/dolphin/browser/tablist/w;)V
    .locals 0

    .prologue
    .line 24
    invoke-direct {p0}, Lcom/dolphin/browser/tablist/w;->d()V

    return-void
.end method

.method private f()V
    .locals 1

    .prologue
    .line 135
    invoke-direct {p0}, Lcom/dolphin/browser/tablist/w;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 140
    :goto_0
    return-void

    .line 138
    :cond_0
    iget-object v0, p0, Lcom/dolphin/browser/tablist/w;->c:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 139
    new-instance v0, Lcom/dolphin/browser/c/e;

    invoke-direct {v0}, Lcom/dolphin/browser/c/e;-><init>()V

    invoke-virtual {v0}, Lcom/dolphin/browser/c/e;->a()Z

    goto :goto_0
.end method

.method static synthetic f(Lcom/dolphin/browser/tablist/w;)V
    .locals 0

    .prologue
    .line 24
    invoke-direct {p0}, Lcom/dolphin/browser/tablist/w;->e()V

    return-void
.end method

.method private g()V
    .locals 4

    .prologue
    .line 144
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/dolphin/browser/tablist/cc;->a(Z)V

    .line 145
    invoke-direct {p0}, Lcom/dolphin/browser/tablist/w;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 154
    :goto_0
    return-void

    .line 149
    :cond_0
    iget-object v0, p0, Lcom/dolphin/browser/tablist/w;->c:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/dolphin/browser/push/data/h;

    .line 150
    invoke-virtual {v0}, Lcom/dolphin/browser/push/data/h;->d()Ljava/lang/String;

    move-result-object v0

    .line 151
    iget-object v2, p0, Lcom/dolphin/browser/tablist/w;->b:Lmobi/mgeek/TunnyBrowser/BrowserActivity;

    const/4 v3, 0x1

    invoke-virtual {v2, v0, v3}, Lmobi/mgeek/TunnyBrowser/BrowserActivity;->openUrl(Ljava/lang/String;Z)V

    goto :goto_1

    .line 153
    :cond_1
    iget-object v0, p0, Lcom/dolphin/browser/tablist/w;->c:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    goto :goto_0
.end method

.method private h()V
    .locals 1

    .prologue
    .line 202
    invoke-direct {p0}, Lcom/dolphin/browser/tablist/w;->c()Z

    move-result v0

    if-nez v0, :cond_0

    .line 203
    new-instance v0, Lcom/dolphin/browser/tablist/aa;

    invoke-direct {v0, p0}, Lcom/dolphin/browser/tablist/aa;-><init>(Lcom/dolphin/browser/tablist/w;)V

    invoke-static {v0}, Lcom/dolphin/browser/util/df;->a(Ljava/lang/Runnable;)V

    .line 213
    :cond_0
    return-void
.end method


# virtual methods
.method public a(Ljava/util/List;Z)Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/dolphin/browser/push/data/h;",
            ">;Z)",
            "Ljava/util/List",
            "<",
            "Lcom/dolphin/browser/push/data/h;",
            ">;"
        }
    .end annotation

    .prologue
    .line 186
    if-nez p1, :cond_0

    .line 187
    const/4 v0, 0x0

    .line 198
    :goto_0
    return-object v0

    .line 189
    :cond_0
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 190
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/dolphin/browser/push/data/h;

    .line 191
    invoke-static {v0, p2}, Lcom/dolphin/browser/tablist/w;->b(Lcom/dolphin/browser/push/data/h;Z)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 192
    iget-object v3, p0, Lcom/dolphin/browser/tablist/w;->c:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 194
    :cond_1
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 197
    :cond_2
    invoke-direct {p0}, Lcom/dolphin/browser/tablist/w;->h()V

    move-object v0, v1

    .line 198
    goto :goto_0
.end method

.method public a(Lcom/dolphin/browser/tablist/ab;)V
    .locals 0

    .prologue
    .line 160
    iput-object p1, p0, Lcom/dolphin/browser/tablist/w;->e:Lcom/dolphin/browser/tablist/ab;

    .line 161
    return-void
.end method

.method public a(Lcom/dolphin/browser/push/data/h;Z)Z
    .locals 1

    .prologue
    .line 176
    invoke-static {p1, p2}, Lcom/dolphin/browser/tablist/w;->b(Lcom/dolphin/browser/push/data/h;Z)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 177
    iget-object v0, p0, Lcom/dolphin/browser/tablist/w;->c:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 178
    invoke-direct {p0}, Lcom/dolphin/browser/tablist/w;->h()V

    .line 179
    const/4 v0, 0x1

    .line 181
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
