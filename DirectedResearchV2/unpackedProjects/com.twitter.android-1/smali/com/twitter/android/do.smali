.class final Lcom/twitter/android/do;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field private synthetic a:Lcom/twitter/android/ProfileFragment;


# direct methods
.method constructor <init>(Lcom/twitter/android/ProfileFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/twitter/android/do;->a:Lcom/twitter/android/ProfileFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 4

    iget-object v0, p0, Lcom/twitter/android/do;->a:Lcom/twitter/android/ProfileFragment;

    iget-object v0, v0, Lcom/twitter/android/ProfileFragment;->e:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/twitter/android/do;->a:Lcom/twitter/android/ProfileFragment;

    iget-object v0, v0, Lcom/twitter/android/ProfileFragment;->j:Lcom/twitter/android/client/e;

    iget-object v1, p0, Lcom/twitter/android/do;->a:Lcom/twitter/android/ProfileFragment;

    iget-wide v1, v1, Lcom/twitter/android/ProfileFragment;->b:J

    iget-object v3, p0, Lcom/twitter/android/do;->a:Lcom/twitter/android/ProfileFragment;

    iget-object v3, v3, Lcom/twitter/android/ProfileFragment;->e:Ljava/lang/String;

    invoke-virtual {v0, v1, v2, v3}, Lcom/twitter/android/client/e;->c(JLjava/lang/String;)Ljava/lang/String;

    :goto_0
    iget-object v0, p0, Lcom/twitter/android/do;->a:Lcom/twitter/android/ProfileFragment;

    iget-object v1, p0, Lcom/twitter/android/do;->a:Lcom/twitter/android/ProfileFragment;

    iget v1, v1, Lcom/twitter/android/ProfileFragment;->c:I

    const/4 v2, 0x4

    invoke-static {v1, v2}, Lcom/twitter/android/provider/ap;->a(II)I

    move-result v1

    iput v1, v0, Lcom/twitter/android/ProfileFragment;->c:I

    iget-object v0, p0, Lcom/twitter/android/do;->a:Lcom/twitter/android/ProfileFragment;

    const/4 v1, 0x1

    const v2, 0x7f0b00d1

    invoke-virtual {v0, v1, v2}, Lcom/twitter/android/ProfileFragment;->a(ZI)V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/twitter/android/do;->a:Lcom/twitter/android/ProfileFragment;

    iget-object v0, v0, Lcom/twitter/android/ProfileFragment;->j:Lcom/twitter/android/client/e;

    iget-object v1, p0, Lcom/twitter/android/do;->a:Lcom/twitter/android/ProfileFragment;

    iget-wide v1, v1, Lcom/twitter/android/ProfileFragment;->b:J

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Lcom/twitter/android/client/e;->c(JLjava/lang/String;)Ljava/lang/String;

    goto :goto_0
.end method
