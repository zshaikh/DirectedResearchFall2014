.class Lcom/tokenautocomplete/a;
.super Ljava/lang/Object;
.source "TokenCompleteTextView.java"

# interfaces
.implements Landroid/text/InputFilter;


# instance fields
.field final synthetic a:Lcom/tokenautocomplete/TokenCompleteTextView;


# direct methods
.method constructor <init>(Lcom/tokenautocomplete/TokenCompleteTextView;)V
    .locals 0

    .prologue
    .line 118
    iput-object p1, p0, Lcom/tokenautocomplete/a;->a:Lcom/tokenautocomplete/TokenCompleteTextView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public filter(Ljava/lang/CharSequence;IILandroid/text/Spanned;II)Ljava/lang/CharSequence;
    .locals 2

    .prologue
    .line 123
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x0

    invoke-interface {p1, v0}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v0

    const/16 v1, 0x2c

    if-ne v0, v1, :cond_0

    .line 124
    iget-object v0, p0, Lcom/tokenautocomplete/a;->a:Lcom/tokenautocomplete/TokenCompleteTextView;

    invoke-virtual {v0}, Lcom/tokenautocomplete/TokenCompleteTextView;->performCompletion()V

    .line 125
    const-string v0, ""

    .line 132
    :goto_0
    return-object v0

    .line 129
    :cond_0
    iget-object v0, p0, Lcom/tokenautocomplete/a;->a:Lcom/tokenautocomplete/TokenCompleteTextView;

    invoke-static {v0}, Lcom/tokenautocomplete/TokenCompleteTextView;->a(Lcom/tokenautocomplete/TokenCompleteTextView;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-ge p5, v0, :cond_1

    iget-object v0, p0, Lcom/tokenautocomplete/a;->a:Lcom/tokenautocomplete/TokenCompleteTextView;

    invoke-static {v0}, Lcom/tokenautocomplete/TokenCompleteTextView;->a(Lcom/tokenautocomplete/TokenCompleteTextView;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-ne p6, v0, :cond_1

    .line 130
    iget-object v0, p0, Lcom/tokenautocomplete/a;->a:Lcom/tokenautocomplete/TokenCompleteTextView;

    invoke-static {v0}, Lcom/tokenautocomplete/TokenCompleteTextView;->a(Lcom/tokenautocomplete/TokenCompleteTextView;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p5, p6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 132
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method
