.class public Lcom/facebook/orca/common/util/StyledStringBuilder;
.super Ljava/lang/Object;
.source "StyledStringBuilder.java"


# instance fields
.field private final a:Landroid/content/res/Resources;

.field private b:Landroid/text/SpannableStringBuilder;

.field private c:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList",
            "<",
            "Lcom/facebook/orca/common/util/StyledStringBuilder$SpanStart;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/res/Resources;)V
    .locals 1

    .prologue
    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    new-instance v0, Landroid/text/SpannableStringBuilder;

    invoke-direct {v0}, Landroid/text/SpannableStringBuilder;-><init>()V

    iput-object v0, p0, Lcom/facebook/orca/common/util/StyledStringBuilder;->b:Landroid/text/SpannableStringBuilder;

    .line 37
    invoke-static {}, Lcom/google/common/collect/Lists;->b()Ljava/util/LinkedList;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/orca/common/util/StyledStringBuilder;->c:Ljava/util/LinkedList;

    .line 40
    iput-object p1, p0, Lcom/facebook/orca/common/util/StyledStringBuilder;->a:Landroid/content/res/Resources;

    .line 41
    return-void
.end method


# virtual methods
.method public a()Lcom/facebook/orca/common/util/StyledStringBuilder;
    .locals 5

    .prologue
    .line 84
    iget-object v0, p0, Lcom/facebook/orca/common/util/StyledStringBuilder;->c:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-static {v0}, Lcom/google/common/base/Preconditions;->checkState(Z)V

    .line 85
    iget-object v0, p0, Lcom/facebook/orca/common/util/StyledStringBuilder;->c:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->removeFirst()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/orca/common/util/StyledStringBuilder$SpanStart;

    .line 86
    iget-object v1, p0, Lcom/facebook/orca/common/util/StyledStringBuilder;->b:Landroid/text/SpannableStringBuilder;

    iget-object v2, v0, Lcom/facebook/orca/common/util/StyledStringBuilder$SpanStart;->b:Ljava/lang/Object;

    iget v3, v0, Lcom/facebook/orca/common/util/StyledStringBuilder$SpanStart;->a:I

    iget-object v4, p0, Lcom/facebook/orca/common/util/StyledStringBuilder;->b:Landroid/text/SpannableStringBuilder;

    invoke-virtual {v4}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v4

    iget v0, v0, Lcom/facebook/orca/common/util/StyledStringBuilder$SpanStart;->c:I

    invoke-virtual {v1, v2, v3, v4, v0}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 87
    return-object p0

    .line 84
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public a(I)Lcom/facebook/orca/common/util/StyledStringBuilder;
    .locals 2

    .prologue
    .line 61
    iget-object v0, p0, Lcom/facebook/orca/common/util/StyledStringBuilder;->b:Landroid/text/SpannableStringBuilder;

    iget-object v1, p0, Lcom/facebook/orca/common/util/StyledStringBuilder;->a:Landroid/content/res/Resources;

    invoke-virtual {v1, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 62
    return-object p0
.end method

.method public a(Ljava/lang/Object;I)Lcom/facebook/orca/common/util/StyledStringBuilder;
    .locals 3

    .prologue
    .line 74
    iget-object v0, p0, Lcom/facebook/orca/common/util/StyledStringBuilder;->c:Ljava/util/LinkedList;

    new-instance v1, Lcom/facebook/orca/common/util/StyledStringBuilder$SpanStart;

    iget-object v2, p0, Lcom/facebook/orca/common/util/StyledStringBuilder;->b:Landroid/text/SpannableStringBuilder;

    invoke-virtual {v2}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v2

    invoke-direct {v1, v2, p1, p2}, Lcom/facebook/orca/common/util/StyledStringBuilder$SpanStart;-><init>(ILjava/lang/Object;I)V

    invoke-virtual {v0, v1}, Ljava/util/LinkedList;->addFirst(Ljava/lang/Object;)V

    .line 75
    return-object p0
.end method

.method public a(Ljava/lang/String;)Lcom/facebook/orca/common/util/StyledStringBuilder;
    .locals 1

    .prologue
    .line 50
    iget-object v0, p0, Lcom/facebook/orca/common/util/StyledStringBuilder;->b:Landroid/text/SpannableStringBuilder;

    invoke-virtual {v0, p1}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 51
    return-object p0
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;I)Lcom/facebook/orca/common/util/StyledStringBuilder;
    .locals 3

    .prologue
    .line 103
    iget-object v0, p0, Lcom/facebook/orca/common/util/StyledStringBuilder;->c:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->isEmpty()Z

    move-result v0

    invoke-static {v0}, Lcom/google/common/base/Preconditions;->checkState(Z)V

    .line 104
    invoke-static {p1}, Ljava/util/regex/Pattern;->quote(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    .line 105
    iget-object v1, p0, Lcom/facebook/orca/common/util/StyledStringBuilder;->b:Landroid/text/SpannableStringBuilder;

    invoke-virtual {v0, v1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    .line 106
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->find()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 107
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->start()I

    move-result v1

    .line 108
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->end()I

    move-result v0

    .line 109
    iget-object v2, p0, Lcom/facebook/orca/common/util/StyledStringBuilder;->b:Landroid/text/SpannableStringBuilder;

    invoke-virtual {v2, v1, v0, p2}, Landroid/text/SpannableStringBuilder;->replace(IILjava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 110
    iget-object v0, p0, Lcom/facebook/orca/common/util/StyledStringBuilder;->b:Landroid/text/SpannableStringBuilder;

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v2

    add-int/2addr v2, v1

    invoke-virtual {v0, p3, v1, v2, p4}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 112
    :cond_0
    return-object p0
.end method

.method public b()Landroid/text/SpannableString;
    .locals 2

    .prologue
    .line 121
    new-instance v0, Landroid/text/SpannableString;

    iget-object v1, p0, Lcom/facebook/orca/common/util/StyledStringBuilder;->b:Landroid/text/SpannableStringBuilder;

    invoke-direct {v0, v1}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    return-object v0
.end method
