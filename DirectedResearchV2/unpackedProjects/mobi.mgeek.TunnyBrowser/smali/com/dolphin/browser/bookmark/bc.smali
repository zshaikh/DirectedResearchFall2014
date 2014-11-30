.class Lcom/dolphin/browser/bookmark/bc;
.super Ljava/lang/Exception;
.source "BookmarkItemSorter.java"


# instance fields
.field a:I

.field final synthetic b:Lcom/dolphin/browser/bookmark/bb;


# direct methods
.method public constructor <init>(Lcom/dolphin/browser/bookmark/bb;I)V
    .locals 0

    .prologue
    .line 186
    iput-object p1, p0, Lcom/dolphin/browser/bookmark/bc;->b:Lcom/dolphin/browser/bookmark/bb;

    invoke-direct {p0}, Ljava/lang/Exception;-><init>()V

    .line 187
    iput p2, p0, Lcom/dolphin/browser/bookmark/bc;->a:I

    .line 188
    return-void
.end method


# virtual methods
.method public getMessage()Ljava/lang/String;
    .locals 2

    .prologue
    .line 192
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "SortException with code: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/dolphin/browser/bookmark/bc;->a:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
