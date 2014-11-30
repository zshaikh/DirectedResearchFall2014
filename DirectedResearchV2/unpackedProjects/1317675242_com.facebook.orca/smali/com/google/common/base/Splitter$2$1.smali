.class Lcom/google/common/base/Splitter$2$1;
.super Lcom/google/common/base/Splitter$SplittingIterator;
.source "Splitter.java"


# instance fields
.field final synthetic this$0:Lcom/google/common/base/Splitter$2;


# direct methods
.method constructor <init>(Lcom/google/common/base/Splitter$2;Lcom/google/common/base/Splitter;Ljava/lang/CharSequence;)V
    .locals 0

    .prologue
    .line 168
    iput-object p1, p0, Lcom/google/common/base/Splitter$2$1;->this$0:Lcom/google/common/base/Splitter$2;

    invoke-direct {p0, p2, p3}, Lcom/google/common/base/Splitter$SplittingIterator;-><init>(Lcom/google/common/base/Splitter;Ljava/lang/CharSequence;)V

    return-void
.end method


# virtual methods
.method public separatorEnd(I)I
    .locals 1

    .prologue
    .line 186
    iget-object v0, p0, Lcom/google/common/base/Splitter$2$1;->this$0:Lcom/google/common/base/Splitter$2;

    iget-object v0, v0, Lcom/google/common/base/Splitter$2;->val$separator:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    add-int/2addr v0, p1

    return v0
.end method

.method public separatorStart(I)I
    .locals 6

    .prologue
    .line 170
    iget-object v0, p0, Lcom/google/common/base/Splitter$2$1;->this$0:Lcom/google/common/base/Splitter$2;

    iget-object v0, v0, Lcom/google/common/base/Splitter$2;->val$separator:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    .line 173
    iget-object v1, p0, Lcom/google/common/base/Splitter$2$1;->toSplit:Ljava/lang/CharSequence;

    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    sub-int/2addr v1, v0

    move v2, p1

    .line 174
    :goto_0
    if-gt v2, v1, :cond_2

    .line 175
    const/4 v3, 0x0

    :goto_1
    if-ge v3, v0, :cond_1

    .line 176
    iget-object v4, p0, Lcom/google/common/base/Splitter$2$1;->toSplit:Ljava/lang/CharSequence;

    add-int v5, v3, v2

    invoke-interface {v4, v5}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v4

    iget-object v5, p0, Lcom/google/common/base/Splitter$2$1;->this$0:Lcom/google/common/base/Splitter$2;

    iget-object v5, v5, Lcom/google/common/base/Splitter$2;->val$separator:Ljava/lang/String;

    invoke-virtual {v5, v3}, Ljava/lang/String;->charAt(I)C

    move-result v5

    if-eq v4, v5, :cond_0

    .line 174
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 175
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_1
    move v0, v2

    .line 182
    :goto_2
    return v0

    :cond_2
    const/4 v0, -0x1

    goto :goto_2
.end method
