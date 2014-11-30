.class Lcom/dolphin/browser/launcher/as;
.super Ljava/lang/Object;
.source "Folder.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator",
        "<",
        "Lcom/dolphin/browser/launcher/bi;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/dolphin/browser/launcher/Folder;


# direct methods
.method constructor <init>(Lcom/dolphin/browser/launcher/Folder;)V
    .locals 0

    .prologue
    .line 661
    iput-object p1, p0, Lcom/dolphin/browser/launcher/as;->a:Lcom/dolphin/browser/launcher/Folder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/dolphin/browser/launcher/bi;Lcom/dolphin/browser/launcher/bi;)I
    .locals 2

    .prologue
    .line 665
    iget v0, p1, Lcom/dolphin/browser/launcher/bi;->j:I

    iget v1, p2, Lcom/dolphin/browser/launcher/bi;->j:I

    if-eq v0, v1, :cond_0

    .line 666
    iget v0, p1, Lcom/dolphin/browser/launcher/bi;->j:I

    iget v1, p2, Lcom/dolphin/browser/launcher/bi;->j:I

    sub-int/2addr v0, v1

    .line 668
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/dolphin/browser/launcher/as;->a:Lcom/dolphin/browser/launcher/Folder;

    iget-object v0, v0, Lcom/dolphin/browser/launcher/Folder;->b:Lcom/dolphin/browser/launcher/be;

    iget-object v0, v0, Lcom/dolphin/browser/launcher/be;->c:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v0

    iget-object v1, p0, Lcom/dolphin/browser/launcher/as;->a:Lcom/dolphin/browser/launcher/Folder;

    iget-object v1, v1, Lcom/dolphin/browser/launcher/Folder;->b:Lcom/dolphin/browser/launcher/be;

    iget-object v1, v1, Lcom/dolphin/browser/launcher/be;->c:Ljava/util/ArrayList;

    invoke-virtual {v1, p2}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v1

    sub-int/2addr v0, v1

    goto :goto_0
.end method

.method public synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1

    .prologue
    .line 661
    check-cast p1, Lcom/dolphin/browser/launcher/bi;

    check-cast p2, Lcom/dolphin/browser/launcher/bi;

    invoke-virtual {p0, p1, p2}, Lcom/dolphin/browser/launcher/as;->a(Lcom/dolphin/browser/launcher/bi;Lcom/dolphin/browser/launcher/bi;)I

    move-result v0

    return v0
.end method
