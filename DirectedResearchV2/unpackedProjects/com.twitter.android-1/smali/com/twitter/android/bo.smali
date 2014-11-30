.class final Lcom/twitter/android/bo;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/widget/MultiAutoCompleteTextView$Tokenizer;


# instance fields
.field private synthetic a:Lcom/twitter/android/PostActivity;


# direct methods
.method constructor <init>(Lcom/twitter/android/PostActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/twitter/android/bo;->a:Lcom/twitter/android/PostActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final findTokenEnd(Ljava/lang/CharSequence;I)I
    .locals 4

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    move v0, p2

    :goto_0
    if-ge v0, v1, :cond_1

    invoke-interface {p1, v0}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v2

    const/16 v3, 0x20

    if-ne v2, v3, :cond_0

    :goto_1
    return v0

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    move v0, v1

    goto :goto_1
.end method

.method public final findTokenStart(Ljava/lang/CharSequence;I)I
    .locals 3

    const/16 v2, 0x20

    move v0, p2

    :goto_0
    if-lez v0, :cond_0

    add-int/lit8 v1, v0, -0x1

    invoke-interface {p1, v1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v1

    if-eq v1, v2, :cond_0

    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_0
    :goto_1
    if-ge v0, p2, :cond_1

    invoke-interface {p1, v0}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v1

    if-ne v1, v2, :cond_1

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_1
    if-ge v0, p2, :cond_2

    invoke-interface {p1, v0}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v1

    const/16 v2, 0x40

    if-ne v1, v2, :cond_2

    add-int/lit8 p2, v0, 0x1

    :cond_2
    return p2
.end method

.method public final terminateToken(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;
    .locals 6

    const/4 v1, 0x0

    instance-of v0, p1, Landroid/text/Spanned;

    if-eqz v0, :cond_0

    new-instance v4, Landroid/text/SpannableString;

    invoke-direct {v4, p1}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    move-object v0, p1

    check-cast v0, Landroid/text/Spanned;

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v2

    const-class v3, Ljava/lang/Object;

    move v5, v1

    invoke-static/range {v0 .. v5}, Landroid/text/TextUtils;->copySpansFrom(Landroid/text/Spanned;IILjava/lang/Class;Landroid/text/Spannable;I)V

    iget-object v0, p0, Lcom/twitter/android/bo;->a:Lcom/twitter/android/PostActivity;

    invoke-virtual {v0, v1}, Lcom/twitter/android/PostActivity;->b(Z)V

    :goto_0
    return-object v4

    :cond_0
    iget-object v0, p0, Lcom/twitter/android/bo;->a:Lcom/twitter/android/PostActivity;

    invoke-virtual {v0, v1}, Lcom/twitter/android/PostActivity;->b(Z)V

    move-object v4, p1

    goto :goto_0
.end method
