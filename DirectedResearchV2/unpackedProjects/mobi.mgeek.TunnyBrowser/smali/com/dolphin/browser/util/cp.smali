.class final Lcom/dolphin/browser/util/cp;
.super Lcom/dolphin/browser/util/co;
.source "StringUtil.java"


# instance fields
.field private a:Landroid/text/ClipboardManager;


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 1583
    invoke-direct {p0}, Lcom/dolphin/browser/util/co;-><init>()V

    .line 1584
    const-string v0, "clipboard"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/text/ClipboardManager;

    iput-object v0, p0, Lcom/dolphin/browser/util/cp;->a:Landroid/text/ClipboardManager;

    .line 1585
    return-void
.end method


# virtual methods
.method public a()Landroid/net/Uri;
    .locals 3

    .prologue
    .line 1589
    const/4 v0, 0x0

    .line 1591
    :try_start_0
    iget-object v1, p0, Lcom/dolphin/browser/util/cp;->a:Landroid/text/ClipboardManager;

    invoke-virtual {v1}, Landroid/text/ClipboardManager;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    .line 1592
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 1593
    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 1598
    :cond_0
    :goto_0
    return-object v0

    .line 1595
    :catch_0
    move-exception v1

    goto :goto_0
.end method
