.class final Lcom/twitter/android/dn;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field private synthetic a:Lcom/twitter/android/ProfileFragment;


# direct methods
.method constructor <init>(Lcom/twitter/android/ProfileFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/twitter/android/dn;->a:Lcom/twitter/android/ProfileFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 5

    const/4 v2, 0x1

    iget-object v0, p0, Lcom/twitter/android/dn;->a:Lcom/twitter/android/ProfileFragment;

    iget-object v1, p0, Lcom/twitter/android/dn;->a:Lcom/twitter/android/ProfileFragment;

    iget v1, v1, Lcom/twitter/android/ProfileFragment;->c:I

    invoke-static {v1, v2}, Lcom/twitter/android/provider/ap;->b(II)I

    move-result v1

    iput v1, v0, Lcom/twitter/android/ProfileFragment;->c:I

    iget-object v0, p0, Lcom/twitter/android/dn;->a:Lcom/twitter/android/ProfileFragment;

    const v1, 0x7f0b00d1

    invoke-virtual {v0, v2, v1}, Lcom/twitter/android/ProfileFragment;->a(ZI)V

    iget-object v0, p0, Lcom/twitter/android/dn;->a:Lcom/twitter/android/ProfileFragment;

    iget-object v0, v0, Lcom/twitter/android/ProfileFragment;->j:Lcom/twitter/android/client/e;

    iget-object v1, p0, Lcom/twitter/android/dn;->a:Lcom/twitter/android/ProfileFragment;

    iget-object v1, v1, Lcom/twitter/android/ProfileFragment;->e:Ljava/lang/String;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/twitter/android/dn;->a:Lcom/twitter/android/ProfileFragment;

    iget-object v2, p0, Lcom/twitter/android/dn;->a:Lcom/twitter/android/ProfileFragment;

    iget-wide v2, v2, Lcom/twitter/android/ProfileFragment;->b:J

    iget-object v4, p0, Lcom/twitter/android/dn;->a:Lcom/twitter/android/ProfileFragment;

    iget-object v4, v4, Lcom/twitter/android/ProfileFragment;->e:Ljava/lang/String;

    invoke-virtual {v0, v2, v3, v4}, Lcom/twitter/android/client/e;->b(JLjava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/twitter/android/ProfileFragment;->b(Ljava/lang/String;)V

    :goto_0
    invoke-virtual {v0}, Lcom/twitter/android/client/e;->a()J

    move-result-wide v1

    sget-object v3, Lcom/twitter/android/service/ScribeEvent;->y:Lcom/twitter/android/service/ScribeEvent;

    invoke-virtual {v0, v1, v2, v3}, Lcom/twitter/android/client/e;->a(JLcom/twitter/android/service/ScribeEvent;)V

    return-void

    :cond_0
    iget-object v1, p0, Lcom/twitter/android/dn;->a:Lcom/twitter/android/ProfileFragment;

    iget-object v2, p0, Lcom/twitter/android/dn;->a:Lcom/twitter/android/ProfileFragment;

    iget-wide v2, v2, Lcom/twitter/android/ProfileFragment;->b:J

    const/4 v4, 0x0

    invoke-virtual {v0, v2, v3, v4}, Lcom/twitter/android/client/e;->b(JLjava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/twitter/android/ProfileFragment;->b(Ljava/lang/String;)V

    goto :goto_0
.end method
