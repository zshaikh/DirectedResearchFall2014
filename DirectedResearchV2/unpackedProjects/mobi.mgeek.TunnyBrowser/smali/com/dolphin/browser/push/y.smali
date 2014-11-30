.class Lcom/dolphin/browser/push/y;
.super Lcom/dolphin/browser/util/f;
.source "PushMessageDispatcher.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/dolphin/browser/util/f",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/dolphin/browser/push/v;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic b:Lcom/dolphin/browser/push/w;


# direct methods
.method constructor <init>(Lcom/dolphin/browser/push/w;Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/dolphin/browser/push/v;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 50
    iput-object p1, p0, Lcom/dolphin/browser/push/y;->b:Lcom/dolphin/browser/push/w;

    invoke-direct {p0}, Lcom/dolphin/browser/util/f;-><init>()V

    .line 52
    iput-object p2, p0, Lcom/dolphin/browser/push/y;->a:Ljava/util/List;

    .line 53
    return-void
.end method


# virtual methods
.method protected bridge synthetic a([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 46
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/dolphin/browser/push/y;->a([Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method protected varargs a([Ljava/lang/Void;)Ljava/lang/Void;
    .locals 3

    .prologue
    .line 58
    iget-object v0, p0, Lcom/dolphin/browser/push/y;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/dolphin/browser/push/v;

    .line 59
    invoke-static {v0}, Lcom/dolphin/browser/push/b/r;->a(Lcom/dolphin/browser/push/v;)Lcom/dolphin/browser/push/b/j;

    move-result-object v2

    .line 60
    if-eqz v2, :cond_0

    .line 61
    invoke-virtual {v2, v0}, Lcom/dolphin/browser/push/b/j;->a(Lcom/dolphin/browser/push/v;)V

    goto :goto_0

    .line 64
    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method
