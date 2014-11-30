.class Lcom/dolphin/browser/t/v;
.super Ljava/lang/Object;
.source "TabUIManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Lcom/dolphin/browser/t/l;


# direct methods
.method constructor <init>(Lcom/dolphin/browser/t/l;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 2058
    iput-object p1, p0, Lcom/dolphin/browser/t/v;->b:Lcom/dolphin/browser/t/l;

    iput-object p2, p0, Lcom/dolphin/browser/t/v;->a:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 2063
    iget-object v0, p0, Lcom/dolphin/browser/t/v;->b:Lcom/dolphin/browser/t/l;

    iget-object v1, p0, Lcom/dolphin/browser/t/v;->a:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/dolphin/browser/t/l;->b(Lcom/dolphin/browser/t/l;Ljava/lang/String;)Lcom/dolphin/browser/o/a;

    move-result-object v0

    .line 2064
    invoke-virtual {v0}, Lcom/dolphin/browser/o/a;->c()Z

    move-result v1

    if-nez v1, :cond_0

    .line 2065
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/dolphin/browser/o/a;->a(Z)V

    .line 2066
    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/dolphin/browser/o/a;->setVisibility(I)V

    .line 2068
    :cond_0
    return-void
.end method
