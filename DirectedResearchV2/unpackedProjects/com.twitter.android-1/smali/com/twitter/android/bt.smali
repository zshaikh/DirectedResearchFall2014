.class final Lcom/twitter/android/bt;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field private synthetic a:Lcom/twitter/android/UsersFragment;


# direct methods
.method constructor <init>(Lcom/twitter/android/UsersFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/twitter/android/bt;->a:Lcom/twitter/android/UsersFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 7

    iget-object v6, p0, Lcom/twitter/android/bt;->a:Lcom/twitter/android/UsersFragment;

    iget-object v0, p0, Lcom/twitter/android/bt;->a:Lcom/twitter/android/UsersFragment;

    iget-object v0, v0, Lcom/twitter/android/UsersFragment;->j:Lcom/twitter/android/client/e;

    const/4 v1, 0x4

    iget-object v2, p0, Lcom/twitter/android/bt;->a:Lcom/twitter/android/UsersFragment;

    iget-wide v2, v2, Lcom/twitter/android/UsersFragment;->c:J

    iget-object v4, p0, Lcom/twitter/android/bt;->a:Lcom/twitter/android/UsersFragment;

    iget-wide v4, v4, Lcom/twitter/android/UsersFragment;->a:J

    invoke-virtual/range {v0 .. v5}, Lcom/twitter/android/client/e;->b(IJJ)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v6, v0}, Lcom/twitter/android/UsersFragment;->b(Ljava/lang/String;)V

    return-void
.end method
