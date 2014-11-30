.class final Lcom/twitter/android/dr;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field private synthetic a:Lcom/twitter/android/ProfileFragment;


# direct methods
.method constructor <init>(Lcom/twitter/android/ProfileFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/twitter/android/dr;->a:Lcom/twitter/android/ProfileFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 4

    iget-object v0, p0, Lcom/twitter/android/dr;->a:Lcom/twitter/android/ProfileFragment;

    iget-object v0, v0, Lcom/twitter/android/ProfileFragment;->e:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/twitter/android/dr;->a:Lcom/twitter/android/ProfileFragment;

    iget-object v0, v0, Lcom/twitter/android/ProfileFragment;->j:Lcom/twitter/android/client/e;

    iget-object v1, p0, Lcom/twitter/android/dr;->a:Lcom/twitter/android/ProfileFragment;

    iget-wide v1, v1, Lcom/twitter/android/ProfileFragment;->b:J

    iget-object v3, p0, Lcom/twitter/android/dr;->a:Lcom/twitter/android/ProfileFragment;

    iget-object v3, v3, Lcom/twitter/android/ProfileFragment;->e:Ljava/lang/String;

    invoke-virtual {v0, v1, v2, v3}, Lcom/twitter/android/client/e;->e(JLjava/lang/String;)Ljava/lang/String;

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/twitter/android/dr;->a:Lcom/twitter/android/ProfileFragment;

    iget-object v0, v0, Lcom/twitter/android/ProfileFragment;->j:Lcom/twitter/android/client/e;

    iget-object v1, p0, Lcom/twitter/android/dr;->a:Lcom/twitter/android/ProfileFragment;

    iget-wide v1, v1, Lcom/twitter/android/ProfileFragment;->b:J

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Lcom/twitter/android/client/e;->e(JLjava/lang/String;)Ljava/lang/String;

    goto :goto_0
.end method
