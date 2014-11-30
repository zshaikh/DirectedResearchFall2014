.class Lcom/dolphin/browser/t/s;
.super Ljava/lang/Object;
.source "TabUIManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/dolphin/browser/t/l;


# direct methods
.method constructor <init>(Lcom/dolphin/browser/t/l;)V
    .locals 0

    .prologue
    .line 1883
    iput-object p1, p0, Lcom/dolphin/browser/t/s;->a:Lcom/dolphin/browser/t/l;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 1888
    iget-object v0, p0, Lcom/dolphin/browser/t/s;->a:Lcom/dolphin/browser/t/l;

    invoke-static {v0}, Lcom/dolphin/browser/t/l;->b(Lcom/dolphin/browser/t/l;)Lcom/dolphin/browser/titlebar/q;

    move-result-object v0

    invoke-virtual {v0}, Lcom/dolphin/browser/titlebar/q;->m()V

    .line 1889
    return-void
.end method
