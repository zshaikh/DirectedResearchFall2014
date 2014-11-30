.class Lcom/tokenautocomplete/e;
.super Lcom/tokenautocomplete/p;
.source "TokenCompleteTextView.java"


# instance fields
.field public a:Ljava/lang/String;

.field final synthetic b:Lcom/tokenautocomplete/TokenCompleteTextView;

.field private e:I


# direct methods
.method public constructor <init>(Lcom/tokenautocomplete/TokenCompleteTextView;ILandroid/content/Context;III)V
    .locals 3

    .prologue
    .line 827
    iput-object p1, p0, Lcom/tokenautocomplete/e;->b:Lcom/tokenautocomplete/TokenCompleteTextView;

    .line 828
    new-instance v0, Landroid/widget/TextView;

    invoke-direct {v0, p3}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    invoke-direct {p0, p1, v0}, Lcom/tokenautocomplete/p;-><init>(Lcom/tokenautocomplete/TokenCompleteTextView;Landroid/view/View;)V

    .line 824
    const-string v0, ""

    iput-object v0, p0, Lcom/tokenautocomplete/e;->a:Ljava/lang/String;

    .line 829
    iget-object v0, p0, Lcom/tokenautocomplete/e;->c:Landroid/view/View;

    check-cast v0, Landroid/widget/TextView;

    .line 830
    invoke-virtual {v0, p4}, Landroid/widget/TextView;->setTextColor(I)V

    .line 831
    const/4 v1, 0x0

    int-to-float v2, p5

    invoke-virtual {v0, v1, v2}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 833
    invoke-virtual {v0, p6}, Landroid/widget/TextView;->setMinimumWidth(I)V

    .line 834
    invoke-virtual {p0, p2}, Lcom/tokenautocomplete/e;->a(I)V

    .line 835
    return-void
.end method


# virtual methods
.method public a(I)V
    .locals 2

    .prologue
    .line 838
    iput p1, p0, Lcom/tokenautocomplete/e;->e:I

    .line 839
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "+"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/tokenautocomplete/e;->e:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tokenautocomplete/e;->a:Ljava/lang/String;

    .line 840
    iget-object v0, p0, Lcom/tokenautocomplete/e;->c:Landroid/view/View;

    check-cast v0, Landroid/widget/TextView;

    iget-object v1, p0, Lcom/tokenautocomplete/e;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 841
    return-void
.end method
