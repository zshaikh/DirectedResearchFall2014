.class Lcom/fusepowered/m2/m2l/MraidBrowserController;
.super Lcom/fusepowered/m2/m2l/MraidAbstractController;
.source "MraidBrowserController.java"


# static fields
.field private static final LOGTAG:Ljava/lang/String; = "MraidBrowserController"


# instance fields
.field private mContext:Landroid/content/Context;


# direct methods
.method constructor <init>(Lcom/fusepowered/m2/m2l/MraidView;)V
    .locals 1
    .param p1, "view"    # Lcom/fusepowered/m2/m2l/MraidView;

    .prologue
    .line 46
    invoke-direct {p0, p1}, Lcom/fusepowered/m2/m2l/MraidAbstractController;-><init>(Lcom/fusepowered/m2/m2l/MraidView;)V

    .line 47
    invoke-virtual {p1}, Lcom/fusepowered/m2/m2l/MraidView;->getContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/fusepowered/m2/m2l/MraidBrowserController;->mContext:Landroid/content/Context;

    .line 48
    return-void
.end method

.method private canHandleApplicationUrl(Ljava/lang/String;)Z
    .locals 4
    .param p1, "url"    # Ljava/lang/String;

    .prologue
    .line 72
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 75
    .local v0, "intent":Landroid/content/Intent;
    iget-object v1, p0, Lcom/fusepowered/m2/m2l/MraidBrowserController;->mContext:Landroid/content/Context;

    invoke-static {v1, v0}, Lcom/fusepowered/m2/m2l/Utils;->deviceCanHandleIntent(Landroid/content/Context;Landroid/content/Intent;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 76
    const-string v1, "MoPub"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Could not handle application specific action: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ". "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 77
    const-string v3, "You may be running in the emulator or another device which does not "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 78
    const-string v3, "have the required application."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 76
    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 79
    const/4 v1, 0x0

    .line 82
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x1

    goto :goto_0
.end method

.method private executeIntent(Landroid/content/Context;Landroid/content/Intent;Ljava/lang/String;)Z
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;
    .param p3, "errorMessage"    # Ljava/lang/String;

    .prologue
    .line 96
    :try_start_0
    invoke-virtual {p1, p2}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 103
    const/4 v1, 0x1

    :goto_0
    return v1

    .line 97
    :catch_0
    move-exception v0

    .line 98
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "MoPub"

    if-eqz p3, :cond_0

    move-object v2, p3

    :goto_1
    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 101
    const/4 v1, 0x0

    goto :goto_0

    .line 100
    :cond_0
    const-string v2, "Unable to start intent."

    goto :goto_1
.end method

.method private isWebSiteUrl(Ljava/lang/String;)Z
    .locals 1
    .param p1, "url"    # Ljava/lang/String;

    .prologue
    .line 107
    const-string v0, "http://"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "https://"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private launchApplicationUrl(Ljava/lang/String;)Z
    .locals 4
    .param p1, "url"    # Ljava/lang/String;

    .prologue
    .line 86
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.VIEW"

    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 87
    .local v1, "intent":Landroid/content/Intent;
    const/high16 v2, 0x10000000

    invoke-virtual {v1, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 89
    const-string v0, "Unable to open intent."

    .line 91
    .local v0, "errorMessage":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/fusepowered/m2/m2l/MraidBrowserController;->getMraidView()Lcom/fusepowered/m2/m2l/MraidView;

    move-result-object v2

    invoke-virtual {v2}, Lcom/fusepowered/m2/m2l/MraidView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {p0, v2, v1, v0}, Lcom/fusepowered/m2/m2l/MraidBrowserController;->executeIntent(Landroid/content/Context;Landroid/content/Intent;Ljava/lang/String;)Z

    move-result v2

    return v2
.end method


# virtual methods
.method protected open(Ljava/lang/String;)V
    .locals 5
    .param p1, "url"    # Ljava/lang/String;

    .prologue
    .line 51
    const-string v2, "MraidBrowserController"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Opening url: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 53
    invoke-virtual {p0}, Lcom/fusepowered/m2/m2l/MraidBrowserController;->getMraidView()Lcom/fusepowered/m2/m2l/MraidView;

    move-result-object v1

    .line 54
    .local v1, "view":Lcom/fusepowered/m2/m2l/MraidView;
    invoke-virtual {v1}, Lcom/fusepowered/m2/m2l/MraidView;->getOnOpenListener()Lcom/fusepowered/m2/m2l/MraidView$OnOpenListener;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 55
    invoke-virtual {v1}, Lcom/fusepowered/m2/m2l/MraidView;->getOnOpenListener()Lcom/fusepowered/m2/m2l/MraidView$OnOpenListener;

    move-result-object v2

    invoke-interface {v2, v1}, Lcom/fusepowered/m2/m2l/MraidView$OnOpenListener;->onOpen(Lcom/fusepowered/m2/m2l/MraidView;)V

    .line 59
    :cond_0
    invoke-direct {p0, p1}, Lcom/fusepowered/m2/m2l/MraidBrowserController;->isWebSiteUrl(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1

    invoke-direct {p0, p1}, Lcom/fusepowered/m2/m2l/MraidBrowserController;->canHandleApplicationUrl(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 60
    invoke-direct {p0, p1}, Lcom/fusepowered/m2/m2l/MraidBrowserController;->launchApplicationUrl(Ljava/lang/String;)Z

    .line 68
    :goto_0
    return-void

    .line 64
    :cond_1
    new-instance v0, Landroid/content/Intent;

    iget-object v2, p0, Lcom/fusepowered/m2/m2l/MraidBrowserController;->mContext:Landroid/content/Context;

    const-class v3, Lcom/fusepowered/m2/m2l/M2RBrowser;

    invoke-direct {v0, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 65
    .local v0, "i":Landroid/content/Intent;
    const-string v2, "extra_url"

    invoke-virtual {v0, v2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 66
    const/high16 v2, 0x10000000

    invoke-virtual {v0, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 67
    iget-object v2, p0, Lcom/fusepowered/m2/m2l/MraidBrowserController;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto :goto_0
.end method
