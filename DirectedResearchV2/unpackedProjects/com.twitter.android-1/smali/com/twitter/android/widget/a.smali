.class final Lcom/twitter/android/widget/a;
.super Landroid/text/style/ClickableSpan;


# instance fields
.field private final a:Ljava/lang/String;

.field private final b:Lcom/twitter/android/widget/o;

.field private final c:I


# direct methods
.method public constructor <init>(ILjava/lang/String;Lcom/twitter/android/widget/o;)V
    .locals 0

    invoke-direct {p0}, Landroid/text/style/ClickableSpan;-><init>()V

    iput p1, p0, Lcom/twitter/android/widget/a;->c:I

    iput-object p2, p0, Lcom/twitter/android/widget/a;->a:Ljava/lang/String;

    iput-object p3, p0, Lcom/twitter/android/widget/a;->b:Lcom/twitter/android/widget/o;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 2

    iget-object v0, p0, Lcom/twitter/android/widget/a;->b:Lcom/twitter/android/widget/o;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/twitter/android/widget/a;->b:Lcom/twitter/android/widget/o;

    iget-object v1, p0, Lcom/twitter/android/widget/a;->a:Ljava/lang/String;

    invoke-interface {v0, v1}, Lcom/twitter/android/widget/o;->a(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public final updateDrawState(Landroid/text/TextPaint;)V
    .locals 1

    iget-object v0, p0, Lcom/twitter/android/widget/a;->b:Lcom/twitter/android/widget/o;

    if-nez v0, :cond_0

    iget v0, p0, Lcom/twitter/android/widget/a;->c:I

    invoke-virtual {p1, v0}, Landroid/text/TextPaint;->setColor(I)V

    :goto_0
    return-void

    :cond_0
    iget v0, p1, Landroid/text/TextPaint;->linkColor:I

    invoke-virtual {p1, v0}, Landroid/text/TextPaint;->setColor(I)V

    goto :goto_0
.end method
