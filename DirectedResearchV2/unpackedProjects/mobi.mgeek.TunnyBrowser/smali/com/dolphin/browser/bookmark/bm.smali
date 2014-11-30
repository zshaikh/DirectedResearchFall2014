.class Lcom/dolphin/browser/bookmark/bm;
.super Lcom/dolphin/browser/util/f;
.source "BookmarkPathHelper.java"


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
.field final synthetic a:J

.field final synthetic b:I

.field final synthetic c:Lcom/dolphin/browser/bookmark/bn;

.field final synthetic d:Lcom/dolphin/browser/bookmark/bl;


# direct methods
.method constructor <init>(Lcom/dolphin/browser/bookmark/bl;JILcom/dolphin/browser/bookmark/bn;)V
    .locals 0

    .prologue
    .line 39
    iput-object p1, p0, Lcom/dolphin/browser/bookmark/bm;->d:Lcom/dolphin/browser/bookmark/bl;

    iput-wide p2, p0, Lcom/dolphin/browser/bookmark/bm;->a:J

    iput p4, p0, Lcom/dolphin/browser/bookmark/bm;->b:I

    iput-object p5, p0, Lcom/dolphin/browser/bookmark/bm;->c:Lcom/dolphin/browser/bookmark/bn;

    invoke-direct {p0}, Lcom/dolphin/browser/util/f;-><init>()V

    return-void
.end method


# virtual methods
.method protected bridge synthetic a([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 39
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/dolphin/browser/bookmark/bm;->a([Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method protected varargs a([Ljava/lang/Void;)Ljava/lang/Void;
    .locals 4

    .prologue
    .line 42
    iget-object v0, p0, Lcom/dolphin/browser/bookmark/bm;->d:Lcom/dolphin/browser/bookmark/bl;

    iget-wide v1, p0, Lcom/dolphin/browser/bookmark/bm;->a:J

    iget v3, p0, Lcom/dolphin/browser/bookmark/bm;->b:I

    invoke-static {v0, v1, v2, v3}, Lcom/dolphin/browser/bookmark/bl;->a(Lcom/dolphin/browser/bookmark/bl;JI)V

    .line 43
    const/4 v0, 0x0

    return-object v0
.end method

.method protected bridge synthetic a(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 39
    check-cast p1, Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/dolphin/browser/bookmark/bm;->a(Ljava/lang/Void;)V

    return-void
.end method

.method protected a(Ljava/lang/Void;)V
    .locals 2

    .prologue
    .line 48
    iget-object v0, p0, Lcom/dolphin/browser/bookmark/bm;->c:Lcom/dolphin/browser/bookmark/bn;

    if-eqz v0, :cond_0

    .line 49
    iget-object v0, p0, Lcom/dolphin/browser/bookmark/bm;->c:Lcom/dolphin/browser/bookmark/bn;

    iget-object v1, p0, Lcom/dolphin/browser/bookmark/bm;->d:Lcom/dolphin/browser/bookmark/bl;

    invoke-virtual {v1}, Lcom/dolphin/browser/bookmark/bl;->d()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/dolphin/browser/bookmark/bn;->a(Ljava/lang/String;)V

    .line 51
    :cond_0
    return-void
.end method
