.class Lcom/dolphin/browser/share/a/u;
.super Ljava/lang/Object;
.source "EvernoteTagListAdapter.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator",
        "<",
        "Lcom/c/b/c/x;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/dolphin/browser/share/a/t;


# direct methods
.method constructor <init>(Lcom/dolphin/browser/share/a/t;)V
    .locals 0

    .prologue
    .line 56
    iput-object p1, p0, Lcom/dolphin/browser/share/a/u;->a:Lcom/dolphin/browser/share/a/t;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/c/b/c/x;Lcom/c/b/c/x;)I
    .locals 2

    .prologue
    .line 60
    invoke-virtual {p1}, Lcom/c/b/c/x;->c()Ljava/lang/String;

    move-result-object v0

    .line 61
    if-nez v0, :cond_0

    .line 62
    const-string v0, ""

    .line 65
    :cond_0
    invoke-virtual {p2}, Lcom/c/b/c/x;->c()Ljava/lang/String;

    move-result-object v1

    .line 66
    if-nez v1, :cond_1

    .line 67
    const-string v1, ""

    .line 70
    :cond_1
    invoke-virtual {v0, v1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1

    .prologue
    .line 56
    check-cast p1, Lcom/c/b/c/x;

    check-cast p2, Lcom/c/b/c/x;

    invoke-virtual {p0, p1, p2}, Lcom/dolphin/browser/share/a/u;->a(Lcom/c/b/c/x;Lcom/c/b/c/x;)I

    move-result v0

    return v0
.end method
