.class Lcom/dolphin/browser/search/d/c;
.super Lcom/dolphin/browser/util/f;
.source "SearchRedirectLoader.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/dolphin/browser/util/f",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/util/LinkedHashMap",
        "<",
        "Ljava/lang/String;",
        "Ljava/lang/String;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/dolphin/browser/search/d/b;


# direct methods
.method constructor <init>(Lcom/dolphin/browser/search/d/b;)V
    .locals 0

    .prologue
    .line 45
    iput-object p1, p0, Lcom/dolphin/browser/search/d/c;->a:Lcom/dolphin/browser/search/d/b;

    invoke-direct {p0}, Lcom/dolphin/browser/util/f;-><init>()V

    return-void
.end method


# virtual methods
.method protected bridge synthetic a([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 45
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/dolphin/browser/search/d/c;->a([Ljava/lang/Void;)Ljava/util/LinkedHashMap;

    move-result-object v0

    return-object v0
.end method

.method protected varargs a([Ljava/lang/Void;)Ljava/util/LinkedHashMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/Void;",
            ")",
            "Ljava/util/LinkedHashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 50
    invoke-static {}, Lcom/dolphin/browser/search/d/f;->a()Lcom/dolphin/browser/search/d/f;

    move-result-object v0

    .line 51
    invoke-virtual {v0}, Lcom/dolphin/browser/search/d/f;->b()Ljava/util/LinkedHashMap;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic a(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 45
    check-cast p1, Ljava/util/LinkedHashMap;

    invoke-virtual {p0, p1}, Lcom/dolphin/browser/search/d/c;->a(Ljava/util/LinkedHashMap;)V

    return-void
.end method

.method protected a(Ljava/util/LinkedHashMap;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/LinkedHashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 57
    if-eqz p1, :cond_0

    .line 58
    iget-object v0, p0, Lcom/dolphin/browser/search/d/c;->a:Lcom/dolphin/browser/search/d/b;

    invoke-static {v0, p1}, Lcom/dolphin/browser/search/d/b;->a(Lcom/dolphin/browser/search/d/b;Ljava/util/LinkedHashMap;)Ljava/util/LinkedHashMap;

    .line 59
    iget-object v0, p0, Lcom/dolphin/browser/search/d/c;->a:Lcom/dolphin/browser/search/d/b;

    invoke-static {v0}, Lcom/dolphin/browser/search/d/b;->a(Lcom/dolphin/browser/search/d/b;)V

    .line 63
    :goto_0
    return-void

    .line 61
    :cond_0
    iget-object v0, p0, Lcom/dolphin/browser/search/d/c;->a:Lcom/dolphin/browser/search/d/b;

    iget-object v1, p0, Lcom/dolphin/browser/search/d/c;->a:Lcom/dolphin/browser/search/d/b;

    invoke-virtual {v1}, Lcom/dolphin/browser/search/d/b;->d()Ljava/util/LinkedHashMap;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/dolphin/browser/search/d/b;->a(Lcom/dolphin/browser/search/d/b;Ljava/util/LinkedHashMap;)Ljava/util/LinkedHashMap;

    goto :goto_0
.end method
