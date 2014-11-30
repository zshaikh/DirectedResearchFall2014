.class Lcom/dolphin/browser/share/a/e;
.super Ljava/lang/Object;
.source "EvernoteAddTagDialog.java"

# interfaces
.implements Ljava/util/Observer;


# instance fields
.field final synthetic a:Lcom/dolphin/browser/share/a/a;


# direct methods
.method constructor <init>(Lcom/dolphin/browser/share/a/a;)V
    .locals 0

    .prologue
    .line 242
    iput-object p1, p0, Lcom/dolphin/browser/share/a/e;->a:Lcom/dolphin/browser/share/a/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public update(Ljava/util/Observable;Ljava/lang/Object;)V
    .locals 1

    .prologue
    .line 246
    iget-object v0, p0, Lcom/dolphin/browser/share/a/e;->a:Lcom/dolphin/browser/share/a/a;

    invoke-static {v0}, Lcom/dolphin/browser/share/a/a;->a(Lcom/dolphin/browser/share/a/a;)Lcom/dolphin/browser/share/a/t;

    move-result-object v0

    invoke-virtual {v0}, Lcom/dolphin/browser/share/a/t;->a()V

    .line 247
    iget-object v0, p0, Lcom/dolphin/browser/share/a/e;->a:Lcom/dolphin/browser/share/a/a;

    invoke-virtual {v0}, Lcom/dolphin/browser/share/a/a;->a()V

    .line 248
    return-void
.end method
