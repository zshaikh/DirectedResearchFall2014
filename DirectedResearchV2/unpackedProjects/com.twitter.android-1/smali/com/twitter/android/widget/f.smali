.class final Lcom/twitter/android/widget/f;
.super Landroid/text/style/URLSpan;


# instance fields
.field private a:I

.field private final b:Lcom/twitter/android/widget/o;

.field private final c:Lcom/twitter/android/api/TweetEntities$Url;


# direct methods
.method public constructor <init>(ILcom/twitter/android/widget/o;Lcom/twitter/android/api/TweetEntities$Url;)V
    .locals 1

    iget-object v0, p3, Lcom/twitter/android/api/TweetEntities$Url;->url:Ljava/lang/String;

    invoke-direct {p0, v0}, Landroid/text/style/URLSpan;-><init>(Ljava/lang/String;)V

    iput p1, p0, Lcom/twitter/android/widget/f;->a:I

    iput-object p2, p0, Lcom/twitter/android/widget/f;->b:Lcom/twitter/android/widget/o;

    iput-object p3, p0, Lcom/twitter/android/widget/f;->c:Lcom/twitter/android/api/TweetEntities$Url;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 2

    iget-object v0, p0, Lcom/twitter/android/widget/f;->b:Lcom/twitter/android/widget/o;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/twitter/android/widget/f;->b:Lcom/twitter/android/widget/o;

    iget-object v1, p0, Lcom/twitter/android/widget/f;->c:Lcom/twitter/android/api/TweetEntities$Url;

    invoke-interface {v0, v1}, Lcom/twitter/android/widget/o;->a(Lcom/twitter/android/api/TweetEntities$Url;)V

    :cond_0
    return-void
.end method

.method public final updateDrawState(Landroid/text/TextPaint;)V
    .locals 1

    iget-object v0, p0, Lcom/twitter/android/widget/f;->b:Lcom/twitter/android/widget/o;

    if-nez v0, :cond_0

    iget v0, p0, Lcom/twitter/android/widget/f;->a:I

    invoke-virtual {p1, v0}, Landroid/text/TextPaint;->setColor(I)V

    :goto_0
    return-void

    :cond_0
    iget v0, p1, Landroid/text/TextPaint;->linkColor:I

    invoke-virtual {p1, v0}, Landroid/text/TextPaint;->setColor(I)V

    goto :goto_0
.end method
