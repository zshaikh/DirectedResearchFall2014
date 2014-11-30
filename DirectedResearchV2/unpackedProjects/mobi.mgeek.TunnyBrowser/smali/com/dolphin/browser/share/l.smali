.class Lcom/dolphin/browser/share/l;
.super Ljava/lang/Object;
.source "ShareActivity.java"

# interfaces
.implements Lcom/dolphin/browser/share/f;


# instance fields
.field final synthetic a:Lcom/dolphin/browser/share/ShareActivity;


# direct methods
.method constructor <init>(Lcom/dolphin/browser/share/ShareActivity;)V
    .locals 0

    .prologue
    .line 269
    iput-object p1, p0, Lcom/dolphin/browser/share/l;->a:Lcom/dolphin/browser/share/ShareActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 273
    iget-object v0, p0, Lcom/dolphin/browser/share/l;->a:Lcom/dolphin/browser/share/ShareActivity;

    invoke-static {v0}, Lcom/dolphin/browser/share/ShareActivity;->d(Lcom/dolphin/browser/share/ShareActivity;)Lcom/dolphin/browser/share/n;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 274
    iget-object v0, p0, Lcom/dolphin/browser/share/l;->a:Lcom/dolphin/browser/share/ShareActivity;

    invoke-static {v0}, Lcom/dolphin/browser/share/ShareActivity;->d(Lcom/dolphin/browser/share/ShareActivity;)Lcom/dolphin/browser/share/n;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/dolphin/browser/share/n;->a(Ljava/lang/String;)Z

    .line 276
    :cond_0
    return-void
.end method
