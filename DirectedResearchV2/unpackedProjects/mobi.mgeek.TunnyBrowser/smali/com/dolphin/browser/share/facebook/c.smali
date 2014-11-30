.class Lcom/dolphin/browser/share/facebook/c;
.super Ljava/lang/Object;
.source "FacebookShareViewContent.java"

# interfaces
.implements Landroid/text/TextWatcher;


# instance fields
.field final synthetic a:Lcom/dolphin/browser/share/facebook/FacebookShareViewContent;

.field private b:I

.field private c:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/dolphin/browser/share/facebook/FacebookShareViewContent;)V
    .locals 0

    .prologue
    .line 149
    iput-object p1, p0, Lcom/dolphin/browser/share/facebook/c;->a:Lcom/dolphin/browser/share/facebook/FacebookShareViewContent;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 7

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 181
    iget-object v0, p0, Lcom/dolphin/browser/share/facebook/c;->a:Lcom/dolphin/browser/share/facebook/FacebookShareViewContent;

    invoke-static {v0}, Lcom/dolphin/browser/share/facebook/FacebookShareViewContent;->a(Lcom/dolphin/browser/share/facebook/FacebookShareViewContent;)Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/EditText;->getLayout()Landroid/text/Layout;

    move-result-object v0

    .line 182
    if-nez v0, :cond_1

    .line 225
    :cond_0
    :goto_0
    return-void

    .line 186
    :cond_1
    iget-object v3, p0, Lcom/dolphin/browser/share/facebook/c;->a:Lcom/dolphin/browser/share/facebook/FacebookShareViewContent;

    invoke-static {v3}, Lcom/dolphin/browser/share/facebook/FacebookShareViewContent;->a(Lcom/dolphin/browser/share/facebook/FacebookShareViewContent;)Landroid/widget/EditText;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/EditText;->getSelectionEnd()I

    move-result v3

    .line 187
    invoke-virtual {v0, v3}, Landroid/text/Layout;->getLineForOffset(I)I

    move-result v4

    .line 188
    invoke-virtual {v0, v4}, Landroid/text/Layout;->getLineBottom(I)I

    move-result v5

    .line 189
    if-ne v4, v1, :cond_2

    .line 190
    iput v5, p0, Lcom/dolphin/browser/share/facebook/c;->b:I

    .line 193
    :cond_2
    iget-object v0, p0, Lcom/dolphin/browser/share/facebook/c;->a:Lcom/dolphin/browser/share/facebook/FacebookShareViewContent;

    invoke-static {v0}, Lcom/dolphin/browser/share/facebook/FacebookShareViewContent;->c(Lcom/dolphin/browser/share/facebook/FacebookShareViewContent;)Lcom/dolphin/browser/share/VerticalFreeScrollView;

    move-result-object v4

    iget-object v0, p0, Lcom/dolphin/browser/share/facebook/c;->a:Lcom/dolphin/browser/share/facebook/FacebookShareViewContent;

    invoke-static {v0}, Lcom/dolphin/browser/share/facebook/FacebookShareViewContent;->a(Lcom/dolphin/browser/share/facebook/FacebookShareViewContent;)Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/EditText;->getHeight()I

    move-result v0

    iget-object v6, p0, Lcom/dolphin/browser/share/facebook/c;->a:Lcom/dolphin/browser/share/facebook/FacebookShareViewContent;

    invoke-static {v6}, Lcom/dolphin/browser/share/facebook/FacebookShareViewContent;->b(Lcom/dolphin/browser/share/facebook/FacebookShareViewContent;)Lcom/dolphin/browser/share/Spacer;

    move-result-object v6

    invoke-virtual {v6}, Lcom/dolphin/browser/share/Spacer;->getHeight()I

    move-result v6

    if-le v0, v6, :cond_4

    move v0, v1

    :goto_1
    invoke-virtual {v4, v0}, Lcom/dolphin/browser/share/VerticalFreeScrollView;->a(Z)V

    .line 197
    invoke-static {}, Lcom/dolphin/browser/share/facebook/a;->b()Lcom/dolphin/browser/share/facebook/a;

    move-result-object v0

    invoke-interface {p1, v2, v3}, Landroid/text/Editable;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/dolphin/browser/share/facebook/a;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 199
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_8

    .line 200
    invoke-static {}, Lcom/dolphin/browser/share/facebook/a;->b()Lcom/dolphin/browser/share/facebook/a;

    move-result-object v3

    .line 201
    iget-object v4, p0, Lcom/dolphin/browser/share/facebook/c;->a:Lcom/dolphin/browser/share/facebook/FacebookShareViewContent;

    iget-object v6, p0, Lcom/dolphin/browser/share/facebook/c;->a:Lcom/dolphin/browser/share/facebook/FacebookShareViewContent;

    invoke-static {v6}, Lcom/dolphin/browser/share/facebook/FacebookShareViewContent;->a(Lcom/dolphin/browser/share/facebook/FacebookShareViewContent;)Landroid/widget/EditText;

    move-result-object v6

    invoke-virtual {v4, v6}, Lcom/dolphin/browser/share/facebook/FacebookShareViewContent;->a(Landroid/widget/EditText;)Ljava/util/List;

    move-result-object v4

    .line 202
    invoke-virtual {v3, v0, v4}, Lcom/dolphin/browser/share/facebook/a;->a(Ljava/lang/String;Ljava/util/List;)V

    .line 203
    invoke-virtual {v3}, Lcom/dolphin/browser/share/facebook/a;->f()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 207
    :goto_2
    iget-object v0, p0, Lcom/dolphin/browser/share/facebook/c;->a:Lcom/dolphin/browser/share/facebook/FacebookShareViewContent;

    invoke-static {v0}, Lcom/dolphin/browser/share/facebook/FacebookShareViewContent;->d(Lcom/dolphin/browser/share/facebook/FacebookShareViewContent;)Lcom/dolphin/browser/share/h;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 208
    if-eqz v1, :cond_3

    .line 209
    invoke-static {}, Lcom/dolphin/browser/share/facebook/FacebookShareViewContent;->c()I

    move-result v3

    .line 210
    iget v0, p0, Lcom/dolphin/browser/share/facebook/c;->b:I

    if-nez v0, :cond_6

    invoke-static {}, Lcom/dolphin/browser/share/facebook/FacebookShareViewContent;->d()I

    move-result v0

    .line 212
    :goto_3
    if-le v5, v0, :cond_7

    .line 215
    iget-object v4, p0, Lcom/dolphin/browser/share/facebook/c;->a:Lcom/dolphin/browser/share/facebook/FacebookShareViewContent;

    invoke-static {v4}, Lcom/dolphin/browser/share/facebook/FacebookShareViewContent;->c(Lcom/dolphin/browser/share/facebook/FacebookShareViewContent;)Lcom/dolphin/browser/share/VerticalFreeScrollView;

    move-result-object v4

    sub-int/2addr v5, v0

    invoke-virtual {v4, v2, v5}, Lcom/dolphin/browser/share/VerticalFreeScrollView;->scrollTo(II)V

    .line 216
    add-int/2addr v0, v3

    .line 220
    :goto_4
    iget-object v3, p0, Lcom/dolphin/browser/share/facebook/c;->a:Lcom/dolphin/browser/share/facebook/FacebookShareViewContent;

    invoke-static {v3}, Lcom/dolphin/browser/share/facebook/FacebookShareViewContent;->d(Lcom/dolphin/browser/share/facebook/FacebookShareViewContent;)Lcom/dolphin/browser/share/h;

    move-result-object v3

    invoke-interface {v3, v2, v0}, Lcom/dolphin/browser/share/h;->a(II)V

    .line 222
    :cond_3
    iget-object v0, p0, Lcom/dolphin/browser/share/facebook/c;->a:Lcom/dolphin/browser/share/facebook/FacebookShareViewContent;

    invoke-static {v0}, Lcom/dolphin/browser/share/facebook/FacebookShareViewContent;->d(Lcom/dolphin/browser/share/facebook/FacebookShareViewContent;)Lcom/dolphin/browser/share/h;

    move-result-object v0

    invoke-interface {v0, v1}, Lcom/dolphin/browser/share/h;->a(Z)V

    goto/16 :goto_0

    :cond_4
    move v0, v2

    .line 193
    goto :goto_1

    :cond_5
    move v1, v2

    .line 203
    goto :goto_2

    .line 210
    :cond_6
    iget v0, p0, Lcom/dolphin/browser/share/facebook/c;->b:I

    goto :goto_3

    .line 218
    :cond_7
    add-int v0, v3, v5

    goto :goto_4

    :cond_8
    move v1, v2

    goto :goto_2
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    .prologue
    .line 177
    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 2

    .prologue
    .line 157
    iget-object v0, p0, Lcom/dolphin/browser/share/facebook/c;->c:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/dolphin/browser/share/facebook/c;->c:Ljava/lang/String;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 158
    :cond_0
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/dolphin/browser/share/facebook/c;->c:Ljava/lang/String;

    .line 162
    if-lez p3, :cond_2

    .line 163
    add-int v0, p2, p3

    .line 168
    :goto_0
    if-le v0, p2, :cond_1

    .line 169
    iget-object v1, p0, Lcom/dolphin/browser/share/facebook/c;->a:Lcom/dolphin/browser/share/facebook/FacebookShareViewContent;

    invoke-static {v1, p2, v0}, Lcom/dolphin/browser/share/facebook/FacebookShareViewContent;->a(Lcom/dolphin/browser/share/facebook/FacebookShareViewContent;II)V

    .line 172
    :cond_1
    return-void

    .line 164
    :cond_2
    if-lez p4, :cond_3

    .line 165
    add-int v0, p2, p4

    goto :goto_0

    :cond_3
    move v0, p2

    goto :goto_0
.end method
