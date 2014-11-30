.class public Lmobi/mgeek/TunnyBrowser/fh;
.super Ljava/lang/Object;
.source "GeolocationPermissionsPrompt.java"


# static fields
.field private static i:Lmobi/mgeek/TunnyBrowser/fh;


# instance fields
.field private a:Landroid/widget/TextView;

.field private b:Landroid/widget/CheckBox;

.field private c:Landroid/widget/TextView;

.field private d:Lcom/dolphin/browser/core/IGeolocationPermissions$Callback;

.field private e:Ljava/lang/String;

.field private f:Lcom/dolphin/browser/core/IWebView;

.field private g:Landroid/content/Context;

.field private h:Landroid/app/Dialog;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 30
    const/4 v0, 0x0

    sput-object v0, Lmobi/mgeek/TunnyBrowser/fh;->i:Lmobi/mgeek/TunnyBrowser/fh;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    const/4 v0, 0x0

    iput-object v0, p0, Lmobi/mgeek/TunnyBrowser/fh;->h:Landroid/app/Dialog;

    .line 40
    iput-object p1, p0, Lmobi/mgeek/TunnyBrowser/fh;->g:Landroid/content/Context;

    .line 41
    return-void
.end method

.method public static a(Landroid/content/Context;)Lmobi/mgeek/TunnyBrowser/fh;
    .locals 1

    .prologue
    .line 33
    sget-object v0, Lmobi/mgeek/TunnyBrowser/fh;->i:Lmobi/mgeek/TunnyBrowser/fh;

    if-nez v0, :cond_0

    .line 34
    new-instance v0, Lmobi/mgeek/TunnyBrowser/fh;

    invoke-direct {v0, p0}, Lmobi/mgeek/TunnyBrowser/fh;-><init>(Landroid/content/Context;)V

    sput-object v0, Lmobi/mgeek/TunnyBrowser/fh;->i:Lmobi/mgeek/TunnyBrowser/fh;

    .line 36
    :cond_0
    sget-object v0, Lmobi/mgeek/TunnyBrowser/fh;->i:Lmobi/mgeek/TunnyBrowser/fh;

    return-object v0
.end method

.method private a(Ljava/lang/CharSequence;)V
    .locals 4

    .prologue
    .line 125
    iget-object v0, p0, Lmobi/mgeek/TunnyBrowser/fh;->a:Landroid/widget/TextView;

    iget-object v1, p0, Lmobi/mgeek/TunnyBrowser/fh;->g:Landroid/content/Context;

    sget-object v2, Lcom/dolphin/browser/n/a;->l:Lmobi/mgeek/TunnyBrowser/R$string;

    const v2, 0x7f0e02a6

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 128
    return-void
.end method

.method static synthetic a(Lmobi/mgeek/TunnyBrowser/fh;Z)V
    .locals 0

    .prologue
    .line 21
    invoke-direct {p0, p1}, Lmobi/mgeek/TunnyBrowser/fh;->a(Z)V

    return-void
.end method

