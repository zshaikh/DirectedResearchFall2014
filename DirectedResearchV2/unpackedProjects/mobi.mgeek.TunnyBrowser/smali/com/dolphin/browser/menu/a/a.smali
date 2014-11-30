.class public Lcom/dolphin/browser/menu/a/a;
.super Ljava/lang/Object;
.source "Copy.java"

# interfaces
.implements Landroid/view/MenuItem$OnMenuItemClickListener;


# instance fields
.field private a:Landroid/content/Context;

.field private final b:Ljava/lang/CharSequence;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/CharSequence;)V
    .locals 0

    .prologue
    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    iput-object p1, p0, Lcom/dolphin/browser/menu/a/a;->a:Landroid/content/Context;

    .line 21
    iput-object p2, p0, Lcom/dolphin/browser/menu/a/a;->b:Ljava/lang/CharSequence;

    .line 22
    return-void
.end method

.method public static a(Ljava/lang/CharSequence;Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 34
    :try_start_0
    const-string v0, "clipboard"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/text/ClipboardManager;

    .line 36
    if-eqz v0, :cond_0

    .line 37
    invoke-virtual {v0, p0}, Landroid/text/ClipboardManager;->setText(Ljava/lang/CharSequence;)V

    .line 39
    :cond_0
    sget-object v0, Lcom/dolphin/browser/n/a;->l:Lmobi/mgeek/TunnyBrowser/R$string;

    const v0, 0x7f0e013a

    invoke-static {p1, v0}, Lcom/dolphin/browser/util/df;->a(Landroid/content/Context;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 43
    :goto_0
    return-void

    .line 40
    :catch_0
    move-exception v0

    .line 41
    invoke-static {v0}, Lcom/dolphin/browser/util/Log;->e(Ljava/lang/Throwable;)I

    goto :goto_0
.end method


# virtual methods
.method public onMenuItemClick(Landroid/view/MenuItem;)Z
    .locals 2

    .prologue
    .line 27
    iget-object v0, p0, Lcom/dolphin/browser/menu/a/a;->b:Ljava/lang/CharSequence;

    iget-object v1, p0, Lcom/dolphin/browser/menu/a/a;->a:Landroid/content/Context;

    invoke-static {v0, v1}, Lcom/dolphin/browser/menu/a/a;->a(Ljava/lang/CharSequence;Landroid/content/Context;)V

    .line 28
    const/4 v0, 0x1

    return v0
.end method
