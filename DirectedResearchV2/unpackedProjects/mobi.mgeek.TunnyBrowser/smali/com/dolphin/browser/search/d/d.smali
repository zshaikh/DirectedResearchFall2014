.class Lcom/dolphin/browser/search/d/d;
.super Lcom/dolphin/browser/util/f;
.source "SearchRedirectLoader.java"


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
.field final synthetic a:Lcom/dolphin/browser/search/d/b;


# direct methods
.method constructor <init>(Lcom/dolphin/browser/search/d/b;)V
    .locals 0

    .prologue
    .line 70
    iput-object p1, p0, Lcom/dolphin/browser/search/d/d;->a:Lcom/dolphin/browser/search/d/b;

    invoke-direct {p0}, Lcom/dolphin/browser/util/f;-><init>()V

    return-void
.end method


# virtual methods
.method protected bridge synthetic a([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 70
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/dolphin/browser/search/d/d;->a([Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method protected varargs a([Ljava/lang/Void;)Ljava/lang/Void;
    .locals 1

    .prologue
    .line 75
    iget-object v0, p0, Lcom/dolphin/browser/search/d/d;->a:Lcom/dolphin/browser/search/d/b;

    invoke-static {v0}, Lcom/dolphin/browser/search/d/b;->b(Lcom/dolphin/browser/search/d/b;)V

    .line 76
    const/4 v0, 0x0

    return-object v0
.end method