.method private a(Z)V
    .locals 3

    .prologue
    .line 108
    iget-object v0, p0, Lmobi/mgeek/TunnyBrowser/fh;->b:Landroid/widget/CheckBox;

    invoke-virtual {v0}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v0

    .line 109
    const/4 v1, 0x0

    invoke-direct {p0, v1}, Lmobi/mgeek/TunnyBrowser/fh;->b(Z)V

    .line 110
    iget-object v1, p0, Lmobi/mgeek/TunnyBrowser/fh;->d:Lcom/dolphin/browser/core/IGeolocationPermissions$Callback;

    iget-object v2, p0, Lmobi/mgeek/TunnyBrowser/fh;->e:Ljava/lang/String;

    invoke-interface {v1, v2, p1, v0}, Lcom/dolphin/browser/core/IGeolocationPermissions$Callback;->invoke(Ljava/lang/String;ZZ)V

    .line 111
    iget-object v0, p0, Lmobi/mgeek/TunnyBrowser/fh;->f:Lcom/dolphin/browser/core/IWebView;

    if-eqz v0, :cond_0

    .line 113
    :try_start_0
    iget-object v0, p0, Lmobi/mgeek/TunnyBrowser/fh;->f:Lcom/dolphin/browser/core/IWebView;

    invoke-interface {v0}, Lcom/dolphin/browser/core/IWebView;->onPause()V

    .line 114
    iget-object v0, p0, Lmobi/mgeek/TunnyBrowser/fh;->f:Lcom/dolphin/browser/core/IWebView;

    invoke-interface {v0}, Lcom/dolphin/browser/core/IWebView;->onResume()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 119
    :cond_0
    :goto_0
    return-void

    .line 115
    :catch_0
    move-exception v0

    .line 116
    invoke-static {v0}, Lcom/dolphin/browser/util/Log;->e(Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method private b(Z)V
    .locals 2

    .prologue
    .line 134
    if-eqz p1, :cond_1

    .line 135
    invoke-virtual {p0}, Lmobi/mgeek/TunnyBrowser/fh;->a()V

    .line 136
    iget-object v0, p0, Lmobi/mgeek/TunnyBrowser/fh;->f:Lcom/dolphin/browser/core/IWebView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lmobi/mgeek/TunnyBrowser/fh;->f:Lcom/dolphin/browser/core/IWebView;

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Lcom/dolphin/browser/core/IWebView;->getView(Z)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 137
    iget-object v0, p0, Lmobi/mgeek/TunnyBrowser/fh;->h:Landroid/app/Dialog;

    invoke-static {v0}, Lcom/dolphin/browser/util/df;->a(Landroid/app/Dialog;)Z

    .line 149
    :cond_0
    :goto_0
    return-void

    .line 141
    :cond_1
    iget-object v0, p0, Lmobi/mgeek/TunnyBrowser/fh;->h:Landroid/app/Dialog;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lmobi/mgeek/TunnyBrowser/fh;->h:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 143
    :try_start_0
    iget-object v0, p0, Lmobi/mgeek/TunnyBrowser/fh;->h:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 144
    :catch_0
    move-exception v0

    .line 145
    invoke-static {v0}, Lcom/dolphin/browser/util/Log;->w(Ljava/lang/Throwable;)I

    goto :goto_0
.end method


# virtual methods
.method a()V
    .locals 5

    .prologue
    const v4, 0x7f0a0044

    .line 44
    iget-object v0, p0, Lmobi/mgeek/TunnyBrowser/fh;->h:Landroid/app/Dialog;

    if-nez v0, :cond_0

    .line 45
    iget-object v0, p0, Lmobi/mgeek/TunnyBrowser/fh;->g:Landroid/content/Context;

    sget-object v1, Lcom/dolphin/browser/n/a;->h:Lmobi/mgeek/TunnyBrowser/R$layout;

    const v1, 0x7f030085

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 46
    sget-object v0, Lcom/dolphin/browser/n/a;->g:Lmobi/mgeek/TunnyBrowser/R$id;

    const v0, 0x7f080084

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lmobi/mgeek/TunnyBrowser/fh;->a:Landroid/widget/TextView;

    .line 47
    iget-object v0, p0, Lmobi/mgeek/TunnyBrowser/fh;->a:Landroid/widget/TextView;

    invoke-static {}, Lcom/dolphin/browser/extensions/ThemeManager;->a()Lcom/dolphin/browser/extensions/ThemeManager;

    move-result-object v2

    sget-object v3, Lcom/dolphin/browser/n/a;->d:Lmobi/mgeek/TunnyBrowser/R$color;

    invoke-virtual {v2, v4}, Lcom/dolphin/browser/extensions/ThemeManager;->b(I)Landroid/content/res/ColorStateList;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 48
    sget-object v0, Lcom/dolphin/browser/n/a;->g:Lmobi/mgeek/TunnyBrowser/R$id;

    const v0, 0x7f08023f

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    iput-object v0, p0, Lmobi/mgeek/TunnyBrowser/fh;->b:Landroid/widget/CheckBox;

    .line 49
    iget-object v0, p0, Lmobi/mgeek/TunnyBrowser/fh;->b:Landroid/widget/CheckBox;

    iget-object v2, p0, Lmobi/mgeek/TunnyBrowser/fh;->g:Landroid/content/Context;

    invoke-static {v2}, Lcom/dolphin/browser/util/cu;->b(Landroid/content/Context;)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/CheckBox;->setButtonDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 50
    iget-object v0, p0, Lmobi/mgeek/TunnyBrowser/fh;->b:Landroid/widget/CheckBox;

    invoke-static {}, Lcom/dolphin/browser/extensions/ThemeManager;->a()Lcom/dolphin/browser/extensions/ThemeManager;

    move-result-object v2

    sget-object v3, Lcom/dolphin/browser/n/a;->d:Lmobi/mgeek/TunnyBrowser/R$color;

    invoke-virtual {v2, v4}, Lcom/dolphin/browser/extensions/ThemeManager;->b(I)Landroid/content/res/ColorStateList;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/CheckBox;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 51
    sget-object v0, Lcom/dolphin/browser/n/a;->g:Lmobi/mgeek/TunnyBrowser/R$id;

    const v0, 0x7f080240

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lmobi/mgeek/TunnyBrowser/fh;->c:Landroid/widget/TextView;

    .line 52
    iget-object v0, p0, Lmobi/mgeek/TunnyBrowser/fh;->c:Landroid/widget/TextView;

    invoke-static {}, Lcom/dolphin/browser/extensions/ThemeManager;->a()Lcom/dolphin/browser/extensions/ThemeManager;

    move-result-object v2

    sget-object v3, Lcom/dolphin/browser/n/a;->d:Lmobi/mgeek/TunnyBrowser/R$color;

    invoke-virtual {v2, v4}, Lcom/dolphin/browser/extensions/ThemeManager;->b(I)Landroid/content/res/ColorStateList;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 53
    invoke-static {}, Lcom/dolphin/browser/ui/x;->a()Lcom/dolphin/browser/ui/x;

    move-result-object v0

    iget-object v2, p0, Lmobi/mgeek/TunnyBrowser/fh;->g:Landroid/content/Context;

    invoke-virtual {v0, v2}, Lcom/dolphin/browser/ui/x;->a(Landroid/content/Context;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    sget-object v1, Lcom/dolphin/browser/n/a;->l:Lmobi/mgeek/TunnyBrowser/R$string;

    const v1, 0x7f0e02a8

    new-instance v2, Lmobi/mgeek/TunnyBrowser/fj;

    invoke-direct {v2, p0}, Lmobi/mgeek/TunnyBrowser/fj;-><init>(Lmobi/mgeek/TunnyBrowser/fh;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    sget-object v1, Lcom/dolphin/browser/n/a;->l:Lmobi/mgeek/TunnyBrowser/R$string;

    const v1, 0x7f0e02a5

    new-instance v2, Lmobi/mgeek/TunnyBrowser/fi;

    invoke-direct {v2, p0}, Lmobi/mgeek/TunnyBrowser/fi;-><init>(Lmobi/mgeek/TunnyBrowser/fh;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    iput-object v0, p0, Lmobi/mgeek/TunnyBrowser/fh;->h:Landroid/app/Dialog;

    .line 73
    :cond_0
    return-void
.end method

.method public a(Lcom/dolphin/browser/core/IWebView;)V
    .locals 0

    .prologue
    .line 80
    iput-object p1, p0, Lmobi/mgeek/TunnyBrowser/fh;->f:Lcom/dolphin/browser/core/IWebView;

    .line 81
    return-void
.end method

.method public a(Ljava/lang/String;Lcom/dolphin/browser/core/IGeolocationPermissions$Callback;)V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 88
    iput-object p1, p0, Lmobi/mgeek/TunnyBrowser/fh;->e:Ljava/lang/String;

    .line 89
    iput-object p2, p0, Lmobi/mgeek/TunnyBrowser/fh;->d:Lcom/dolphin/browser/core/IGeolocationPermissions$Callback;

    .line 90
    invoke-direct {p0, v2}, Lmobi/mgeek/TunnyBrowser/fh;->b(Z)V

    .line 91
    iget-object v0, p0, Lmobi/mgeek/TunnyBrowser/fh;->e:Ljava/lang/String;

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 93
    iget-object v1, p0, Lmobi/mgeek/TunnyBrowser/fh;->b:Landroid/widget/CheckBox;

    invoke-virtual {v1, v2}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 94
    const-string v1, "http"

    invoke-virtual {v0}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lmobi/mgeek/TunnyBrowser/fh;->e:Ljava/lang/String;

    const/4 v1, 0x7

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    :goto_0
    invoke-direct {p0, v0}, Lmobi/mgeek/TunnyBrowser/fh;->a(Ljava/lang/CharSequence;)V

    .line 95
    return-void

    .line 94
    :cond_0
    iget-object v0, p0, Lmobi/mgeek/TunnyBrowser/fh;->e:Ljava/lang/String;

    goto :goto_0
.end method

.method public b()V
    .locals 1

    .prologue
    .line 101
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lmobi/mgeek/TunnyBrowser/fh;->b(Z)V

    .line 102
    return-void
.end method
