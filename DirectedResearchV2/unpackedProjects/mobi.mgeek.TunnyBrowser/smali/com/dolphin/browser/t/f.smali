.class Lcom/dolphin/browser/t/f;
.super Ljava/lang/Object;
.source "DownloadHandler.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Landroid/widget/EditText;

.field final synthetic c:Lcom/dolphin/browser/download/e;

.field final synthetic d:Lmobi/mgeek/TunnyBrowser/BrowserActivity;

.field final synthetic e:Lcom/dolphin/browser/t/a;


# direct methods
.method constructor <init>(Lcom/dolphin/browser/t/a;Ljava/lang/String;Landroid/widget/EditText;Lcom/dolphin/browser/download/e;Lmobi/mgeek/TunnyBrowser/BrowserActivity;)V
    .locals 0

    .prologue
    .line 415
    iput-object p1, p0, Lcom/dolphin/browser/t/f;->e:Lcom/dolphin/browser/t/a;

    iput-object p2, p0, Lcom/dolphin/browser/t/f;->a:Ljava/lang/String;

    iput-object p3, p0, Lcom/dolphin/browser/t/f;->b:Landroid/widget/EditText;

    iput-object p4, p0, Lcom/dolphin/browser/t/f;->c:Lcom/dolphin/browser/download/e;

    iput-object p5, p0, Lcom/dolphin/browser/t/f;->d:Lmobi/mgeek/TunnyBrowser/BrowserActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 419
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 420
    iget-object v0, p0, Lcom/dolphin/browser/t/f;->e:Lcom/dolphin/browser/t/a;

    iget-object v1, p0, Lcom/dolphin/browser/t/f;->a:Ljava/lang/String;

    iget-object v2, p0, Lcom/dolphin/browser/t/f;->b:Landroid/widget/EditText;

    invoke-static {v0, v1, v2}, Lcom/dolphin/browser/t/a;->a(Lcom/dolphin/browser/t/a;Ljava/lang/String;Landroid/widget/EditText;)V

    .line 421
    iget-object v0, p0, Lcom/dolphin/browser/t/f;->b:Landroid/widget/EditText;

    invoke-virtual {v0, v3}, Landroid/widget/EditText;->setFocusable(Z)V

    .line 422
    iget-object v0, p0, Lcom/dolphin/browser/t/f;->b:Landroid/widget/EditText;

    invoke-virtual {v0, v3}, Landroid/widget/EditText;->setFocusableInTouchMode(Z)V

    .line 423
    iget-object v0, p0, Lcom/dolphin/browser/t/f;->b:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->requestFocus()Z

    .line 424
    iget-object v0, p0, Lcom/dolphin/browser/t/f;->c:Lcom/dolphin/browser/download/e;

    iget-object v1, p0, Lcom/dolphin/browser/t/f;->d:Lmobi/mgeek/TunnyBrowser/BrowserActivity;

    invoke-virtual {v0, v1}, Lcom/dolphin/browser/download/e;->d(Landroid/content/Context;)V

    .line 425
    return-void
.end method
