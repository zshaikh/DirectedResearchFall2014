.class Lcom/dolphin/browser/q/b/aj;
.super Ljava/lang/Object;
.source "EvernoteManager.java"

# interfaces
.implements Lcom/dolphin/browser/javascript/c;


# instance fields
.field final synthetic a:Lcom/dolphin/browser/q/b/ag;


# direct methods
.method constructor <init>(Lcom/dolphin/browser/q/b/ag;)V
    .locals 0

    .prologue
    .line 386
    iput-object p1, p0, Lcom/dolphin/browser/q/b/aj;->a:Lcom/dolphin/browser/q/b/ag;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 390
    const-string v0, "Evernote"

    const-string v1, "updatePostContent"

    invoke-static {v0, v1}, Lcom/dolphin/browser/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 391
    iget-object v0, p0, Lcom/dolphin/browser/q/b/aj;->a:Lcom/dolphin/browser/q/b/ag;

    invoke-static {v0, p1}, Lcom/dolphin/browser/q/b/ag;->a(Lcom/dolphin/browser/q/b/ag;Ljava/lang/String;)Ljava/lang/String;

    .line 392
    return-void
.end method
