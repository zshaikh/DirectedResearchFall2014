.class Lcom/dolphin/browser/share/a/r;
.super Ljava/lang/Object;
.source "EvernoteShareViewContent.java"

# interfaces
.implements Lcom/dolphin/browser/share/a/f;


# instance fields
.field final synthetic a:Lcom/dolphin/browser/share/a/k;


# direct methods
.method constructor <init>(Lcom/dolphin/browser/share/a/k;)V
    .locals 0

    .prologue
    .line 421
    iput-object p1, p0, Lcom/dolphin/browser/share/a/r;->a:Lcom/dolphin/browser/share/a/k;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 425
    const-string v0, "Evernote"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "choosedTags: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/dolphin/browser/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 426
    iget-object v0, p0, Lcom/dolphin/browser/share/a/r;->a:Lcom/dolphin/browser/share/a/k;

    invoke-static {v0}, Lcom/dolphin/browser/share/a/k;->g(Lcom/dolphin/browser/share/a/k;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 427
    iget-object v0, p0, Lcom/dolphin/browser/share/a/r;->a:Lcom/dolphin/browser/share/a/k;

    invoke-static {v0}, Lcom/dolphin/browser/share/a/k;->h(Lcom/dolphin/browser/share/a/k;)V

    .line 428
    return-void
.end method
